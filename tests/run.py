#!/usr/bin/env python3
"""Run Python distribution tests and Lua 5.4 logic tests locally or over SSH."""
import argparse
from pathlib import Path
import shlex
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--host', help='SSH host with lua and luac installed; optional')
args = parser.parse_args()
if args.host and args.host.startswith('-'):
    parser.error('SSH host cannot begin with a dash')
subprocess.run([sys.executable, '-B', '-m', 'unittest', 'discover', '-s', str(ROOT/'tests'), '-p', 'test_*.py'], check=True)

def run(command, data):
    cmd = (['ssh', '-o', 'BatchMode=yes', '-o', 'ConnectTimeout=8', args.host, shlex.join(command)]
           if args.host else command)
    subprocess.run(cmd, input=data.encode(), check=True)

scripts = ROOT/'Mods/BestiaryLens/Scripts'
for file in sorted(scripts.glob('*.lua')):
    run(['luac', '-p', '-'], file.read_text())
script = 'BestiaryLens_TEST_MODE=true\n'
for name in ('config', 'card_model', 'card_view'):
    script += 'package.preload["'+name+'"]=function() return assert(load([====['+(scripts/(name+'.lua')).read_text()+']====]))() end\n'
script += 'local api=assert(load([====['+(scripts/'main.lua').read_text()+']====]))()\n'
for name in ('card.lua', 'model.lua'):
    script += (ROOT/'tests'/name).read_text()+'\n'
run(['lua', '-'], script)
print('Bestiary Lens: all automated checks passed')
