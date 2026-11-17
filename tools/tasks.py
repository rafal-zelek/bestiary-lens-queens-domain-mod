#!/usr/bin/env python3
"""Project commands shared by local development and the Docker CI image."""
import argparse
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
LUA_DIRS = ('Mods/BestiaryLens/Scripts', 'tests', 'tools')
TASKS = ('format', 'format-check', 'lint', 'test', 'check', 'package', 'types-verify', 'types-package', 'workflow-lint')


def commands(task):
    if task == 'check':
        for gate in ('format-check', 'types-verify', 'workflow-lint', 'lint', 'test'):
            yield from commands(gate)
    elif task in ('format', 'format-check'):
        options = ['--verify'] if task == 'format' else ['--check']
        yield ['stylua', '--config-path', str(ROOT / 'stylua.toml'), *options, *LUA_DIRS]
    elif task == 'workflow-lint':
        yield ['actionlint', str(ROOT / '.github/workflows/ci.yml')]
    elif task == 'lint':
        report = ROOT / 'build' / 'luals'
        report.mkdir(parents=True, exist_ok=True)
        yield ['lua-language-server', '--check=' + str(ROOT), '--checklevel=Warning',
               '--configpath=' + str(ROOT / '.luarc.json'), '--logpath=' + str(report),
               '--metapath=' + str(report / 'meta')]
    elif task == 'test':
        yield [sys.executable, '-B', str(ROOT / 'tests' / 'run.py')]
    elif task in ('types-verify', 'types-package'):
        yield [sys.executable, '-B', str(ROOT / 'tools' / 'sync_types.py'),
               'verify' if task == 'types-verify' else 'package']
    elif task == 'package':
        yield [sys.executable, '-B', str(ROOT / 'tools' / 'package.py')]


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('task', choices=TASKS)
    args = parser.parse_args(argv)
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
