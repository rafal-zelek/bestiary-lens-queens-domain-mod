"""Offline release-content verification tests using a fake GitHub CLI."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

SCRIPT = Path(__file__).resolve().parents[1] / 'tools' / 'verify-github-release.sh'


class GitHubReleaseVerifierTests(unittest.TestCase):
    def run_verifier(self, mode='published', changed=None, tag='v1.2.3'):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        root = Path(temp.name)
        local = root / 'release-assets'
        remote = root / 'remote-assets'
        notes = root / 'release-notes'
        fake_bin = root / 'bin'
        for directory in (local, remote, notes, fake_bin):
            directory.mkdir()

        package = b'mod zip bytes'
        checksum = b'abcdef  BestiaryLens-1.2.3.zip\n'
        body = b'## v1.2.3\n\n- change\n'
        remote_package = b'different zip' if changed == 'package' else package
        remote_checksum = b'different checksum\n' if changed == 'checksum' else checksum
        remote_body = b'## different notes\n' if changed == 'notes' else body + b'\n'
        (local / 'BestiaryLens-1.2.3.zip').write_bytes(package)
        (local / 'BestiaryLens-1.2.3.zip.sha256').write_bytes(checksum)
        (remote / 'BestiaryLens-1.2.3.zip').write_bytes(remote_package)
        (remote / 'BestiaryLens-1.2.3.zip.sha256').write_bytes(remote_checksum)
        (remote / 'release-notes.md').write_bytes(remote_body)
        (notes / 'release-notes.md').write_bytes(body)
        log = root / 'gh.log'
        gh = fake_bin / 'gh'
        gh.write_text('''#!/usr/bin/env python3
import os, pathlib, shutil, sys
args = sys.argv[1:]
with open(os.environ['GH_TEST_LOG'], 'a') as out:
    out.write(' '.join(args) + '\\n')
if args[:2] == ['release', 'view']:
    if '--json' in args and 'isDraft,isPrerelease' in args:
        mode = os.environ['GH_TEST_MODE']
        print('published' if mode == 'published' else 'not-published')
    elif '--json' in args and 'assets' in args:
        print('BestiaryLens-1.2.3.zip')
        print('BestiaryLens-1.2.3.zip.sha256')
    elif '--json' in args and 'body' in args:
        sys.stdout.buffer.write(pathlib.Path(os.environ['GH_TEST_REMOTE'], 'release-notes.md').read_bytes())
        sys.stdout.write('\\n')
elif args[:2] == ['release', 'download']:
    pattern = args[args.index('--pattern') + 1]
    directory = pathlib.Path(args[args.index('--dir') + 1])
    shutil.copyfile(pathlib.Path(os.environ['GH_TEST_REMOTE'], pattern), directory / pattern)
else:
    sys.exit(2)
''')
        gh.chmod(0o755)
        env = os.environ | {
            'PATH': str(fake_bin) + os.pathsep + os.environ['PATH'],
            'GITHUB_REPOSITORY': 'owner/repo',
            'GH_TEST_MODE': mode,
            'GH_TEST_LOG': str(log),
            'GH_TEST_REMOTE': str(remote),
        }
        result = subprocess.run(
            ['bash', str(SCRIPT), tag], cwd=root, env=env,
            text=True, capture_output=True, check=False,
        )
        return result, log.read_text() if log.exists() else ''

    def test_identical_published_release_passes_with_terminal_newline_normalized(self):
        result, log = self.run_verifier()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertNotIn('release upload', log)
        self.assertNotIn('release create', log)

    def test_package_checksum_and_notes_mismatches_fail_closed(self):
        for changed in ('package', 'checksum', 'notes'):
            with self.subTest(changed=changed):
                result, log = self.run_verifier(changed=changed)
                self.assertNotEqual(result.returncode, 0)
                self.assertNotIn('release upload', log)
                self.assertNotIn('release create', log)

    def test_draft_and_prerelease_are_rejected_before_asset_download(self):
        for status in ('draft', 'prerelease'):
            with self.subTest(status=status):
                result, log = self.run_verifier(mode=status)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn('refusing Nexus publication', result.stderr)
                self.assertNotIn('release download', log)

    def test_leading_zero_release_tag_is_rejected_before_github_access(self):
        result, log = self.run_verifier(tag='v01.2.3')
        self.assertEqual(result.returncode, 2)
        self.assertIn('must use vMAJOR.MINOR.PATCH', result.stderr)
        self.assertEqual(log, '')


if __name__ == '__main__':
    unittest.main()
