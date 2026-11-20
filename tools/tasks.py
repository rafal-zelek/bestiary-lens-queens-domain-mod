#!/usr/bin/env python3
"""Project commands shared by local development and the Docker CI image."""
import argparse
from pathlib import Path
import re
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
LUA_DIRS = ('Mods/BestiaryLens/Scripts', 'tests', 'tools')
TASKS = ('format', 'format-check', 'lint', 'test', 'check', 'package', 'types-verify', 'workflow-lint')
CHECK_GATES = ('format-check', 'types-verify', 'workflow-lint', 'lint', 'test')
ERROR_LINE = re.compile(
    r'error|failed|failure|warning|undefined|traceback|exception|assert|invalid|'
    r'could not|not found|no such|syntax|diff in|would reformat|fatal', re.IGNORECASE)


def commands(task):
    if task == 'check':
        for gate in CHECK_GATES:
            yield from commands(gate)
    elif task in ('format', 'format-check'):
        options = ['--verify'] if task == 'format' else ['--check']
        yield ['stylua', '--config-path', str(ROOT / 'stylua.toml'), *options, *LUA_DIRS]
    elif task == 'workflow-lint':
        yield ['actionlint', *(str(ROOT / '.github/workflows' / name)
                               for name in ('ci.yml', 'release.yml', '_validate.yml'))]
    elif task == 'lint':
        report = ROOT / 'build' / 'luals'
        report.mkdir(parents=True, exist_ok=True)
        yield ['lua-language-server', '--check=' + str(ROOT), '--checklevel=Warning',
               '--configpath=' + str(ROOT / '.luarc.json'), '--logpath=' + str(report),
               '--metapath=' + str(report / 'meta')]
    elif task == 'test':
        yield [sys.executable, '-B', str(ROOT / 'tests' / 'run.py')]
    elif task == 'types-verify':
        yield [sys.executable, '-B', str(ROOT / 'tools' / 'sync_types.py'),
               'verify']
    elif task == 'package':
        yield [sys.executable, '-B', str(ROOT / 'tools' / 'package.py')]


def diagnostic_lines(output):
    lines = [line.rstrip() for line in output.splitlines() if line.strip()]
    relevant = [line for line in lines if ERROR_LINE.search(line)]
    return (relevant or lines)[:15]


def run_summary():
    for gate, command in zip(CHECK_GATES, commands('check')):
        started = time.monotonic()
        try:
            result = subprocess.run(command, cwd=ROOT, capture_output=True, text=True)
            exit_code = result.returncode
            output = (result.stdout or '') + (result.stderr or '')
        except FileNotFoundError:
            exit_code = 127
            output = (f'Missing tool: {command[0]}. Use the Docker image or install the tool in PATH.\n')
        duration = time.monotonic() - started
        if exit_code == 0:
            print(f'{gate} PASS dur={duration:.2f}s', flush=True)
        else:
            print(f'{gate} FAIL exit={exit_code} dur={duration:.2f}s', flush=True)
            for line in diagnostic_lines(output):
                print(line, flush=True)
            return exit_code if exit_code > 0 else 128 - exit_code
    return 0


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('task', choices=TASKS)
    parser.add_argument('--summary', action='store_true', help='print compact per-gate results for check')
    args = parser.parse_args(argv)
    if args.summary and args.task != 'check':
        parser.error('--summary is only valid with check')
    if args.summary:
        try:
            return run_summary()
        except KeyboardInterrupt:
            return 130
    try:
        for command in commands(args.task):
            print('+ ' + ' '.join(command), flush=True)
            try:
                subprocess.run(command, cwd=ROOT, check=True)
            except FileNotFoundError:
                print(f'Missing tool: {command[0]}. Use the Docker image or install the tool in PATH.',
                      file=sys.stderr)
                return 127
    except subprocess.CalledProcessError as error:
        return error.returncode if error.returncode > 0 else 128 - error.returncode
    except KeyboardInterrupt:
        return 130
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
