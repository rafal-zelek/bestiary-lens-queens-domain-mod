"""Offline checks for the separation between validation and publishing."""
from pathlib import Path
import os
import re
import subprocess
import shutil
import tempfile
import textwrap
import unittest

ROOT = Path(__file__).resolve().parents[1]
WORKFLOWS = ROOT / '.github' / 'workflows'


def section(source, key, indent=0):
    """Return an indentation-delimited YAML mapping entry, including its header."""
    lines = source.splitlines()
    pattern = re.compile(r'^' + ' ' * indent + re.escape(key) + r':(?:\s|$)')
    starts = [i for i, line in enumerate(lines) if pattern.match(line)]
    if len(starts) != 1:
        raise AssertionError(f'Expected exactly one {key!r} at indentation {indent}; got {len(starts)}')
    start = starts[0]
    end = start + 1
    while end < len(lines):
        line = lines[end]
        if line.strip() and not line.lstrip().startswith('#') and len(line) - len(line.lstrip()) <= indent:
            break
        end += 1
    return '\n'.join(lines[start:end])


def jobs(source):
    block = section(source, 'jobs')
    return {m.group(1): section(block, m.group(1), 2)
            for m in re.finditer(r'(?m)^  ([\w-]+):\s*$', block)}


def needs(job):
    match = re.search(r'(?m)^    needs:\s*(.+)$', job)
    if not match:
        return set()
    return set(re.findall(r'[\w-]+', match.group(1)))


def action_steps(job, action):
    return [s for s in re.split(r'(?m)^      - ', job)[1:]
            if re.search(r'(?m)^\s*uses:\s*' + re.escape(action) + r'@', s)]


def artifact_names(job, action):
    result = []
    for step in action_steps(job, action):
        match = re.search(r'(?m)^\s+name:\s*(.+?)\s*$', step)
        if match:
            result.append(match.group(1).strip("'\""))
    return result


def inline_script(source, step_name, first_line, end_marker):
    step = source.split(f'      - name: {step_name}', 1)[1].split('      - name:', 1)[0]
    lines = step.splitlines()
    start = next(i for i, line in enumerate(lines) if line.strip() == first_line)
    end = next((i for i in range(start + 1, len(lines)) if lines[i].strip() == end_marker), len(lines))
    return textwrap.dedent('\n'.join(lines[start:end]))


class WorkflowStructureTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.ci = (WORKFLOWS / 'ci.yml').read_text()
        cls.release = (WORKFLOWS / 'release.yml').read_text()
        cls.validate = (WORKFLOWS / '_validate.yml').read_text()
        cls.ci_jobs = jobs(cls.ci)
        cls.release_jobs = jobs(cls.release)
        cls.validate_jobs = jobs(cls.validate)

    def test_triggers_are_separate(self):
        ci_on = section(self.ci, 'on')
        self.assertRegex(ci_on, r'(?m)^  pull_request:\s*$')
        self.assertRegex(ci_on, r'(?m)^  workflow_dispatch:\s*$')
        push = section(ci_on, 'push', 2)
        self.assertRegex(push, r'(?m)^    branches:\s*\[\s*[\'"]?main[\'"]?\s*\]')
        self.assertNotRegex(push, r'(?m)^    tags(?:-ignore)?:')
        release_on = section(self.release, 'on')
        self.assertRegex(release_on, r'(?m)^  push:\s*$')
        self.assertRegex(section(release_on, 'push', 2), r"(?m)^    tags:\s*\[\s*['\"]v\*['\"]\s*\]")
        self.assertNotRegex(release_on, r'(?m)^  (pull_request|workflow_dispatch):')
        self.assertRegex(section(self.validate, 'on'), r'(?m)^  workflow_call:\s*$')
        self.assertNotRegex(section(self.validate, 'on'), r'(?m)^  (push|pull_request|workflow_dispatch):')

    def test_ci_and_release_call_shared_validation(self):
        for name, job_map in [('CI', self.ci_jobs), ('release', self.release_jobs)]:
            calls = [key for key, job in job_map.items()
                     if re.search(r'(?m)^    uses:\s*\./\.github/workflows/_validate\.yml\s*$', job)]
            with self.subTest(workflow=name):
                self.assertEqual(len(calls), 1)
        # PRs cannot reach a publisher, even if a condition is accidentally relaxed.
        self.assertEqual(len(self.ci_jobs), 1)
        self.assertNotRegex(self.ci + self.validate, r'(?i)(publish-github-release|publish-nexus|Nexus-Mods/upload-action|gh release)')

    def test_publish_order_and_privileges(self):
        validation = next(k for k, v in self.release_jobs.items() if './.github/workflows/_validate.yml' in v)
        github = next(k for k, v in self.release_jobs.items() if re.search(r'(?i)gh release (?:create|edit|upload)', v))
        nexus = next(k for k, v in self.release_jobs.items() if 'Nexus-Mods/upload-action@' in v)
        self.assertIn(validation, needs(self.release_jobs[github]))
        self.assertIn(github, needs(self.release_jobs[nexus]))
        self.assertNotIn(nexus, needs(self.release_jobs[github]))
        self.assertRegex(section(self.ci, 'permissions'), r'(?m)^  contents: read\s*$')
        self.assertRegex(section(self.release, 'permissions'), r'(?m)^  contents: read\s*$')
        self.assertRegex(section(self.validate, 'permissions'), r'(?m)^  contents: read\s*$')
        for name, job in self.release_jobs.items():
            if name in (github, nexus):
                self.assertRegex(job, r'(?m)^      contents: write\s*$')
            else:
                self.assertNotRegex(job, r'(?m)^\s+contents: write\s*$')
        self.assertNotRegex(self.ci + self.validate, r'(?m)^\s+contents: write\s*$')
        self.assertRegex(self.release_jobs[nexus], r"(?m)^    if:.*needs\.[\w-]+\.outputs\.[\w-]+\s*==\s*['\"]true['\"]")
        self.assertNotRegex(self.release_jobs[nexus], r'(?m)^    if:.*(?:always|failure)\(')
        self.assertNotRegex(self.release_jobs[github], r'(?m)^    if:.*(?:always|failure)\(')

    def test_nexus_readiness_and_attempt_marker(self):
        github = next(v for v in self.release_jobs.values() if 'publisher-readiness' in v)
        nexus = next(v for v in self.release_jobs.values() if 'Nexus-Mods/upload-action@' in v)
        self.assertIn('nexus_ready: ${{ steps.publisher-readiness.outputs.ready }}', github)
        self.assertNotIn('NEXUS_API_KEY', section(github, 'outputs', 4))
        for variable in ('NEXUS_API_KEY', 'NEXUS_FILE_ID', 'NEXUS_MOD_ID'):
            self.assertIn(f'-n "${variable}"', github)
        self.assertIn("echo 'ready=true'", github)
        self.assertIn("echo 'ready=false'", github)
        self.assertLess(nexus.index('name: Check Nexus attempt marker'), nexus.index('name: Record Nexus attempt marker'))
        self.assertLess(nexus.index('name: Record Nexus attempt marker'), nexus.index('uses: Nexus-Mods/upload-action@'))
        self.assertEqual(nexus.count('uses: Nexus-Mods/upload-action@'), 1)
        self.assertIn('98532f7670c27cbecc78fae03fa3e278147827e2', nexus)
        self.assertIn('tools/verify-github-release.sh', github)

    def test_event_ref_and_dependency_gates(self):
        github = self.release_jobs['publish-github-release']
        nexus = self.release_jobs['publish-nexus']
        def evaluate(job, event, ref, ready, succeeded):
            expression = re.search(r'(?m)^    if: (.+)$', job).group(1)
            atoms = expression.split(' && ')
            result = succeeded
            for atom in atoms:
                if atom == "github.event_name == 'push'":
                    value = event == 'push'
                elif atom == "startsWith(github.ref, 'refs/tags/v')":
                    value = ref.startswith('refs/tags/v')
                elif atom == "needs.publish-github-release.outputs.nexus_ready == 'true'":
                    value = ready
                else:
                    self.fail(f'Unknown guard atom: {atom}')
                result = result and value
            return result
        for event, ref, eligible in [('push', 'refs/heads/main', False),
                                     ('pull_request', 'refs/pull/42/merge', False),
                                     ('workflow_dispatch', 'refs/tags/v0.1.0', False),
                                     ('push', 'refs/tags/not-a-version', False),
                                     ('push', 'refs/tags/v0.1.0', True)]:
            for ready in (False, True):
                for success in (False, True):
                    with self.subTest(event=event, ref=ref, ready=ready, success=success):
                        self.assertEqual(evaluate(github, event, ref, ready, success), eligible and success)
                        self.assertEqual(evaluate(nexus, event, ref, ready, success), eligible and success and ready)
        self.assertRegex(section(self.release, 'concurrency'), r'(?m)^  cancel-in-progress: false\s*$')

    def test_credential_combinations(self):
        script = inline_script(self.release, 'Determine optional publisher readiness',
                               'if [[ -n "$NEXUS_API_KEY" && -n "$NEXUS_FILE_ID" && -n "$NEXUS_MOD_ID" ]]; then', None)
        with tempfile.TemporaryDirectory() as tmp:
            for mask in range(8):
                output = Path(tmp) / str(mask)
                values = {name: 'value' if mask & (1 << bit) else '' for bit, name in
                          enumerate(('NEXUS_API_KEY', 'NEXUS_FILE_ID', 'NEXUS_MOD_ID'))}
                result = subprocess.run(['bash', '-euo', 'pipefail', '-c', script],
                                        env=os.environ | values | {'GITHUB_OUTPUT': str(output)},
                                        capture_output=True, text=True)
                with self.subTest(mask=mask):
                    self.assertEqual(result.returncode, 0, result.stderr)
                    self.assertEqual(output.read_text(), 'ready=true\n' if mask == 7 else 'ready=false\n')

    def test_tag_matches_package_version(self):
        step = self.validate.split('      - name: Validate release tag', 1)[1].split('      - name:', 1)[0]
        self.assertIn("if: startsWith(github.ref, 'refs/tags/v')", step)
        self.assertIn('RELEASE_TAG: ${{ github.ref_name }}', step)
        self.assertIn('validate', needs(self.release_jobs['publish-github-release']))
        self.assertNotRegex(self.release_jobs['publish-github-release'], r'(?m)^    if:.*(?:always|failure)\(')
        script = inline_script(self.validate, 'Validate release tag', 'import os, sys', "'")
        from tools.package import VERSION
        for tag, success in [('v' + VERSION, True), ('v' + VERSION + '-wrong', False)]:
            result = subprocess.run(['python3', '-c', script], cwd=ROOT,
                                    env=os.environ | {'RELEASE_TAG': tag}, capture_output=True, text=True)
            with self.subTest(tag=tag):
                self.assertEqual(result.returncode == 0, success, result.stdout + result.stderr)

    def test_mod_artifact_selection_rejects_unsafe_inputs(self):
        script = inline_script(self.validate, 'Select package artifacts', 'import os', 'PY')
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / 'tools').mkdir()
            package = root / 'tools/package.py'
            build = root / 'build'
            build.mkdir()
            archive = build / 'BestiaryLens-0.1.0.zip'
            checksum = build / 'BestiaryLens-0.1.0.zip.sha256'
            archive.write_bytes(b'zip')
            checksum.write_text('checksum')
            (build / 'BestiaryLens-0.0.9.zip').write_bytes(b'stale')
            output = root / 'output'

            def run(version):
                package.write_text(f'VERSION = {version!r}\n')
                output.write_text('')
                return subprocess.run(['python3', '-B', '-c', script], cwd=root,
                                      env=os.environ | {'GITHUB_OUTPUT': str(output)}, capture_output=True, text=True)

            result = run('0.1.0')
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(output.read_text(), 'mod_version=0.1.0\n')
            for version in ('../escape', '', 'bad/version'):
                with self.subTest(version=version):
                    self.assertNotEqual(run(version).returncode, 0)
                    self.assertEqual(output.read_text(), '')
            checksum.unlink()
            self.assertNotEqual(run('0.1.0').returncode, 0)
            self.assertEqual(output.read_text(), '')
            outside = root / 'outside'
            outside.write_text('checksum')
            checksum.symlink_to(outside)
            self.assertNotEqual(run('0.1.0').returncode, 0)
            self.assertEqual(output.read_text(), '')
            checksum.unlink()
            archive.unlink()
            # A symlinked build directory must not redirect artifact selection.
            shutil.rmtree(build)
            outside_dir = root / 'outside-build'
            outside_dir.mkdir()
            (outside_dir / archive.name).write_bytes(b'zip')
            (outside_dir / checksum.name).write_text('checksum')
            build.symlink_to(outside_dir, target_is_directory=True)
            self.assertNotEqual(run('0.1.0').returncode, 0)
            self.assertEqual(output.read_text(), '')

    def test_mod_artifact_is_wired_to_publishers(self):
        uploads = [(job, artifact_names(job, 'actions/upload-artifact')) for job in self.validate_jobs.values()]
        mod_names = [name for _, names in uploads for name in names if name.startswith('mod-')]
        self.assertEqual(len(mod_names), 1)
        producer = next(job for job, names in uploads if mod_names[0] in names)
        self.assertIn('BestiaryLens-', producer)
        self.assertIn('.zip.sha256', producer)
        self.assertIn('if-no-files-found: error', producer)
        for job in self.release_jobs.values():
            if re.search(r'(?i)gh release (?:create|edit|upload)', job) or 'Nexus-Mods/upload-action@' in job:
                with self.subTest(job=job.splitlines()[0]):
                    self.assertIn(mod_names[0], artifact_names(job, 'actions/download-artifact'))

    def test_shared_validation_does_not_package_sdk_or_publish(self):
        for name, source in [('ci', self.ci), ('release', self.release), ('validate', self.validate)]:
            with self.subTest(workflow=name):
                self.assertNotRegex(source, r'(?i)QueensDomain-types-[^\s]*\.zip|types-package|sdk_version|sdk-\$\{\{')
        self.assertNotRegex(self.validate, r'(?i)gh release|Nexus-Mods/upload-action')
        self.assertIn('tools/test-git-cliff.sh', self.validate)
        self.assertIn('tools/release-notes.sh', self.validate)
        notes = [name for job in self.validate_jobs.values()
                 for name in artifact_names(job, 'actions/upload-artifact')
                 if name.startswith('release-notes-')]
        self.assertEqual(len(notes), 1)
        for job in self.release_jobs.values():
            if re.search(r'(?i)gh release (?:create|edit|upload)', job) or 'Nexus-Mods/upload-action@' in job:
                self.assertIn(notes[0], artifact_names(job, 'actions/download-artifact'))
        for command in ('format-check', 'types-verify', 'workflow-lint', 'lint', 'test', 'package'):
            with self.subTest(command=command):
                self.assertRegex(self.validate, r'(?<![\w-])' + re.escape(command) + r'(?![\w-])')


if __name__ == '__main__':
    unittest.main()
