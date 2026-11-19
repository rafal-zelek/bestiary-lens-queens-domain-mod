#!/usr/bin/env python3
"""Run offline tests and a non-save-loading Queen's Domain menu test."""
import argparse
import datetime
import fcntl
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import time
import uuid


class MenuFailure(RuntimeError):
    pass


def test_menu(exchange):
    """Run a round trip through the native title menu and file selector."""
    state = exchange('observe')
    if state == 'files':
        state = exchange('back')
    if state != 'title':
        raise MenuFailure('title-not-ready')
    if exchange('open-files') != 'files':
        raise MenuFailure('file-selector-not-ready')
    if exchange('back') != 'title':
        raise MenuFailure('return-to-title-failed')


def run_checks(offline, deck):
    try:
        offline_status = offline()
    except OSError:
        offline_status = 127
    try:
        deck()
    except MenuFailure as error:
        return offline_status, str(error)
    except (OSError, subprocess.SubprocessError):
        return offline_status, 'transport-error'
    return offline_status, 'passed'


def processes():
    candidates = []
    for path in Path('/proc').iterdir():
        if not path.name.isdigit():
            continue
        try:
            argv0 = (path / 'cmdline').read_bytes().split(b'\0')[0].replace(b'\\', b'/')
            if argv0.endswith(b'/QueensDomain-Win64-Shipping.exe'):
                candidates.append((path, start_time(path)))
        except (OSError, IndexError):
            continue
    return candidates


def start_time(path):
    return int((path / 'stat').read_text().rsplit(')', 1)[1].split()[19])


def environment(path):
    return {
        os.fsdecode(key): os.fsdecode(value)
        for item in (path / 'environ').read_bytes().split(b'\0')
        for key, separator, value in [item.partition(b'=')]
        if separator
    }


def verify_shortcut_entry(data, app_id):
    """Match name and AppID on the very same existing Steam shortcut record."""
    def string(offset):
        end = data.index(b'\0', offset)
        return data[offset:end], end + 1

    def object_at(offset, depth):
        if depth > 4:
            raise ValueError
        record = {}
        while True:
            kind = data[offset]
            offset += 1
            if kind == 8:
                return record, offset
            key, offset = string(offset)
            key = key.lower()
            if key in record:
                raise ValueError
            if kind == 0:
                value, offset = object_at(offset, depth + 1)
            elif kind == 1:
                value, offset = string(offset)
            elif kind in (2, 3, 6, 7):
                size = 8 if kind == 7 else 4
                if len(data) < offset + size:
                    raise ValueError
                value, offset = data[offset:offset + size], offset + size
            else:
                raise ValueError
            record[key] = value

    try:
        root, _ = object_at(0, 0)
        rows = root[b'shortcuts'].values()
        matches = []
        for row in rows:
            name = row[b'appname'].decode('utf-8').casefold()
            if ''.join(c for c in name if c.isalnum()) == 'queensdomain':
                matches.append(row)
        return len(matches) == 1 and matches[0].get(b'appid') == app_id.to_bytes(4, 'little')
    except (AttributeError, IndexError, KeyError, TypeError, ValueError):
        return False


def verify_shortcut(account, game_id):
    steam = Path.home() / '.steam'
    pid = (steam / 'steam.pid').read_text().strip()
    if not pid.isdecimal() or not (steam / 'steam.pipe').is_fifo():
        raise MenuFailure('steam-client-unavailable')
    client = Path('/proc') / pid
    if (client / 'comm').read_text().strip() != 'steam':
        raise MenuFailure('steam-client-unavailable')

    log = steam / 'steam/logs/connection_log.txt'
    with log.open('rb') as stream:
        stream.seek(max(0, log.stat().st_size - 65536))
        lines = stream.read().decode(errors='replace').splitlines()
    events = [line for line in lines if re.search(r'Logged On|Disconnected|LogOff', line, re.I)]
    last = events[-1] if events else ''
    stamp = re.match(r'\[([0-9 :\-]+)\]', last)
    identities = re.findall(r'\[U:1:(\d+)\]|\b(7656\d{13})\b', last)
    boot = int(next(line.split()[1] for line in Path('/proc/stat').read_text().splitlines()
                    if line.startswith('btime ')))
    started_at = boot + start_time(client) / os.sysconf('SC_CLK_TCK')
    if not (stamp and 'Logged On' in last and account in {int(a or b) & 0xffffffff for a, b in identities}
            and datetime.datetime.strptime(stamp[1], '%Y-%m-%d %H:%M:%S').timestamp() >= started_at - 2):
        raise MenuFailure('steam-profile-unverified')
    shortcut = steam / 'steam/userdata' / str(account) / 'config/shortcuts.vdf'
    if not verify_shortcut_entry(shortcut.read_bytes(), int(game_id) >> 32):
        raise MenuFailure('steam-shortcut-unverified')
    return client


