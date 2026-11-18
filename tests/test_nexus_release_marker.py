"""Offline fail-closed tests for the Nexus release attempt marker."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / 'tools' / 'nexus-release-marker.sh'


class NexusReleaseMarkerTests(unittest.TestCase):
    def run_marker(self, mode, command='check'):
        with tempfile.TemporaryDirectory() as tmp:
            temp = Path(tmp)
            fake_bin = temp / 'bin'
            fake_bin.mkdir()
            state = temp / 'state'
            fake_gh = fake_bin / 'gh'
            fake_gh.write_text('''#!/usr/bin/env python3
import os, pathlib, sys
args = sys.argv[1:]
mode = os.environ['GH_TEST_MODE']
state = pathlib.Path(os.environ['GH_TEST_STATE'])
if args[:2] == ['release', 'view']:
    if mode == 'view-fail':
        sys.exit(1)
    if mode == 'write-success' and state.exists():
        print('nexus-upload-attempted.txt')
    elif mode == 'marker-present':
        print('nexus-upload-attempted.txt')
    else:
        print('BestiaryLens-1.0.0.zip')
elif args[:2] == ['release', 'upload']:
    if mode == 'upload-fail':
        sys.exit(1)
    state.write_text('uploaded')
else:
    sys.exit(2)
''')
            fake_gh.chmod(0o755)
            env = os.environ | {
                'PATH': str(fake_bin) + os.pathsep + os.environ['PATH'],
                'GH_TEST_MODE': mode,
                'GH_TEST_STATE': str(state),
                'GITHUB_REPOSITORY': 'owner/repo',
                'GITHUB_RUN_ID': '1234',
                'GITHUB_SHA': 'deadbeef',
            }
            return subprocess.run(
                ['bash', str(SCRIPT), command, 'v1.0.0'],
                cwd=ROOT, env=env, text=True, capture_output=True, check=False,
            )

    def test_existing_marker_blocks_another_upload_attempt(self):
        result = self.run_marker('marker-present')
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('already exists', result.stderr.lower())

    def test_release_asset_read_failure_fails_closed(self):
        result = self.run_marker('view-fail')
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('could not inspect', result.stderr.lower())

    def test_marker_is_uploaded_and_verified_before_nexus_action(self):
        result = self.run_marker('write-success', command='write')
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_unmarked_release_passes_preflight(self):
        result = self.run_marker('clear')
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_marker_upload_failure_fails_closed(self):
        result = self.run_marker('upload-fail', command='write')
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('could not upload', result.stderr.lower())

    def test_uploaded_marker_must_be_visible_before_continuing(self):
        result = self.run_marker('write-unverified', command='write')
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('not visible', result.stderr.lower())


if __name__ == '__main__':
    unittest.main()
