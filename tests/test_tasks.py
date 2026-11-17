"""CI runner contracts: failures must propagate and checks must not rewrite code."""
import contextlib
import importlib.util
import io
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]


def load_tasks():
    spec = importlib.util.spec_from_file_location('bestiary_tasks', ROOT / 'tools' / 'tasks.py')
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class TaskTests(unittest.TestCase):
    def setUp(self):
        self.tasks = load_tasks()

    def test_check_is_read_only_and_runs_all_gates(self):
        with tempfile.TemporaryDirectory() as tmp, patch.object(self.tasks, 'ROOT', Path(tmp)), patch.object(self.tasks.subprocess, 'run') as run:
            self.assertEqual(self.tasks.main(['check']), 0)
            commands = [call.args[0] for call in run.call_args_list]
            self.assertEqual(commands[0][0], 'stylua')
            self.assertIn('--check', commands[0])
            self.assertEqual(Path(commands[1][-2]).name, 'sync_types.py')
            self.assertEqual(commands[1][-1], 'verify')
            self.assertEqual(commands[2][0], 'actionlint')
            self.assertEqual(commands[3][0], 'lua-language-server')
            self.assertIn('--checklevel=Warning', commands[3])
            self.assertIn('--metapath=' + str(Path(tmp) / 'build/luals/meta'), commands[3])
            self.assertEqual(Path(commands[4][-1]).name, 'run.py')
            for call in run.call_args_list:
                self.assertEqual(call.kwargs['cwd'], Path(tmp))
                self.assertTrue(call.kwargs['check'])
                self.assertNotIn('shell', call.kwargs)

    def test_failure_stops_check_and_preserves_status(self):
        with patch.object(self.tasks.subprocess, 'run', side_effect=subprocess.CalledProcessError(7, ['stylua'])) as run:
            self.assertEqual(self.tasks.main(['check']), 7)
            self.assertEqual(run.call_count, 1)

    def test_missing_tool_returns_nonzero_with_actionable_message(self):
        errors = io.StringIO()
        with patch.object(self.tasks.subprocess, 'run', side_effect=FileNotFoundError()), contextlib.redirect_stderr(errors):
            self.assertEqual(self.tasks.main(['format-check']), 127)
        self.assertIn('stylua', errors.getvalue())
        self.assertIn('Docker', errors.getvalue())

    def test_format_explicitly_rewrites_with_verification(self):
        with patch.object(self.tasks.subprocess, 'run') as run:
            self.assertEqual(self.tasks.main(['format']), 0)
        command = run.call_args.args[0]
        self.assertIn('--verify', command)
        self.assertNotIn('--check', command)

    def test_invalid_task_never_starts_a_process(self):
        with patch.object(self.tasks.subprocess, 'run') as run, contextlib.redirect_stderr(io.StringIO()):
            with self.assertRaises(SystemExit) as exit:
                self.tasks.main(['lint; echo unexpected'])
        self.assertEqual(exit.exception.code, 2)
        run.assert_not_called()


if __name__ == '__main__':
    unittest.main()
