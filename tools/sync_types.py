#!/usr/bin/env python3
"""Aggregate LuaLS declarations by game version from a running UE4SS game."""
import argparse
import base64
from datetime import datetime, timezone
import hashlib
import inspect
import json
import os
from pathlib import Path, PurePosixPath
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import urllib.request
import uuid
import zipfile

ROOT = Path(__file__).resolve().parents[1]
HELPER = 'BestiaryLensTypeExport'
CATALOG = 'types/queens-domain'


def digest(data):
    return hashlib.sha256(data).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(',', ':')).encode()


def atomic_json(path, value):
    path = Path(path)
    if path.is_symlink():
        raise ValueError('Refusing a symlink: ' + str(path))
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name('.' + path.name + '.' + uuid.uuid4().hex + '.tmp')
    try:
        temporary.write_text(json.dumps(value, indent=2, sort_keys=True) + '\n', encoding='utf-8')
        temporary.replace(path)
    finally:
        temporary.unlink(missing_ok=True)


def safe_name(name):
    path = PurePosixPath(name)
    if (not name or path.is_absolute() or '..' in path.parts or '\\' in name
            or ':' in name or path.as_posix() != name or path.suffix != '.lua'):
        raise ValueError('Unsafe type filename: ' + name)
    return path


def validate_version(version):
    if not isinstance(version, str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9._-]{0,79}', version):
        raise ValueError('Unsafe or missing game version')
    return version


def no_symlinks(root, target):
    root, target = Path(root).absolute(), Path(target).absolute()
    if '..' in target.parts:
        raise ValueError('Path must not contain traversal components')
    target.relative_to(root)
    for path in [target, *target.parents]:
        if path == root:
            break
        if path.is_symlink():
            raise ValueError('Refusing a symlink: ' + str(path))


def declarations(data):
    """Split UE4SS declaration stubs, never evaluate Lua. Reject unknown executable syntax."""
    lines = data.decode('utf-8-sig').replace('\r\n', '\n').splitlines()
    result, pending = {}, []
    marker_pattern = re.compile(r'^---@(?P<kind>class|enum|alias)\s+(?P<name>[^\s<:]+)')

    def marker():
        for line in pending:
            match = marker_pattern.match(line)
            if match:
                return match['kind'] + ':' + match['name']
        return None

    def emit(key, body):
        # Multiple overload declarations in one source file form one named group.
        result.setdefault(key, []).append('\n'.join(body).strip())

    i = 0
    while i < len(lines):
        line = lines[i]
        i += 1
        if line.startswith('---@meta'):
            continue
        current = marker()
        if current and not line.strip():
            following = next((text for text in lines[i:] if text.strip()), '')
            name = current.split(':', 1)[1]
            initializer = re.match(r'^(?:local\s+)?' + re.escape(name) + r'\s*=', following)
            if not initializer and not following.startswith(('---@field ', '---|')):
                emit(current, pending)
                pending = []
                continue
        if current and (marker_pattern.match(line) or
                        (current.startswith('alias:') and not line.startswith('---|'))):
            emit(current, pending)
            pending = []
        if not line.strip() or line.lstrip().startswith('--'):
            pending.append(line)
            continue
        function = re.fullmatch(r'function\s+([\w.:]+)\([^)]*\)\s*end\s*', line)
        if function:
            emit('function:' + function[1], pending + [line])
            pending = []
            continue
        indexed_function = re.fullmatch(
            r"([A-Za-z_]\w*)\[((?:'(?:\\.|[^'\\])*')|(?:\"(?:\\.|[^\"\\])*\"))\]\s*=\s*function\([^)]*\)\s*end\s*", line)
        if indexed_function:
            emit('function:' + indexed_function[1] + '[' + indexed_function[2] + ']', pending + [line])
            pending = []
            continue
        assignment = re.match(r'^(?:local\s+)?([A-Za-z_][\w]*)\s*=\s*(.*)', line)
        if not assignment:
            raise ValueError('Unsupported SDK declaration syntax: ' + line[:160])
        body = pending + [line]
        key = marker() or 'value:' + assignment[1]
        pending = []
        # Generated tables may contain quoted identifiers with braces in them.
        def depth(text):
            code = re.sub(r"'(?:\\.|[^'\\])*'|\"(?:\\.|[^\"\\])*\"|--.*", '', text)
            return code.count('{') + code.count('(') - code.count('}') - code.count(')')
        balance = depth(line)
        while balance > 0 and i < len(lines):
            body.append(lines[i]); balance += depth(lines[i]); i += 1
        if balance != 0:
            raise ValueError('Unbalanced SDK declaration: ' + assignment[1])
        emit(key, body)
    if marker():
        emit(marker(), pending)
    if not result:
        raise ValueError('SDK file has no supported declarations')
    return {key: '\n\n'.join(parts) for key, parts in result.items()}


