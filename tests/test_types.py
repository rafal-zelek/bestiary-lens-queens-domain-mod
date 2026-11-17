"""Version-only SDK aggregation, integrity, migration and the restricted live bridge."""
import base64
import hashlib
import importlib.util
import json
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]


def module():
    spec = importlib.util.spec_from_file_location('sync_types', ROOT / 'tools' / 'sync_types.py')
    obj = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(obj)
    return obj


def payload(version='13540', text=b'---@meta\n---@class Example\nlocal Example = {}\n'):
    return {
        'game': {'version': version, 'version_source': 'version.txt', 'exe_sha256': 'a' * 64},
        'ue4ss': {'git_sha': 'cdbc0b66', 'dll_sha256': 'b' * 64},
        'coverage': 'loaded_objects_only',
        'files': {'runtime/Game.lua': {'base64': base64.b64encode(text).decode(),
                                      'sha256': hashlib.sha256(text).hexdigest()}},
    }


class VersionTests(unittest.TestCase):
    def setUp(self):
        self.api = module()
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name).resolve()
        (self.root / '.luarc.json').write_text(json.dumps({'workspace.library': ['custom/library']}))

    def test_binary_and_capture_changes_reuse_version_without_rewriting(self):
        version = self.api.import_types(self.root, payload())
        self.assertEqual(version, self.root / 'types/queens-domain/13540')
        before = {p.relative_to(version).as_posix(): (p.read_bytes(), p.stat().st_mtime_ns)
                  for p in version.rglob('*') if p.is_file()}
        changed = payload()
        changed['game']['exe_sha256'] = 'c' * 64
        changed['ue4ss']['dll_sha256'] = 'd' * 64
        changed['captured_at'] = 'different timestamp'
        self.assertEqual(self.api.import_types(self.root, changed), version)
        after = {p.relative_to(version).as_posix(): (p.read_bytes(), p.stat().st_mtime_ns)
                 for p in version.rglob('*') if p.is_file()}
        self.assertEqual(before, after)
        self.api.verify_version(version)

    def test_subset_captures_preserve_files_and_declarations(self):
        first = payload(text=b'---@meta\n---@class A\nlocal A = {}\n\n---@param x number\nfunction A:Old(x) end\n')
        version = self.api.import_types(self.root, first)
        second = payload(text=b'---@meta\n---@class B\nlocal B = {}\n')
        self.api.import_types(self.root, second)
        text = (version / 'bindings/runtime/Game.lua').read_text()
        self.assertIn('---@class A', text)
        self.assertIn('---@class B', text)
        self.assertIn('function A:Old(x) end', text)
        other = payload()
        other['files']['runtime/Other.lua'] = other['files'].pop('runtime/Game.lua')
        self.api.import_types(self.root, other)
        self.api.import_types(self.root, first)
        self.assertTrue((version / 'bindings/runtime/Other.lua').is_file())
        self.assertIn('---@class B', (version / 'bindings/runtime/Game.lua').read_text())

    def test_newer_conflicting_declaration_wins_and_reimport_is_identical(self):
        old = payload(text=b'---@meta\n---@class A\n---@field value string\nlocal A = {}\n')
        version = self.api.import_types(self.root, old)
        new = payload(text=b'---@meta\n---@class A\n---@field value number\nlocal A = {}\n')
        self.api.import_types(self.root, new)
        text = (version / 'bindings/runtime/Game.lua').read_text()
        self.assertIn('value number', text)
        self.assertNotIn('value string', text)
        before = (version / 'manifest.json').read_bytes()
        self.api.import_types(self.root, new)
        self.assertEqual(before, (version / 'manifest.json').read_bytes())

    def test_overloads_enum_alias_and_variable_declarations_survive(self):
        text = b"""---@meta
---@alias Id integer
---@enum Choice
Choice = { A = 1, B = 2 }
---@type boolean
Flag = false
---@param name string
function Find(name) end
---@param id Id
function Find(id) end
---@param x string
Example['Pre-Destruction'] = function(self, x) end
"""
        version = self.api.import_types(self.root, payload(text=text))
        aggregate = (version / 'bindings/runtime/Game.lua').read_text()
        self.assertEqual(aggregate.count('function Find('), 2)
        self.assertIn("Example['Pre-Destruction'] = function(self, x) end", aggregate)
        for declaration in ['---@alias Id integer', 'Choice = { A = 1, B = 2 }', 'Flag = false']:
            self.assertIn(declaration, aggregate)
        self.api.import_types(self.root, payload(text=text))
        self.assertEqual(aggregate, (version / 'bindings/runtime/Game.lua').read_text())

    def test_comment_only_class_does_not_take_next_class_documentation(self):
        source = b'---@meta\n---@class A\n---@field value number\n\n---Description of B\n---@class B\nlocal B = {}\n'
        once = self.api.merge_types(None, source)
        self.assertEqual(self.api.declarations(source), self.api.declarations(once))
        self.assertEqual(once, self.api.merge_types(once, source))
        self.assertNotIn('Description of B', self.api.declarations(once)['class:A'])

    def test_unsupported_declaration_fails_before_changing_aggregate(self):
        version = self.api.import_types(self.root, payload())
        before = (version / 'manifest.json').read_bytes()
        with self.assertRaises(ValueError):
            self.api.import_types(self.root, payload(text=b'---@meta\nwhile true do end\n'))
        self.assertEqual(before, (version / 'manifest.json').read_bytes())

    def test_bad_hash_unsafe_path_and_version_do_not_create_sdks(self):
        for name in ['../escape.lua', '/tmp/escape.lua', 'C:/escape.lua', 'runtime\\escape.lua']:
            p = payload(); p['files'][name] = p['files'].pop('runtime/Game.lua')
            with self.subTest(path=name), self.assertRaises(ValueError):
                self.api.import_types(self.root, p)
        p = payload(); p['files']['runtime/Game.lua']['sha256'] = '0' * 64
        with self.assertRaises(ValueError): self.api.import_types(self.root, p)
        with self.assertRaises(ValueError): self.api.import_types(self.root, payload('../13540'))
        self.assertFalse((self.root / 'types/queens-domain').exists())

    def test_new_game_version_creates_directory_and_migration(self):
        old = self.api.import_types(self.root, payload())
        self.api.activate_version(self.root, '13540')
        new = self.api.import_types(self.root, payload('13541', b'---@meta\n---@class Changed\nlocal Changed = {}\n'))
        report = self.api.activate_version(self.root, '13541')
        self.assertNotEqual(old, new)
        self.assertTrue(old.is_dir())
        config = json.loads((self.root / '.luarc.json').read_text())
        self.assertEqual(config['workspace.library'], ['custom/library', 'types/queens-domain/13541/bindings'])
        self.assertEqual(report['changed'], ['runtime/Game.lua'])
        self.assertTrue((self.root / 'types/migrations/13540-to-13541.json').is_file())

    def test_same_version_activation_is_idempotent_and_has_no_capture_migrations(self):
        self.api.import_types(self.root, payload())
        self.api.activate_version(self.root, '13540')
        before = (self.root / 'types/active.json').read_bytes()
        self.api.import_types(self.root, payload(text=b'---@meta\n---@class B\nlocal B = {}\n'))
        self.api.activate_version(self.root, '13540')
        self.assertEqual(before, (self.root / 'types/active.json').read_bytes())
        self.assertEqual(json.loads(before), {'schema': 2, 'version': '13540'})
        self.assertFalse((self.root / 'types/migrations').exists())
        self.api.verify_active(self.root)

    def test_modified_aggregate_is_not_silently_overwritten(self):
        version = self.api.import_types(self.root, payload())
        (version / 'bindings/runtime/Game.lua').write_text('-- tampered')
        with self.assertRaises(ValueError): self.api.activate_version(self.root, '13540')
        with self.assertRaises(ValueError): self.api.import_types(self.root, payload())

    def test_version_traversal_and_config_drift_are_rejected(self):
        self.api.import_types(self.root, payload())
        with self.assertRaises(ValueError): self.api.activate_version(self.root, '../13540')
        self.api.activate_version(self.root, '13540')
        config = json.loads((self.root / '.luarc.json').read_text()); config['workspace.library'] = []
        (self.root / '.luarc.json').write_text(json.dumps(config))
        with self.assertRaises(ValueError): self.api.verify_active(self.root)

    def test_fetch_imports_and_activates_without_archives(self):
        data = payload()
        data['files']['api/UE4SS.d.lua'] = data['files']['runtime/Game.lua'].copy()
        license_file = self.root / 'types/licenses/UE4SS-cdbc0b66.txt'
        license_file.parent.mkdir(parents=True)
        license_file.write_text('MIT License\nCopyright fixture\n')
        with patch.object(self.api, 'ROOT', self.root), patch.object(self.api, 'ssh_call', return_value=data):
            self.assertEqual(self.api.main(['fetch', '--host', 'deck', '--ue4ss', '/ue4ss']), 0)
        self.api.verify_active(self.root)
        self.assertTrue((self.root / 'build/types/last-export.json').is_file())
        self.assertFalse(list(self.root.rglob('*.zip')))
        self.assertFalse(list(self.root.rglob('*.zip.sha256')))

    def test_package_command_is_rejected(self):
        with self.assertRaises(SystemExit) as error:
            self.api.main(['package'])
        self.assertEqual(error.exception.code, 2)

    def test_interrupted_directory_swap_restores_previous_aggregate(self):
        directory = self.api.import_types(self.root, payload())
        before = (directory / 'manifest.json').read_bytes()
        original = Path.rename
        def interrupted(source, target):
            if '.sdk-stage-' in str(source) and source.name == '13540':
                raise KeyboardInterrupt()
            return original(source, target)
        with patch.object(Path, 'rename', interrupted), self.assertRaises(KeyboardInterrupt):
            self.api.import_types(self.root, payload(text=b'---@meta\n---@class B\nlocal B = {}\n'))
        self.assertEqual(before, (directory / 'manifest.json').read_bytes())
        self.api.verify_version(directory)

    def test_migration_record_failure_preserves_active_version_and_config(self):
        self.api.import_types(self.root, payload())
        self.api.activate_version(self.root, '13540')
        self.api.import_types(self.root, payload('13541'))
        before = (self.root / '.luarc.json').read_bytes()
        original = self.api.atomic_json
        def fail_report(path, value):
            if Path(path).parent.name == 'migrations':
                raise PermissionError('report is not writable')
            return original(path, value)
        with patch.object(self.api, 'atomic_json', fail_report), self.assertRaises(PermissionError):
            self.api.activate_version(self.root, '13541')
        self.assertEqual(self.api.active_version(self.root), '13540')
        self.assertEqual(before, (self.root / '.luarc.json').read_bytes())
        self.api.verify_active(self.root)

    def test_missing_upstream_license_blocks_verification(self):
        p = payload(); p['files']['api/UE4SS.d.lua'] = p['files']['runtime/Game.lua'].copy()
        self.api.import_types(self.root, p)
        license_file = self.root / 'types/licenses/UE4SS-cdbc0b66.txt'
        license_file.parent.mkdir(parents=True); license_file.write_text('MIT License\nCopyright fixture\n')
        self.api.activate_version(self.root, '13540')
        license_file.unlink()
        with self.assertRaises(ValueError): self.api.verify_active(self.root)


