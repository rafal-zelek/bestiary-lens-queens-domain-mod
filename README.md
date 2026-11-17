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
The install ZIP contains the original Lua mod files, this README and the license; it references
assets already in the game.

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

### Optional deployment helper

A deployment helper is available to maintainers from a repository checkout. It is not included
in the installable release ZIP; the manual installation steps above need no extra tool.

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

## Download the package

For a published version, download **`BestiaryLens-<version>.zip`** from the GitHub Release assets.
The install ZIP contains the mod payload, user README and license; it does not contain development
tools such as `tools/deploy.py` or `tools/package.py`. The repository's automatically generated source archives
are not installable packages.
When a version has no published release yet, the successful GitHub Actions run provides a
`mod-<commit-sha>` artifact containing the mod ZIP and its SHA-256 sidecar.

Development, build, SDK capture, packaging and release procedures are documented in the repository's
`CONTRIBUTING.md` and `docs/` files. Those development documents are not part of the install ZIP.

## License

MIT; see `LICENSE`. This is an unofficial fan mod. Game assets and trademarks belong to their respective owners.