def merge_types(older, newer):
    merged = declarations(older) if older else {}
    merged.update(declarations(newer))
    order = {'alias': 0, 'class': 1, 'enum': 2, 'value': 3, 'function': 4}
    keys = sorted(merged, key=lambda key: (order[key.split(':', 1)[0]], key))
    return ('---@meta\n\n' + '\n\n'.join(merged[key] for key in keys) + '\n').encode()


def version_path(root, version):
    root = Path(root).resolve()
    target = root / CATALOG / validate_version(version)
    no_symlinks(root, target)
    return target


def import_types(root, payload):
    root = Path(root).resolve()
    version = validate_version(payload['game']['version'])
    target = version_path(root, version)
    commit = payload['ue4ss']['git_sha']
    if not re.fullmatch(r'[0-9a-f]{7,40}', commit):
        raise ValueError('Missing UE4SS source commit')
    if not payload.get('files') or len(payload['files']) > 65536:
        raise ValueError('Empty or oversized SDK')
    files, inventory, commits = {}, {}, set()
    existing = None
    if target.exists():
        existing = verify_version(target)
        commits.update(existing['ue4ss_commits'])
        inventory.update(existing['files'])
        files.update({name: (target / 'bindings' / name).read_bytes() for name in inventory})
    commits.add(commit)
    total = 0
    for name, entry in sorted(payload['files'].items()):
        safe_name(name)
        data = base64.b64decode(entry['base64'], validate=True)
        if digest(data) != entry['sha256']:
            raise ValueError('SHA-256 mismatch: ' + name)
        total += len(data)
        if total > 128 * 1024 * 1024:
            raise ValueError('SDK exceeds 128 MiB')
        files[name] = merge_types(files.get(name), data)
        origins = set(inventory.get(name, {}).get('origins', []))
        origins.add(entry.get('origin', 'runtime-reflection'))
        inventory[name] = {'sha256': digest(files[name]), 'size': len(files[name]), 'origins': sorted(origins)}
    if sum(map(len, files.values())) > 128 * 1024 * 1024 or len(files) > 65536:
        raise ValueError('Aggregated SDK exceeds limits')
    manifest = {'schema': 2, 'game_version': version, 'coverage': 'aggregated_loaded_objects',
                'ue4ss_commits': sorted(commits), 'files': inventory}
    if existing == manifest:
        return target
    target.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='.sdk-stage-', dir=target.parent) as tmp:
        stage = Path(tmp) / version
        backup = target.with_name('.' + version + '.previous-' + uuid.uuid4().hex)
        for name, data in files.items():
            file = stage / 'bindings' / name
            file.parent.mkdir(parents=True, exist_ok=True)
            file.write_bytes(data)
        atomic_json(stage / 'manifest.json', manifest)
        verify_version(stage)
        try:
            if target.exists():
                target.rename(backup)
            stage.rename(target)
        except BaseException:
            # Backup is outside TemporaryDirectory so a failed restoration cannot erase it.
            if backup.exists():
                if target.exists():
                    target.rename(stage)
                backup.rename(target)
            raise
        if backup.exists():
            shutil.rmtree(backup)
    return target


