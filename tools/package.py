#!/usr/bin/env python3
"""Build the release from an explicit allowlist, never from the working tree."""
import hashlib
from pathlib import Path
import zipfile

VERSION = '1.0.0'
MOD_FILES = (
    'enabled.txt', 'Scripts/main.lua', 'Scripts/bootstrap.lua', 'Scripts/config.lua',
    'Scripts/card_model.lua', 'Scripts/card_view.lua',
    'Scripts/sdk/domain/game.lua', 'Scripts/sdk/domain/lens.lua', 'Scripts/sdk/domain/targeting.lua',
    'Scripts/sdk/engine/card_widgets.lua', 'Scripts/sdk/engine/enemy_data.lua',
    'Scripts/sdk/engine/input.lua', 'Scripts/sdk/engine/journal.lua',
    'Scripts/sdk/engine/lens_runtime.lua', 'Scripts/sdk/engine/objects.lua',
)
SMOKE_FILES = (
    'Scripts/smoke.test.lua', 'Scripts/smoke/config.lua',
    'Scripts/sdk/domain/direction.lua', 'Scripts/sdk/domain/enemies.lua',
    'Scripts/sdk/domain/position.lua', 'Scripts/sdk/domain/runtime_menu.lua',
    'Scripts/sdk/domain/smoke.lua',
    'Scripts/sdk/engine/bestiary_runtime.lua', 'Scripts/sdk/engine/debug_hud.lua',
    'Scripts/sdk/engine/menu_bridge.lua',
)
SMOKE_ENTRY = 'Scripts/smoke/entry.lua'
PAYLOAD = tuple('Mods/BestiaryLens/' + name for name in MOD_FILES) + (
    'README.md', 'LICENSE')

def install_sources(with_smoke=False):
    # Map installed paths to repository sources for the selected install profile.
    sources = {name: name for name in MOD_FILES}
    if with_smoke:
        sources.update((name, name) for name in SMOKE_FILES)
        sources['Scripts/main.lua'] = SMOKE_ENTRY
    return sources

def build(root):
    root = Path(root)
    content = [(name, (root / name).read_bytes()) for name in PAYLOAD]
    target = root / 'build' / ('BestiaryLens-' + VERSION + '.zip')
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_suffix('.zip.tmp')
    with zipfile.ZipFile(temporary, 'w', zipfile.ZIP_DEFLATED) as archive:
        for name, data in content:
            info = zipfile.ZipInfo(name, date_time=(2026, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o100644 << 16
            archive.writestr(info, data)
    temporary.replace(target)
    sha = hashlib.sha256(target.read_bytes()).hexdigest()
    target.with_suffix('.zip.sha256').write_text(sha + '  ' + target.name + '\n')
    return target

if __name__ == '__main__':
    print(build(Path(__file__).resolve().parents[1]))
