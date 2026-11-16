import importlib.util
import pathlib
import tempfile
import unittest
import zipfile

ROOT = pathlib.Path(__file__).resolve().parents[1]

def module(name):
    spec = importlib.util.spec_from_file_location(name, ROOT / (name + '.py'))
    obj = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(obj)
    return obj

class DistributionTests(unittest.TestCase):
    def test_package_excludes_unlisted_files(self):
        release = module('package')
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