def verify_version(directory):
    directory = Path(directory)
    if directory.is_symlink() or any(p.is_symlink() for p in directory.rglob('*')):
        raise ValueError('SDK contains a symlink')
    manifest = json.loads((directory / 'manifest.json').read_text(encoding='utf-8'))
    if manifest['schema'] != 2 or not manifest['files']:
        raise ValueError('Unsupported or empty SDK manifest')
    if directory.name != validate_version(manifest['game_version']):
        raise ValueError('SDK game version mismatch')
    for commit in manifest['ue4ss_commits']:
        if not re.fullmatch(r'[0-9a-f]{7,40}', commit):
            raise ValueError('Invalid UE4SS source commit')
    actual = {p.relative_to(directory / 'bindings').as_posix()
              for p in (directory / 'bindings').rglob('*') if p.is_file()}
    if actual != set(manifest['files']):
        raise ValueError('SDK file inventory mismatch')
    for name, entry in manifest['files'].items():
        safe_name(name)
        data = (directory / 'bindings' / name).read_bytes()
        if len(data) != entry['size'] or digest(data) != entry['sha256']:
            raise ValueError('SDK changed: ' + name)
    return manifest


def licenses_for(root, manifest):
    files = []
    for commit in manifest['ue4ss_commits']:
        file = Path(root) / 'types/licenses' / ('UE4SS-' + commit + '.txt')
        no_symlinks(root, file)
        if not file.is_file():
            if 'api/UE4SS.d.lua' in manifest['files']:
                raise ValueError('Missing matching UE4SS license: ' + str(file))
            continue
        if not file.read_bytes().strip():
            raise ValueError('UE4SS license is empty')
        files.append(file)
    return files


def active_version(root):
    pointer = json.loads((Path(root) / 'types/active.json').read_text(encoding='utf-8'))
    if pointer['schema'] != 2:
        raise ValueError('Unsupported active SDK pointer')
    return validate_version(pointer['version'])


