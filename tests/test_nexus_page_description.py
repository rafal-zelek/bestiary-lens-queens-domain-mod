"""The page-description client has offline request-contract tests."""
import contextlib
import importlib.util
import io
import json
import os
from pathlib import Path
import unittest
from unittest.mock import patch
from urllib.error import HTTPError

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / 'tools' / 'nexus-page-description.py'


def load_client():
    spec = importlib.util.spec_from_file_location('nexus_page_description', SCRIPT)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class NexusPageDescriptionTests(unittest.TestCase):
    def test_missing_credentials_return_without_network_access(self):
        client = load_client()
        with patch.dict(os.environ, {'NEXUS_API_KEY': '', 'NEXUS_MOD_ID': ''}, clear=True):
            with patch.object(client, 'urlopen') as request:
                with contextlib.redirect_stderr(io.StringIO()):
                    self.assertEqual(client.main(), 2)
                request.assert_not_called()

    def test_patch_body_is_the_checked_in_bbcode_description(self):
        client = load_client()
        response = contextlib.nullcontext(type('Response', (), {'status': 204})())
        env = {
            'NEXUS_API_KEY': 'test-api-key',
            'NEXUS_MOD_ID': 'mod-id/with path',
            'NEXUS_API_BASE': 'https://unit.test/v3',
        }
        with patch.dict(os.environ, env, clear=True):
            with patch.object(client, 'urlopen', return_value=response) as urlopen:
                with contextlib.redirect_stdout(io.StringIO()):
                    self.assertEqual(client.main(), 0)
        request = urlopen.call_args.args[0]
        self.assertEqual(request.get_method(), 'PATCH')
        self.assertEqual(request.full_url, 'https://unit.test/v3/mods/mod-id%2Fwith%20path')
        self.assertEqual(request.get_header('Apikey'), 'test-api-key')
        self.assertEqual(
            json.loads(request.data),
            {'description': (ROOT / 'docs' / 'nexus-description.bbcode').read_text(encoding='utf-8')},
        )

    def test_api_error_is_reported_as_failure_without_response_body_or_secret(self):
        client = load_client()
        error = HTTPError('https://unit.test', 403, 'forbidden', None, None)
        with patch.dict(os.environ, {'NEXUS_API_KEY': 'test-api-key', 'NEXUS_MOD_ID': '42'}, clear=True):
            with patch.object(client, 'urlopen', side_effect=error):
                output = io.StringIO()
                with contextlib.redirect_stderr(output):
                    self.assertEqual(client.main(), 1)
        self.assertIn('HTTP 403', output.getvalue())
        self.assertNotIn('test-api-key', output.getvalue())


if __name__ == '__main__':
    unittest.main()