def ensure_process(account, game_id, timeout):
    client = verify_shortcut(account, game_id)
    previous = processes()
    if len(previous) > 1:
        raise MenuFailure('ambiguous-game-process')
    cutoff = int(float(Path('/proc/uptime').read_text().split()[0]) * os.sysconf('SC_CLK_TCK'))
    if not previous:
        env = os.environ.copy()
        client_env = environment(client)
        for key in ('DISPLAY', 'WAYLAND_DISPLAY', 'XAUTHORITY', 'XDG_RUNTIME_DIR', 'DBUS_SESSION_BUS_ADDRESS'):
            if key in client_env:
                env[key] = client_env[key]
        steam = shutil.which('steam')
        if not steam or not (client_env.get('DISPLAY') or client_env.get('WAYLAND_DISPLAY')):
            raise MenuFailure('steam-launch-unavailable')
        if processes():
            raise MenuFailure('game-process-changed')
        subprocess.Popen([steam, 'steam://rungameid/' + game_id], env=env, start_new_session=True,
                         stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        matches = processes()
        if len(matches) > 1:
            raise MenuFailure('ambiguous-game-process')
        if previous and matches != previous:
            raise MenuFailure('game-process-changed')
        if matches:
            path, started = matches[0]
            if not previous and started < cutoff - 1:
                raise MenuFailure('game-process-changed')
            try:
                env = environment(path)
                if env.get('SteamGameId') != game_id and env.get('SteamAppId') != str(int(game_id) >> 32):
                    raise MenuFailure('game-shortcut-unverified')
                paths = set(re.findall(r' (/[^\n]+/UE4SS\.dll)$', (path / 'maps').read_text(), re.M))
            except (FileNotFoundError, ProcessLookupError):
                paths = set()  # pid vanished while scanning; look again
            if len(paths) == 1:
                return (path, started), Path(next(iter(paths))).parent
        time.sleep(.25)
    raise MenuFailure('loader-timeout' if matches else 'launch-timeout')


class MenuBridge:
    def __init__(self, process, root, timeout):
        self.process = process
        self.request = root / 'BestiaryLens-menu-request.txt'
        self.response = root / 'BestiaryLens-menu-result.txt'
        self.timeout = timeout

    def command(self, action, deadline):
        path, started = self.process
        nonce = uuid.uuid4().hex
        body = f'1 {nonce} {action}\n'
        with tempfile.TemporaryDirectory(prefix='.bestiary-menu-', dir=self.request.parent) as directory:
            stage = Path(directory) / 'request'
            stage.write_text(body)
            if self.response.exists() or self.response.is_symlink():
                raise MenuFailure('bridge-result-in-use')
            try:
                os.link(stage, self.request)
            except FileExistsError:
                raise MenuFailure('bridge-request-in-use') from None
            try:
                while time.monotonic() < deadline:
                    try:
                        changed = start_time(path) != started
                    except (FileNotFoundError, ProcessLookupError):
                        changed = True  # the game process vanished
                    if changed:
                        raise MenuFailure('game-process-changed')
                    try:
                        fields = self.response.read_text().split()
                    except FileNotFoundError:
                        fields = []
                    if len(fields) == 3 and fields[:2] == ['1', nonce]:
                        return fields[2]
                    time.sleep(.1)
                raise MenuFailure('menu-bridge-timeout')
            finally:
                if self.request.exists() and self.request.read_text() == body:
                    self.request.unlink()
                if self.response.exists() and self.response.read_text().split()[:2] == ['1', nonce]:
                    self.response.unlink()

    def exchange(self, action):
        deadline = time.monotonic() + self.timeout
        if action != 'observe' and self.command(action, deadline) != 'accepted':
            raise MenuFailure('menu-action-refused')
        expected = {'open-files': {'files'}, 'back': {'title'}, 'observe': {'title', 'files'}}
        observed = False
        while time.monotonic() < deadline:
            try:
                # A bridge starting during an outstanding request ignores that request.
                state = self.command('observe', min(deadline, time.monotonic() + 2))
            except MenuFailure as error:
                if str(error) != 'menu-bridge-timeout':
                    raise
                continue
            observed = True
            if state in expected[action] or state in {'blocked', 'error'}:
                return state
        raise MenuFailure('menu-transition-timeout' if observed else 'menu-bridge-timeout')


def on_deck(config):
    # Use one lock for launch and all menu actions. No game/save files are written.
    lock = Path.home() / '.cache/bestiary-lens-menu-test.lock'
    lock.parent.mkdir(exist_ok=True)
    with lock.open('a') as handle:
        try:
            fcntl.flock(handle, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise MenuFailure('runtime-test-in-use') from None
        process, root = ensure_process(config['account'], config['game_id'], config['timeout'])
        test_menu(MenuBridge(process, root, config['timeout']).exchange)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('config', type=Path, help='Private JSON with host, account, and game_id')
    parser.add_argument('--timeout', type=int, default=45, choices=range(1, 121), metavar='1..120')
    parser.add_argument('--offline-image', help='Run offline tests in this prebuilt Docker image')
    args = parser.parse_args()

    def offline():
        task = Path(__file__).with_name('tasks.py')
        if args.offline_image:
            root = task.resolve().parent.parent
            command = ['docker', 'run', '--rm', '--network', 'none', '--mount',
                       f'type=bind,source={root},target=/workspace']
            session = os.environ.get('AO_SESSION_ID')
            if session:
                command.extend(['--label', 'ao.session=' + session])
            return subprocess.run(command + [args.offline_image, 'test']).returncode
        return subprocess.run([sys.executable, '-B', str(task), 'test']).returncode

    def deck():
        try:
            config = json.loads(args.config.read_text())
            host, account, game_id = config['host'], config['account'], config['game_id']
            if (not isinstance(host, str) or not re.fullmatch(r'[\w.][\w.@:-]*', host)
                    or type(account) is not int or not 0 < account < 2**32
                    or not isinstance(game_id, str) or not game_id.isdecimal()
                    or not 0 < int(game_id) < 2**64 or int(game_id) & 0xffffffff != 0x02000000):
                raise ValueError
        except (OSError, ValueError, TypeError, KeyError):
            raise MenuFailure('invalid-runtime-config') from None
        source = Path(__file__).read_text().rsplit("if __name__ == '__main__':", 1)[0]
        command = source + '''
try:
    on_deck(json.load(sys.stdin))
except MenuFailure as error:
    print(str(error))
    sys.exit(1)
except (OSError, subprocess.SubprocessError, ValueError, IndexError):
    print('device-state-unavailable')
    sys.exit(1)
print('passed')
'''
        result = subprocess.run(
            ['ssh', '-o', 'BatchMode=yes', '-o', 'StrictHostKeyChecking=yes', '-o', 'ConnectTimeout=8',
             host, shlex.join(['python3', '-c', command])],
            input=json.dumps({'account': account, 'game_id': game_id, 'timeout': args.timeout}),
            text=True, capture_output=True, timeout=5 * args.timeout + 10,
        )
        state = result.stdout.strip()
        if result.returncode or state != 'passed':
            raise MenuFailure(state if re.fullmatch(r'[a-z-]+', state) else 'transport-error')

    offline_status, deck_status = run_checks(offline, deck)
    print(json.dumps({'offline_exit': offline_status, 'deck_menu': deck_status}))
    return int(offline_status != 0 or deck_status != 'passed')


if __name__ == '__main__':
    sys.exit(main())
