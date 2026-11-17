"""Offline structural checks for the privileged release workflow."""
from pathlib import Path
import os
import re
import subprocess
import tempfile
import textwrap
import unittest

ROOT = Path(__file__).resolve().parents[1]
WORKFLOW = ROOT / '.github' / 'workflows' / 'ci.yml'


def job_section(source, name, following):
    return source.split(f'  {name}:', 1)[1].split(f'  {following}:', 1)[0]


def condition(section):
    match = re.search(r'(?m)^    if: (.+)$', section)
    if not match:
        raise AssertionError('job has no if condition')
    return match.group(1)


def evaluate_github_condition(expression, event, ref, nexus_ready=False, needs_succeeded=True):
    """Evaluate only the workflow expression atoms used by the release job guards."""
    if not needs_succeeded:
        return False
    values = {
        "github.event_name == 'push'": event == 'push',
        "needs.publish-github-release.outputs.nexus_ready == 'true'": nexus_ready,
    }
    result = True
    for atom in expression.split(' && '):
        if atom in values:
            result = result and values[atom]
            continue
        match = re.fullmatch(r"startsWith\(github\.ref, '([^']+)'\)", atom)
        if match:
            result = result and ref.startswith(match.group(1))
            continue
        raise AssertionError(f'Unsupported GitHub expression atom: {atom}')
    return result


def inline_run_block(source, step_name, first_line, closing_marker="'"):
    step = source.split(f'      - name: {step_name}', 1)[1].split('      - name:', 1)[0]
    lines = step.splitlines()
    start = next(i for i, line in enumerate(lines) if line.strip() == first_line)
    end = (
        next(i for i in range(start + 1, len(lines)) if lines[i].strip() == closing_marker)
        if closing_marker else len(lines)
    )
    return textwrap.dedent('\n'.join(lines[start:end]))


def credentials_ready(script, mask, output_path):
    values = {
        'NEXUS_API_KEY': 'key' if mask & 1 else '',
        'NEXUS_FILE_ID': 'file' if mask & 2 else '',
        'NEXUS_MOD_ID': 'mod' if mask & 4 else '',
        'GITHUB_OUTPUT': str(output_path),
    }
    result = subprocess.run(
        ['bash', '-euo', 'pipefail', '-c', script],
        env=os.environ | values, text=True, capture_output=True, check=False,
    )
    if result.returncode:
        raise AssertionError(result.stderr)
    return output_path.read_text() == 'ready=true\n'


class ReleaseWorkflowTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.source = WORKFLOW.read_text()
        cls.github_job = job_section(cls.source, 'publish-github-release', 'publish-nexus')
        cls.nexus_job = cls.source.split('  publish-nexus:', 1)[1]

    def test_missing_credentials_skip_the_entire_nexus_job(self):
        self.assertIn("if: github.event_name == 'push' && startsWith(github.ref, 'refs/tags/v') && needs.publish-github-release.outputs.nexus_ready == 'true'", self.nexus_job)
        self.assertIn('nexus_ready: ${{ steps.publisher-readiness.outputs.ready }}', self.source)
        self.assertIn("echo 'ready=true' >> \"$GITHUB_OUTPUT\"", self.source)
        self.assertIn("echo 'ready=false' >> \"$GITHUB_OUTPUT\"", self.source)
        self.assertNotIn('NEXUS_API_KEY', self.source.split('outputs:', 1)[1].split('steps:', 1)[0])
        steps = self.nexus_job.split('      - name: ')[1:]
        self.assertEqual(len(steps), 8)

    def test_attempt_marker_precedes_the_only_upload_action(self):
        marker = self.nexus_job.index('name: Record Nexus attempt marker')
        upload = self.nexus_job.index('uses: Nexus-Mods/upload-action@')
        page = self.nexus_job.index('name: Update Nexus page description')
        self.assertLess(marker, upload)
        self.assertLess(upload, page)
        self.assertEqual(self.nexus_job.count('uses: Nexus-Mods/upload-action@'), 1)
        self.assertIn('98532f7670c27cbecc78fae03fa3e278147827e2', self.nexus_job)

    def test_tag_runs_are_not_cancelled_and_privilege_is_job_scoped(self):
        self.assertIn('cancel-in-progress: ${{ github.ref_type != \'tag\' }}', self.source)
        self.assertIn('publish-github-release:\n    name: Publish GitHub release\n    if: github.event_name == \'push\' && startsWith(github.ref, \'refs/tags/v\')\n    needs: check-and-package\n    runs-on: ubuntu-24.04\n    timeout-minutes: 10\n    permissions:\n      contents: write', self.source)
        self.assertIn('permissions:\n  contents: read', self.source)
        self.assertIn('needs: publish-github-release', self.nexus_job)
        github_job = self.source.split('  publish-github-release:', 1)[1].split('  publish-nexus:', 1)[0]
        self.assertIn('needs: check-and-package', github_job)
        self.assertNotIn('publish-nexus', github_job)
        self.assertIn('uses: actions/checkout@', github_job)
        self.assertIn('run: bash tools/verify-github-release.sh "$RELEASE_TAG"', github_job)

    def test_event_ref_version_and_credentials_cartesian_gate(self):
        github_guard = condition(self.github_job)
        nexus_guard = condition(self.nexus_job)
        matrix = (
            ('push', 'refs/heads/main', True, False),
            ('pull_request', 'refs/pull/42/merge', True, False),
            ('workflow_dispatch', 'refs/heads/main', True, False),
            ('workflow_dispatch', 'refs/tags/v0.1.0', True, False),
            ('push', 'refs/tags/v0.1.0', True, True),
            ('push', 'refs/tags/v1.0.0', False, False),
            ('push', 'refs/tags/not-a-version', True, False),
        )
        self.assertEqual(re.search(r'(?m)^    needs: (.+)$', self.github_job).group(1), 'check-and-package')
        self.assertEqual(re.search(r'(?m)^    needs: (.+)$', self.nexus_job).group(1), 'publish-github-release')
        self.assertIn('name: Validate release tag', self.source)
        readiness = inline_run_block(
            self.source, 'Determine optional publisher readiness', 'if [[ -n "$NEXUS_API_KEY" && -n "$NEXUS_FILE_ID" && -n "$NEXUS_MOD_ID" ]]; then',
            closing_marker=None,
        )
        validation = inline_run_block(self.source, 'Validate release tag', 'import os, sys')
        with tempfile.TemporaryDirectory() as tmp:
            version_results = {}
            for tag in ('v0.1.0', 'v1.0.0'):
                version_results[tag] = subprocess.run(
                        [os.environ.get('PYTHON', 'python3'), '-c', validation],
                        cwd=ROOT, env=os.environ | {'RELEASE_TAG': tag},
                        text=True, capture_output=True, check=False,
                    )
            self.assertEqual(version_results['v0.1.0'].returncode, 0)
            self.assertNotEqual(version_results['v1.0.0'].returncode, 0)
            self.assertIn('expects v0.1.0; pushed tag is v1.0.0', version_results['v1.0.0'].stdout)
            for event, ref, check_result, expected in matrix:
                if ref.startswith('refs/tags/v'):
                    tag = ref.rsplit('/', 1)[1]
                    check_result = version_results[tag].returncode == 0
                for mask in range(8):
                    out_name = f'{event}-{ref.replace("/", "_")}-{mask}.out'
                    ready = credentials_ready(readiness, mask, Path(tmp) / out_name)
                    with self.subTest(event=event, ref=ref, mask=f'{mask:03b}', job='github'):
                        allowed = evaluate_github_condition(
                            github_guard, event, ref, nexus_ready=ready,
                            needs_succeeded=check_result,
                        )
                        self.assertEqual(allowed, expected and check_result)
                    with self.subTest(event=event, ref=ref, mask=f'{mask:03b}', job='nexus'):
                        allowed = evaluate_github_condition(
                            nexus_guard, event, ref, nexus_ready=ready,
                            needs_succeeded=expected and check_result,
                        )
                        self.assertEqual(allowed, expected and check_result and ready)


if __name__ == '__main__':
    unittest.main()
