# Bestiary Lens

Version **0.1.0** — a contextual bestiary card for **Queen's Domain** (UE4SS Lua mod).

Aim at an enemy to show its bestiary information in a small native-style card.
The card uses the game's own localized text, fonts, panel and item icons.

- Base HP, attack and XP; slash, pierce and impact resistance.
- Standard loot entries, icons, base drop rates and coin quantities when available.
- Undiscovered or excluded enemies reveal no name, stats or loot.
- **F9:** toggle the card. **F10:** open the displayed enemy's unlocked bestiary entry, including controller focus.
- Default acquisition delay: 0.30 s; release delay: 0.60 s.

The mod reads save progression but does not write save data or alter combat, loot or progression.
There is no network access, telemetry, developer preview, debug file channel or F6 binding in the mod.

## Requirements

- Queen's Domain, Windows game build (UE 4.27.2).
- A working UE4SS installation with Lua support and `LoopInGameThreadWithDelay`.
  The development baseline was UE4SS v3.0.1 Beta #0, commit `cdbc0b66`;
  compatibility with other UE4SS builds is unverified.
- Windows or Linux/Steam Deck through Proton. The release smoke test on Steam Deck confirms loader startup, HUD construction
  and native captions. A full post-migration hover/F10/controller test is pending; native Windows behavior is unverified.

UE4SS, the game and game assets are not included. Install and configure UE4SS separately.
The package contains only original Lua source and installation tools; it references assets already in the game.

## Install

Close the game before a normal installation or upgrade.
Find the directory containing `UE4SS-settings.ini` and `Mods` in your existing UE4SS installation.
It is commonly under `QueensDomain/Binaries/Win64/ue4ss`.

Copy **`Mods/BestiaryLens`** from this package into that directory's **`Mods`** folder.
The resulting layout must be:

```text
ue4ss/
  UE4SS-settings.ini
  Mods/
    BestiaryLens/
      enabled.txt
      Scripts/
        main.lua
        config.lua
        card_model.lua
        card_view.lua
```

Keep `enabled.txt` (it is intentionally empty). Launch the game normally.
Do not install multiple copies of this mod under different folder names.
If upgrading from a private prototype, disable/remove its folder first.
Do not copy this package's entire top-level directory into `Mods`.

### Optional deployment tool

Requires Python 3.9+; SSH deployment additionally requires OpenSSH and Python 3.9+ on the target.
The tool has no stored host or installation path. Supply your own target explicitly:

```sh
python3 deploy.py --ue4ss "/path/to/ue4ss"
python3 deploy.py --host YOUR_SSH_ALIAS --ue4ss "/path/on/target/to/ue4ss"
```

On Windows, use the corresponding Windows path for local installation.
The tool stages the complete mod outside `Mods`, backs up any previous `BestiaryLens` directory
under `ue4ss/bestiary-lens-backups/`, installs the new directory and verifies SHA-256 readback.
It preserves other mods and loader settings. Deployment reports stay in ignored `build/deployments/`.
The final directory switch is not a filesystem transaction; run with the game stopped.
The tool does not start/restart the game or enable hot reload.

## Configuration and controls

Edit `Mods/BestiaryLens/Scripts/config.lua` with the game closed.
`acquireDelay` and `releaseDelay` are seconds; `maxDistance` and `aimPadding` are world units.
`rightMargin` and `bottomMargin` place the card at the bottom right of the viewport.
Use finite nonnegative numbers. Defaults: 0.30, 0.60, 3000, 12, 24, 24 respectively.
F9 and F10 are defined at the bottom of `main.lua`; remap there if another mod uses them.
On Steam Deck, map controller back buttons to these keys through Steam Input if desired.

## Limitations

- Stats and drop percentages are base values, not current HP, actual damage or the next kill's effective odds.
  Luck, pity and game-specific overrides may change actual results.
- The adapter decodes two standard drop slots. Duplicate entries stay separate; rates are not summed.
  Custom drop logic or an unsupported schema may produce incomplete or unknown loot information.
- Targeting uses visible mesh bounds and an obstruction trace, not triangle-perfect hit detection.
- Missing native captions are omitted; the mod does not invent translations.
- F10 requires a living player, a displayed unlocked target and no open gameplay menu.
- UE4SS hot reload can hang a running game. A disk deployment or a `loaded` log line alone is not proof
  that the new UI is working. A normal stopped-game installation is the supported release workflow.
- Other game versions, long-session stability and every third-party mod combination are not exhaustively tested.

## Uninstall and recovery

Close the game, then remove `Mods/BestiaryLens` or remove its `enabled.txt` to disable it.
If you enabled it separately in `mods.txt`, disable that entry too.
For rollback after scripted deployment, with the game closed, move the current mod aside and restore
one complete backed-up directory as `Mods/BestiaryLens`. No save migration is required.

## Development and packaging

From the source repository, Lua 5.4 (`lua`, `luac`) and Python 3.9+ are needed for automated checks:

```sh
python3 -B tests/run.py
# Or run Lua checks on a machine that has Lua installed:
python3 -B tests/run.py --host YOUR_SSH_ALIAS
python3 -B package.py
```

`package.py` builds `build/BestiaryLens-0.1.0.zip` and its `.zip.sha256` sidecar
from an explicit allowlist. Tests, private notes, logs, backup data and Git metadata do not enter the ZIP.
The public repository additionally contains tests and `.gitignore`.
The tests cover targeting geometry, hover timing, unlock gates, loot edge cases, native text identity,
widget names, presentation data, package exclusion and installation backup/preservation.
They do not replace an in-game screenshot or a controller test.

All generated files belong in ignored `build/`. Keep machine-specific settings and private notes outside this repository.
Before publishing, review `git status --short --untracked-files=all` and the archive member list.

## License

MIT; see `LICENSE`. This is an unofficial fan mod. Game assets and trademarks belong to their respective owners.
