import sys
import unittest
from unittest.mock import Mock
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'tools'))
from runtime_test import MenuBridge, MenuFailure, run_checks, test_menu, verify_shortcut_entry


class FakeMenu:
    def __init__(self, *states):
        self.states = iter(states)
        self.actions = []

    def __call__(self, action):
        self.actions.append(action)
        return next(self.states)


class RuntimeTest(unittest.TestCase):
    def test_opens_selector_and_returns_to_title(self):
        menu = FakeMenu('title', 'files', 'title')
        test_menu(menu)
        self.assertEqual(menu.actions, ['observe', 'open-files', 'back'])

    def test_existing_selector_returns_to_title_before_testing(self):
        menu = FakeMenu('files', 'title', 'files', 'title')
        test_menu(menu)
        self.assertEqual(menu.actions, ['observe', 'back', 'open-files', 'back'])

    def test_stuck_transition_never_repeats_input(self):
        menu = FakeMenu('title', 'title')
        with self.assertRaises(MenuFailure):
            test_menu(menu)
        self.assertEqual(menu.actions, ['observe', 'open-files'])

    def test_unexpected_screen_leaves_it_alone(self):
        menu = FakeMenu('blocked')
        with self.assertRaises(MenuFailure):
            test_menu(menu)
        self.assertEqual(menu.actions, ['observe'])

    def test_offline_runs_even_when_game_cannot_start(self):
        calls = []

        def failed_start():
            calls.append('deck')
            raise MenuFailure('launch-timeout')

        result = run_checks(lambda: calls.append('offline') or 0, failed_start)
        self.assertEqual(calls, ['offline', 'deck'])
        self.assertEqual(result, (0, 'launch-timeout'))

    def test_both_outcomes_are_reported(self):
        self.assertEqual(run_checks(lambda: 2, lambda: None), (2, 'passed'))

    def test_shortcut_name_and_id_must_be_in_same_record(self):
        def entry(index, name, app_id):
            return (b'\0' + str(index).encode() + b'\0\x01appname\0' + name + b'\0'
                    + b'\x02appid\0' + app_id.to_bytes(4, 'little') + b'\x08')

        valid = entry(0, b"Queen's Domain", 876)
        unrelated = entry(1, b'Unrelated', 123)
        root = b'\0shortcuts\0' + valid + unrelated + b'\x08\x08'
        self.assertTrue(verify_shortcut_entry(root, 876))
        self.assertFalse(verify_shortcut_entry(root, 123))
        duplicate = b'\0shortcuts\0' + valid + entry(1, b"Queen's Domain", 123) + b'\x08\x08'
        self.assertFalse(verify_shortcut_entry(duplicate, 876))


    def test_startup_observation_can_retry_within_deadline(self):
        bridge = MenuBridge(None, Path('.'), 10)
        bridge.command = Mock(side_effect=[MenuFailure('menu-bridge-timeout'), 'title'])
        self.assertEqual(bridge.exchange('observe'), 'title')
        self.assertEqual([call.args[0] for call in bridge.command.call_args_list],
                         ['observe', 'observe'])

    def test_action_timeout_never_repeats_native_input(self):
        bridge = MenuBridge(None, Path('.'), 10)
        bridge.command = Mock(side_effect=MenuFailure('menu-bridge-timeout'))
        with self.assertRaisesRegex(MenuFailure, 'menu-bridge-timeout'):
            bridge.exchange('open-files')
        self.assertEqual(bridge.command.call_count, 1)

    def test_vanished_game_process_is_a_clean_failure(self):
        import tempfile
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            bridge = MenuBridge((Path(directory) / 'no-such-pid', 1), root, 1)
            with self.assertRaises(MenuFailure) as caught:
                bridge.command('observe', __import__('time').monotonic() + 1)
            self.assertEqual(str(caught.exception), 'game-process-changed')

