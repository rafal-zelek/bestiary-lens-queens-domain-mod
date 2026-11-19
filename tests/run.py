#!/usr/bin/env python3
"""Run Python distribution tests and Lua 5.4 logic tests locally or over SSH."""
import argparse
from pathlib import Path
import shlex
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--host', help='SSH host with lua and luac installed; optional')
args = parser.parse_args()
if args.host and args.host.startswith('-'):
    parser.error('SSH host cannot begin with a dash')
if not args.host and shutil.which('luac') is None:
    raise SystemExit(
        'luac is required to run the Lua suites. Use the repository Docker check command: '
        'docker build -t bestiary-lens-ci . && docker run --rm --network none '
        '--mount "type=bind,source=$PWD,target=/workspace" bestiary-lens-ci check'
    )
subprocess.run([sys.executable, '-B', '-m', 'unittest', 'discover', '-s', str(ROOT/'tests'), '-p', 'test_*.py'], check=True)

def run(command, data):
    cmd = (['ssh', '-o', 'BatchMode=yes', '-o', 'ConnectTimeout=8', args.host, shlex.join(command)]
           if args.host else command)
    subprocess.run(cmd, input=data.encode(), check=True)

scripts = ROOT/'Mods/BestiaryLens/Scripts'
script = ''
for file in sorted(scripts.rglob('*.lua')):
    source = file.read_text()
    run(['luac', '-p', '-'], source)
    if file != scripts/'main.lua':
        name = '.'.join(file.relative_to(scripts).with_suffix('').parts)
        script += 'package.preload["'+name+'"]=function() return assert(load([====['+source+']====]))() end\n'
for name in ('card.lua', 'model.lua', 'lens.lua', 'smoke_scenario.lua', 'runtime_menu.lua', 'menu_bridge.lua'):
    script += (ROOT/'tests'/name).read_text()+'\n'
run(['lua', '-'], script)
print('Bestiary Lens: all automated checks passed')
