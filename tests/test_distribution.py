import importlib.util
import pathlib
import re
import shutil
import subprocess
import tempfile
import unittest
import zipfile

ROOT = pathlib.Path(__file__).resolve().parents[1]

def module(name):
    spec = importlib.util.spec_from_file_location(name, ROOT / 'tools' / (name + '.py'))
    obj = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(obj)
    return obj

class DistributionTests(unittest.TestCase):
    def test_package_excludes_unlisted_files(self):
        release = module('package')
        self.assertTrue(all(path.rsplit('.', 1)[-1] != 'py' for path in release.PAYLOAD))
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            for name in release.PAYLOAD:
                p = root / name
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(b'payload')
            (root / 'private.log').write_text('must never ship')
            (root / 'Mods/BestiaryLens/Scripts/debug.lua').write_text('private')
            archive = release.build(root)
            with zipfile.ZipFile(archive) as z:
                self.assertEqual(set(z.namelist()), set(release.PAYLOAD))
                self.assertFalse(any(name.endswith('.py') for name in z.namelist()))

    def test_high_level_scripts_cannot_import_engine_modules_directly(self):
        scripts = ROOT / 'Mods/BestiaryLens/Scripts'
        direct_require = re.compile(r"""\brequire\s*\(?\s*['"]sdk[./]engine[./]""")
        native_calls = re.compile(
            r"\b(?:StaticFindObject|StaticConstructObject|FindAllOf|RegisterHook|RegisterKeyBind|"
            r"ExecuteInGameThread(?:WithDelay)?|LoopInGameThreadWithDelay|FText|FName)\s*\("
        )
        domain_adapters = {scripts / 'sdk/domain' / name for name in ('game.lua', 'smoke.lua')}
        engine_directory = scripts / 'sdk/engine'
        for file in scripts.rglob('*.lua'):
            if engine_directory not in file.parents:
                with self.subTest(file=file.relative_to(scripts)):
                    source = file.read_text()
                    if file not in domain_adapters:
                        self.assertNotRegex(source, direct_require)
                    self.assertNotRegex(source, native_calls)

    def test_runtime_modules_are_listed_in_payload(self):
        release = module('package')
        mod = ROOT / 'Mods/BestiaryLens'
        require_module = re.compile(r"""\brequire\s*\(?\s*['"]([\w.]+)['"]""")
        for with_smoke in (False, True):
            sources = release.install_sources(with_smoke)
            for name, source in sources.items():
                if name.endswith('.lua'):
                    with self.subTest(with_smoke=with_smoke, file=name):
                        for dependency in require_module.findall((mod / source).read_text()):
                            self.assertIn('Scripts/' + dependency.replace('.', '/') + '.lua', sources)

    def test_smoke_files_are_development_only(self):
        release = module('package')
        production = release.install_sources()
        development = release.install_sources(with_smoke=True)
        self.assertEqual(production['Scripts/main.lua'], 'Scripts/main.lua')
        self.assertEqual(development['Scripts/main.lua'], release.SMOKE_ENTRY)
        self.assertIn('Scripts/smoke.test.lua', development)
        self.assertEqual(set(development) - set(production), set(release.SMOKE_FILES))
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            for source in (*release.PAYLOAD, *('Mods/BestiaryLens/' + p for p in development.values())):
                destination = root / source
                destination.parent.mkdir(parents=True, exist_ok=True)
                destination.write_bytes((ROOT / source).read_bytes())
            with zipfile.ZipFile(release.build(root)) as archive:
                for source in (*release.SMOKE_FILES, release.SMOKE_ENTRY):
                    self.assertNotIn('Mods/BestiaryLens/' + source, archive.namelist())
                self.assertNotIn(b'smoke', archive.read('Mods/BestiaryLens/Scripts/main.lua'))
                self.assertNotIn(b'smoke', archive.read('Mods/BestiaryLens/Scripts/sdk/domain/game.lua'))

    def test_installed_entries_bind_configured_keys(self):
        lua = shutil.which('lua')
        if not lua:
            self.skipTest('local Lua is unavailable')
        release = module('package')
        mod = ROOT / 'Mods/BestiaryLens'
        for with_smoke in (False, True):
            with self.subTest(with_smoke=with_smoke), tempfile.TemporaryDirectory() as tmp:
                root = pathlib.Path(tmp)
                for name, source in release.install_sources(with_smoke).items():
                    destination = root / name
                    destination.parent.mkdir(parents=True, exist_ok=True)
                    destination.write_bytes((mod / source).read_bytes())
                script = """
package.path = './Scripts/?.lua'
Key = { F6 = 1, F7 = 2, F8 = 3 }
local keys = {}
RegisterKeyBind = function(key) keys[#keys + 1] = key end
LoopInGameThreadWithDelay = function() end
local config = require('config')
config.keys.toggleCard = 'F8'
config.keys.openJournal = 'F6'
if withSmoke then require('smoke.config').runKey = 'F7' end
dofile('./Scripts/main.lua')
assert(table.concat(keys, ',') == (withSmoke and '1,3,2' or '1,3'))
"""
                subprocess.run(
                    [lua, '-'], cwd=root, check=True,
                    input=f'local withSmoke = {str(with_smoke).lower()}\n' + script, text=True,
                )

    def test_deploy_preserves_other_mods_and_backs_up_previous_version(self):
        deploy = module('deploy')
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            (root / 'UE4SS-settings.ini').write_text('unchanged')
            old = root / 'Mods/BestiaryLens/Scripts/main.lua'
            old.parent.mkdir(parents=True)
            old.write_bytes(b'old')
            other = root / 'Mods/Other/enabled.txt'
            other.parent.mkdir()
            other.write_bytes(b'keep')
            payload = {'Scripts/main.lua': 'bmV3', 'enabled.txt': ''}
            report = deploy.install(root, payload)
            self.assertEqual(old.read_bytes(), b'new')
            self.assertEqual((pathlib.Path(report['backup'])/'Scripts/main.lua').read_bytes(), b'old')
            self.assertEqual(other.read_bytes(), b'keep')
            self.assertEqual((root/'UE4SS-settings.ini').read_text(), 'unchanged')
            self.assertTrue(report['verified'])

    def test_deploy_rejects_path_escape(self):
        deploy = module('deploy')
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            (root / 'UE4SS-settings.ini').touch()
            with self.assertRaises(ValueError):
                deploy.install(root, {'../escape': ''})
            self.assertFalse((root / 'escape').exists())

if __name__ == '__main__':
    unittest.main()
