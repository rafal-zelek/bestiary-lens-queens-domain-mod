#!/usr/bin/env python3
"""Install locally or over SSH; explicit target, backup and SHA-256 readback."""
import argparse
import base64
import hashlib
import inspect
import json
from pathlib import Path, PurePosixPath
import shlex
import subprocess
import tempfile
import uuid

MOD = 'BestiaryLens'

def install(ue4ss, payload):
    ue4ss = Path(ue4ss).expanduser().resolve()
    if not (ue4ss / 'UE4SS-settings.ini').is_file():
        raise ValueError('Target must contain UE4SS-settings.ini')
    decoded = {}
    for name, encoded in payload.items():
        path = PurePosixPath(name)
        if path.is_absolute() or '..' in path.parts or '\\' in name or not name:
            raise ValueError('Unsafe payload path: ' + name)
        decoded[name] = base64.b64decode(encoded, validate=True)
    mods = ue4ss / 'Mods'
    mods.mkdir(exist_ok=True)
    target = mods / MOD
    if target.is_symlink():
        raise ValueError('Refusing a symlink mod directory')
    # Stage outside Mods so a watcher cannot load a partially transferred mod.
    stage = Path(tempfile.mkdtemp(prefix='.bestiary-lens-stage-', dir=ue4ss))
    for name, data in decoded.items():
        p = stage / name
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_bytes(data)
    expected = {name: hashlib.sha256(data).hexdigest() for name, data in decoded.items()}
    staged = {name: hashlib.sha256((stage/name).read_bytes()).hexdigest() for name in decoded}
    if staged != expected:
        raise RuntimeError('Staged files failed SHA-256 verification')
    backup = None
    if target.exists():
        base = ue4ss / 'bestiary-lens-backups'
        base.mkdir(exist_ok=True)
        backup = base / uuid.uuid4().hex
        target.rename(backup)
    try:
        stage.rename(target)
    except OSError:
        if backup:
            backup.rename(target)
        raise
    actual = {name: hashlib.sha256((target/name).read_bytes()).hexdigest() for name in decoded}
    if actual != expected:
        raise RuntimeError('Installed files failed SHA-256 readback; retain backup')
    return {'mod': MOD, 'verified': True, 'sha256': actual,
            'backup': str(backup) if backup else None}

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--ue4ss', required=True, help='UE4SS directory on the target machine')
    parser.add_argument('--host', help='Optional SSH host or SSH config alias; no default')
    parser.add_argument('--with-smoke', action='store_true', help='Install the development smoke test and its keybind')
    args = parser.parse_args()
    if args.host and args.host.startswith('-'):
        parser.error('SSH host cannot begin with a dash')
    from package import install_sources
    root = Path(__file__).resolve().parents[1] / 'Mods' / MOD
    payload = {name: base64.b64encode((root/source).read_bytes()).decode()
               for name, source in install_sources(args.with_smoke).items()}
    if args.host:
        code = ('import base64,hashlib,json,tempfile,uuid\n'
                'from pathlib import Path,PurePosixPath\nMOD="BestiaryLens"\n' + inspect.getsource(install) +
                '\nimport sys\nr=json.load(sys.stdin)\nprint(json.dumps(install(r["ue4ss"],r["payload"])))')
        result = subprocess.check_output(
            ['ssh', '-o', 'BatchMode=yes', '-o', 'ConnectTimeout=8', args.host,
             shlex.join(['python3', '-c', code])],
            input=json.dumps({'ue4ss': args.ue4ss, 'payload': payload}).encode())
        report = json.loads(result)
    else:
        report = install(args.ue4ss, payload)
    local = Path(__file__).resolve().parents[1] / 'build' / 'deployments'
    local.mkdir(parents=True, exist_ok=True)
    manifest = local / (uuid.uuid4().hex + '.json')
    manifest.write_text(json.dumps(report, indent=2) + '\n')
    print('Bestiary Lens: installed and SHA-256 verified; report: ' + str(manifest))
    print('No process restart or loader configuration change performed.')

if __name__ == '__main__':
    main()