def activate_version(root, version):
    root = Path(root).resolve()
    directory = version_path(root, version)
    manifest = verify_version(directory)
    licenses_for(root, manifest)
    config_path, pointer = root / '.luarc.json', root / 'types/active.json'
    no_symlinks(root, config_path); no_symlinks(root, pointer)
    config = json.loads(config_path.read_text(encoding='utf-8'))
    before = dict(config)
    old = active_version(root) if pointer.exists() else None
    config['workspace.library'] = [p for p in config.get('workspace.library', [])
        if not (isinstance(p, str) and p.startswith(CATALOG + '/'))] + [directory.relative_to(root).as_posix() + '/bindings']
    config['workspace.ignoreDir'] = list(dict.fromkeys([*config.get('workspace.ignoreDir', []), 'types']))
    config['workspace.maxPreload'] = max(config.get('workspace.maxPreload', 5000), len(manifest['files']) + 1000)
    config['workspace.preloadFileSize'] = max(config.get('workspace.preloadFileSize', 5000),
        max(entry['size'] for entry in manifest['files'].values()) // 1024 + 65)
    previous = verify_version(version_path(root, old))['files'] if old and old != version else {}
    current = manifest['files']
    report = {'from': old, 'to': version, 'added': [], 'removed': [], 'changed': []}
    if old != version:
        report.update(added=sorted(current.keys() - previous.keys()), removed=sorted(previous.keys() - current.keys()),
            changed=sorted(n for n in current.keys() & previous.keys() if current[n]['sha256'] != previous[n]['sha256']))
    if old and old != version:
        report['id'] = old + '-to-' + version
        path = root / 'types/migrations' / (report['id'] + '.json')
        no_symlinks(root, path)
        atomic_json(path, report)
    try:
        if config != before:
            atomic_json(config_path, config)
        if old != version:
            atomic_json(pointer, {'schema': 2, 'version': version})
        else:
            report['already_active'] = True
    except BaseException:
        atomic_json(config_path, before)
        if old:
            atomic_json(pointer, {'schema': 2, 'version': old})
        else:
            pointer.unlink(missing_ok=True)
        raise
    return report


def verify_active(root):
    root = Path(root).resolve()
    version = active_version(root)
    directory = version_path(root, version)
    manifest = verify_version(directory)
    licenses_for(root, manifest)
    config = json.loads((root / '.luarc.json').read_text(encoding='utf-8'))
    managed = [p for p in config.get('workspace.library', []) if isinstance(p, str) and p.startswith(CATALOG + '/')]
    if managed != [directory.relative_to(root).as_posix() + '/bindings'] or 'types' not in config.get('workspace.ignoreDir', []):
        raise ValueError('LuaLS configuration does not match the active SDK')
    return manifest


def package_version(root, version):
    root = Path(root).resolve()
    directory = version_path(root, version)
    manifest = verify_version(directory)
    licenses = licenses_for(root, manifest)
    target = root / 'build/types' / ('QueensDomain-types-' + version + '.zip')
    target.parent.mkdir(parents=True, exist_ok=True)
    members = {'manifest.json': directory / 'manifest.json'}
    members.update({'bindings/' + n: directory / 'bindings' / n for n in sorted(manifest['files'])})
    for file in licenses:
        name = 'LICENSE-UE4SS.txt' if len(licenses) == 1 else 'licenses/' + file.name
        members[name] = file
    temporary = target.with_suffix('.zip.tmp')
    with zipfile.ZipFile(temporary, 'w', zipfile.ZIP_DEFLATED) as archive:
        for name, source in members.items():
            info = zipfile.ZipInfo(name, date_time=(2026, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o100644 << 16
            archive.writestr(info, source.read_bytes())
    temporary.replace(target)
    target.with_suffix('.zip.sha256').write_text(digest(target.read_bytes()) + '  ' + target.name + '\n')
    return target


def remote_export(ue4ss, timeout=60):
    """Self-contained code shipped to the Deck over SSH; no remote dependencies."""
    import base64
    import configparser
    from datetime import datetime, timezone
    import fcntl
    import hashlib
    import json
    from pathlib import Path
    import re
    import time
    import uuid

    directory = Path(ue4ss).expanduser().resolve()
    if not (directory / 'UE4SS-settings.ini').is_file():
        raise ValueError('Target must contain UE4SS-settings.ini')
    game = directory.parents[3]
    exe = directory.parent / 'QueensDomain-Win64-Shipping.exe'
    dll = directory / 'UE4SS.dll'
    output = directory / 'Mods/shared/types'
    for path in [directory / 'Mods', directory / 'Mods/shared', output]:
        if path.is_symlink():
            raise ValueError('Refusing a symlink export directory')
    processes = []
    for proc in Path('/proc').iterdir():
        if not proc.name.isdigit():
            continue
        try:
            argv0 = (proc / 'cmdline').read_bytes().split(b'\0')[0].decode(errors='replace')
            if argv0.replace('\\', '/').endswith('/QueensDomain-Win64-Shipping.exe'):
                processes.append((proc.name, (proc / 'stat').read_text().rsplit(')', 1)[1].split()[19]))
        except (OSError, IndexError):
            pass
    if len(processes) != 1:
        raise RuntimeError('Expected exactly one running Queen\'s Domain Shipping process')
    settings = configparser.ConfigParser(strict=False, interpolation=None)
    settings.read(directory / 'UE4SS-settings.ini')
    if settings.getint('CXXHeaderGenerator', 'LoadAllAssetsBeforeGeneratingCXXHeaders', fallback=0) != 0:
        raise RuntimeError('Refusing export with forced asset loading enabled')
    if settings.get('Overrides', 'ModsFolderPath', fallback='').strip():
        raise RuntimeError('Custom ModsFolderPath is not supported by this helper')
    def sha(path):
        return hashlib.sha256(path.read_bytes()).hexdigest()
    def fingerprint():
        return ((game / 'version.txt').read_text().strip(), sha(exe), sha(dll))
    before = fingerprint()
    maps = (Path('/proc') / processes[0][0] / 'maps').read_text().splitlines()
    for module in [exe, dll]:
        mapped = [line.split(maxsplit=5) for line in maps if line.endswith(str(module))]
        if not mapped or any(int(parts[4]) != module.stat().st_ino for parts in mapped):
            raise RuntimeError('On-disk module differs from the running process: ' + module.name)
    match = re.search(r'UE4SS - .*?Git SHA #([0-9a-f]{7,40})', (directory / 'UE4SS.log').read_text(errors='replace'))
    if not match:
        raise RuntimeError('Cannot identify the loaded UE4SS source commit')
    request = directory / 'BestiaryLens-types-request.txt'
    status = directory / 'BestiaryLens-types-status.json'
    def command(action, limit):
        nonce = uuid.uuid4().hex
        temporary = request.with_suffix('.tmp')
        temporary.write_text(action + ' ' + nonce + '\n')
        temporary.replace(request)
        deadline = time.monotonic() + limit
        while time.monotonic() < deadline:
            try:
                response = json.loads(status.read_text())
            except (OSError, ValueError):
                response = {}
            if response.get('request_id') == nonce and response.get('protocol') == 1:
                if response.get('state') == 'error':
                    raise RuntimeError('Runtime exporter: ' + response.get('detail', 'unknown error'))
                if response.get('state') == ('ready' if action == 'probe' else 'done'):
                    if request.exists() and request.read_text().strip() == action + ' ' + nonce:
                        request.unlink()
                    return
            time.sleep(0.2)
        if request.exists() and request.read_text().strip() == action + ' ' + nonce:
            request.unlink()
        raise RuntimeError('Type exporter did not acknowledge ' + action
                           + '; ensure the helper was loaded at game startup. No restart/reload was performed.')
    lock = directory / 'BestiaryLens-types-export.lock'
    with lock.open('a') as guard:
        fcntl.flock(guard, fcntl.LOCK_EX | fcntl.LOCK_NB)
        command('probe', 5)
        backup = directory / 'bestiary-lens-type-backups' / uuid.uuid4().hex
        if output.exists():
            backup.parent.mkdir(parents=True, exist_ok=True)
            output.rename(backup)
        # On an export timeout the previous dump remains safe in backup. Do not
        # rename directories underneath a generator that could still be running.
        command('export', timeout)
        if fingerprint() != before:
            raise RuntimeError('Game/loader changed during export; refusing to import this capture')
        pid, start = processes[0]
        if (Path('/proc') / pid / 'stat').read_text().rsplit(')', 1)[1].split()[19] != start:
            raise RuntimeError('Game process changed during export')
        files, total = {}, 0
        sources = [('runtime/' + p.relative_to(output).as_posix(), p) for p in sorted(output.rglob('*.lua'))]
        api = directory / 'Mods/shared/Types.lua'
        if api.is_file():
            sources.append(('api/UE4SS.d.lua', api))
        for name, path in sources:
            if path.is_symlink():
                raise RuntimeError('Refusing a symlink type file')
            data = path.read_bytes()
            total += len(data)
            if total > 128 * 1024 * 1024 or len(files) >= 65536:
                raise RuntimeError('Runtime SDK exceeds the transfer limit')
            files[name] = {'base64': base64.b64encode(data).decode(),
                           'sha256': hashlib.sha256(data).hexdigest(),
                           'origin': 'installed-ue4ss-api' if name.startswith('api/') else 'runtime-reflection'}
        if not any(name.startswith('runtime/') for name in files):
            raise RuntimeError('Generator acknowledged completion but produced no Lua types')
        return {'game': {'version': before[0], 'version_source': 'version.txt', 'exe_sha256': before[1]},
                'ue4ss': {'git_sha': match[1], 'dll_sha256': before[2]},
                'coverage': 'loaded_objects_only', 'captured_at': datetime.now(timezone.utc).isoformat(),
                'files': files}


def ssh_call(host, code, request):
    if not host or host.startswith('-'):
        raise ValueError('Provide a valid SSH host or config alias')
    result = subprocess.check_output(['ssh', '-o', 'BatchMode=yes', '-o', 'ConnectTimeout=8', host,
                                    shlex.join(['python3', '-c', code])], input=canonical(request))
    return json.loads(result)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    for name in ['install-helper', 'fetch']:
        command = sub.add_parser(name)
        command.add_argument('--host', required=True)
        command.add_argument('--ue4ss', required=True)
        if name == 'fetch':
            command.add_argument('--timeout', type=int, default=60)
    for name in ['verify', 'activate', 'package']:
        command = sub.add_parser(name)
        command.add_argument('--version', help='Game version; defaults to active SDK')
    args = parser.parse_args(argv)
    try:
        if args.command == 'install-helper':
            from deploy import install
            payload = {'enabled.txt': '', 'Scripts/main.lua': base64.b64encode((ROOT / 'tools/type_exporter.lua').read_bytes()).decode()}
            code = ('import base64,hashlib,json,tempfile,uuid\nfrom pathlib import Path,PurePosixPath\n'
                    + 'MOD=' + repr(HELPER) + '\n' + inspect.getsource(install)
                    + '\nimport sys\nr=json.load(sys.stdin)\nprint(json.dumps(install(r["ue4ss"],r["payload"])))')
            report = ssh_call(args.host, code, {'ue4ss': args.ue4ss, 'payload': payload})
            atomic_json(ROOT / 'build/types/helper-install.json', report)
            print('Helper installed and SHA-256 verified. First installation loads at normal game startup.')
            print("Replacing an installed helper may trigger the loader's existing per-mod reload policy.")
            print('No game restart or loader setting change requested.')
            return 0
        if args.command == 'fetch':
            if not 1 <= args.timeout <= 300:
                parser.error('--timeout must be between 1 and 300 seconds')
            code = inspect.getsource(remote_export) + '\nimport json,sys\nprint(json.dumps(remote_export(**json.load(sys.stdin))))'
            payload = ssh_call(args.host, code, {'ue4ss': args.ue4ss, 'timeout': args.timeout})
            if 'api/UE4SS.d.lua' not in payload['files']:
                commit = payload['ue4ss']['git_sha']
                url = f'https://raw.githubusercontent.com/UE4SS-RE/RE-UE4SS/{commit}/assets/Mods/shared/Types.lua'
                with urllib.request.urlopen(url, timeout=30) as response:
                    data = response.read(4 * 1024 * 1024)
                payload['files']['api/UE4SS.d.lua'] = {'base64': base64.b64encode(data).decode(),
                            'sha256': digest(data), 'origin': url}
                print('Supplemented UE4SS base API from the matching loader source commit.')
            commit = payload['ue4ss']['git_sha']
            license_file = ROOT / 'types/licenses' / ('UE4SS-' + commit + '.txt')
            no_symlinks(ROOT, license_file)
            if not license_file.exists():
                url = f'https://raw.githubusercontent.com/UE4SS-RE/RE-UE4SS/{commit}/LICENSE'
                with urllib.request.urlopen(url, timeout=30) as response:
                    license_data = response.read(65536)
                license_file.parent.mkdir(parents=True, exist_ok=True)
                license_file.write_bytes(license_data)
            atomic_json(ROOT / 'build/types/last-export.json', payload)
            directory = import_types(ROOT, payload)
            version = payload['game']['version']
            migration = activate_version(ROOT, version)
            archive = package_version(ROOT, version)
            print('SDK:', directory.relative_to(ROOT))
            print('Aggregated files:', len(verify_version(directory)['files']), '| newer conflicting declarations win')
            print('Migration:', migration.get('id', 'same version' if migration.get('already_active') else 'initial activation'), '| added:', len(migration['added']),
                  'removed:', len(migration['removed']), 'changed:', len(migration['changed']))
            print('Archive:', archive.relative_to(ROOT))
            return 0
        version = args.version or active_version(ROOT)
        directory = version_path(ROOT, version)
        if args.command == 'verify':
            manifest = verify_version(directory) if args.version else verify_active(ROOT)
            print('SDK verified:', manifest['game_version'], len(manifest['files']), 'files')
        elif args.command == 'activate':
            print(json.dumps(activate_version(ROOT, version), indent=2))
        else:
            print(package_version(ROOT, version))
        return 0
    except (OSError, ValueError, KeyError, RuntimeError, subprocess.CalledProcessError) as error:
        print('Type sync failed: ' + str(error), file=sys.stderr)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