class BridgeTests(unittest.TestCase):
    @unittest.skipUnless(shutil.which('lua'), 'Lua is supplied by the Docker toolchain')
    def test_probe_deduplication_invalid_commands_and_export_failure(self):
        bridge = (ROOT / 'tools/type_exporter.lua').read_text()
        harness = r'''
local files, callback, calls = {}, nil, 0
local function base(path) return path:match('([^/\\]+)$') end
io.open = function(path, mode)
    local key = base(path)
    if mode == 'r' then
        if not files[key] then return nil end
        return {read=function() return files[key] end, close=function() end}
    end
    return {write=function(_, value) files[key]=value end, close=function() end}
end
os.remove = function(path) files[base(path)]=nil;return true end
os.rename = function(a,b) files[base(b)]=files[base(a)];files[base(a)]=nil;return true end
debug.getinfo = function() return {source='@X:/ue4ss/Mods/BestiaryLensTypeExport/Scripts/main.lua'} end
LoopInGameThreadWithDelay = function(ms, fn) assert(ms==500);callback=fn end
GenerateLuaTypes = function() calls=calls+1 end
files['BestiaryLens-types-request.txt']='export '..string.rep('f',32)..'\n'
'''
        checks = r'''
callback();assert(calls==0,'must ignore a request left by an earlier game process')
local id=string.rep('a',32)
files['BestiaryLens-types-request.txt']='probe '..id..'\n'
callback();assert(calls==0);assert(files['BestiaryLens-types-status.json']:find('"state":"ready"',1,true))
files['BestiaryLens-types-request.txt']='export '..id..'\n'
callback();callback();assert(calls==1);assert(files['BestiaryLens-types-status.json']:find('"state":"done"',1,true))
files['BestiaryLens-types-request.txt']='os.execute("bad")'
callback();assert(calls==1)
GenerateLuaTypes = function() error('failure "quoted"\nline') end
files['BestiaryLens-types-request.txt']='export '..string.rep('b',32)..'\n'
callback();assert(files['BestiaryLens-types-status.json']:find('"state":"error"',1,true))
print('BRIDGE_JSON:'..files['BestiaryLens-types-status.json'])
'''
        result = subprocess.run(['lua', '-'], input=harness + '\n' + bridge + '\n' + checks, text=True, capture_output=True, check=True)
        status = json.loads(result.stdout.split('BRIDGE_JSON:', 1)[1])
        self.assertEqual(status['state'], 'error')
        self.assertIn('quoted', status['detail'])


if __name__ == '__main__':
    unittest.main()
