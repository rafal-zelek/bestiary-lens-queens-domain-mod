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

The supported toolchain lives in `Dockerfile`: Python 3.13.9, Lua/luac 5.4.8,
Lua Language Server 3.19.2, StyLua 2.6.0 and actionlint 1.7.12. The Python base image is pinned by digest;
Lua, LuaLS, StyLua and actionlint downloads are verified against pinned SHA-256 values.
The Dockerfile supports Linux amd64 and arm64. Building needs network access;
all project commands run without network access after the image is built.
No host Python, Lua, Rust, Make or VS Code installation is required for Docker use.

### Docker and CI

Run from the repository root:

```sh
docker build -t bestiary-lens-ci .
docker run --rm --network none bestiary-lens-ci
```

The default command is `check`: format validation, active SDK integrity/configuration verification,
workflow validation, LuaLS diagnostics at Warning or higher, then Python and Lua tests. A failed gate stops the command and returns a nonzero exit status.
Checks analyze the source snapshot copied into the image; rebuild after source changes.
The same two commands also work outside GitHub Actions with Docker available.
The explicit `.dockerignore` allowlist excludes Git metadata, private notes, backups and build artifacts.

For current working-tree sources and persistent reports/artifacts, bind-mount the repository.
These examples use POSIX shell syntax (on Linux, optionally add `--user "$(id -u):$(id -g)"`
to avoid root-owned generated files):

```sh
docker run --rm --network none --mount "type=bind,source=$PWD,target=/workspace" bestiary-lens-ci check
docker run --rm --network none --mount "type=bind,source=$PWD,target=/workspace" bestiary-lens-ci format
docker run --rm --network none --mount "type=bind,source=$PWD,target=/workspace" bestiary-lens-ci package
```

`format` rewrites Lua sources using StyLua with `--verify` (re-parses and compares ASTs).
`format-check` only checks formatting. `package` creates the release ZIP and checksum;
it does not implicitly run `check`. For a release, run `check` successfully before `package`.
Reports, generated LuaLS standard-library definitions and release files are written under `build/`;
without a bind mount they live only
inside the container and are removed with it by `--rm`.

### Local commands

With the same tools installed in PATH, Python 3.9+ can run the shared command runner:

```sh
python3 -B tasks.py format
python3 -B tasks.py format-check
python3 -B tasks.py lint
python3 -B tasks.py test
python3 -B tasks.py check
python3 -B tasks.py package
```

The runner resolves the repository from its own path and does not depend on the caller's
working directory. Missing executables fail with exit code 127 and a Docker hint;
subprocess failures propagate to the caller. No shell is used to execute task commands.
The existing remote-Lua test mode remains available directly:

```sh
python3 -B tests/run.py --host YOUR_SSH_ALIAS
```

### Editor and type checking

Open this directory as the VS Code workspace. `.vscode/extensions.json` recommends
LuaLS (`sumneko.lua`) and StyLua (`JohnnyMorganz.stylua`); `.vscode/settings.json`
selects StyLua for Lua format-on-save. Recommendations do not install or disable extensions.
Disable EmmyLua, LuaHelper and EmmyLuaCodeStyle **for this workspace** if they are already enabled,
to avoid competing language servers and formatters. No global editor settings are changed.

LuaLS reads `.luarc.json` in both the editor and CLI; StyLua reads `stylua.toml` in both.
`.editorconfig` contains common text settings. Prefer the pinned CLI tool versions when
matching CI behavior; editor extensions manage their own binaries independently.

The SDK is aggregated under `types/queens-domain/<game-version>/bindings` and selected
by the version in `types/active.json`. There is exactly one directory per game version.
Each import unions files and named declarations; missing declarations remain available.
When a newer capture contains a different declaration with the same name, the newer declaration wins.
A class/enum declaration is replaced as a unit; method/function groups are merged independently,
including the overloads belonging to one capture. Generated stubs are normalized into stable
order rather than retained as byte-for-byte captures. Identical imports leave files and manifests untouched.
Only the active game version is indexed by LuaLS. Definitions are never executed by the game.

UI constructors and known class-default objects have explicit LuaCATS annotations.
Some host behavior differs from reflected/upstream declarations: `TMap:Find` returns a
parameter wrapper for the save counter, widget factories/slots require concrete class casts,
and numeric out-parameters are passed as tables. These boundaries are annotated locally;
the bounds call has one targeted diagnostic exception. Generated SDK declarations are not rewritten.
The target-selection UObject boundary remains opaque; the SDK is not proof of complete type coverage.

### Capturing and migrating game types

`sync_types.py` uses Python's standard library, SSH and Python 3 on the Steam Deck,
with the same explicit host/UE4SS-path convention as `deploy.py`.
The Docker image includes the local SSH client and CA certificates.
There is no stored device address, credential or installation path in the source.

Install the development bridge once, with the correct paths for your device:

```sh
python3 -B sync_types.py install-helper --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
```

`tools/type_exporter.lua` is installed as the isolated `BestiaryLensTypeExport` mod,
with deployment backup and SHA-256 readback. A first installation requires a normal game
startup; the script never restarts the game or requests a global hot reload.
Replacing an existing helper can be observed by the loader's existing auto-reload policy.
The bridge ignores stale request files at startup and accepts only `probe` and `export`
with a request identifier. It does not evaluate received Lua or shell code.
Control/status files live next to UE4SS, outside mod Scripts directories.

With the helper loaded and the game running:

```sh
python3 -B sync_types.py fetch --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
```

The command verifies a live game process and matching mapped binaries, probes the bridge,
backs up any previous dump, calls `GenerateLuaTypes()` on the game thread, waits for a fresh
completion acknowledgement, transfers the files and verifies their SHA-256 values.
It refuses forced asset loading. Coverage is **currently loaded reflected objects**;
loading another level or opening a menu can expose additional types.
If the installed UE4SS base API file is absent, it is fetched from the exact loader source commit;
this origin is recorded separately from runtime-generated files. The matching UE4SS MIT license
is retained under `types/licenses/` and included in the type archive.
The original remote dump and backups are preserved; a local transfer record stays under `build/types/`.

`<game-version>` is the installed game's `version.txt` label, not an inferred Steam BuildID
or semantic version. EXE/loader hashes do not select directories or archive names.
Captures of the same game version always update the same aggregate and retain declarations
that are absent from a later capture. Reimporting the same declarations is a no-op.

A new game version creates a new directory and switches LuaLS, retaining the prior game version.
Only these version switches produce a report under `types/migrations/`; individual captures
of one version do not create migration history. Other LuaLS library settings are preserved.
The archive is `build/types/QueensDomain-types-<game-version>.zip` plus its `.sha256` sidecar.
Run the full check after importing or switching versions. API/code changes remain a separate task.

```sh
python3 -B tasks.py types-verify
python3 -B tasks.py types-package
python3 -B sync_types.py activate --version 13540
```

`types/` contents are project source data and are **not ignored by Git**.
Only generated archives, transfer records and temporary tooling output belong in ignored `build/`.
To use the sync tool from Docker, override the runner entrypoint and supply SSH authentication
at runtime; credentials are not baked into the image. For example, with a POSIX shell and
key-based SSH configuration available in `~/.ssh`:

```sh
docker run --rm --entrypoint python3 \
  --mount "type=bind,source=$PWD,target=/workspace" \
  --mount "type=bind,source=$HOME/.ssh,target=/root/.ssh,readonly" \
  bestiary-lens-ci -B /workspace/sync_types.py fetch \
  --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
```

The fetch requires network access. Offline CI uses the checked-in SDK and never contacts the game.
The helper is a development tool and is excluded from the release mod package.

### Packaging and verification limits

`package.py` builds `build/BestiaryLens-0.1.0.zip` and its `.zip.sha256` sidecar
from an explicit allowlist. Tests, tooling/configuration files, private notes, logs,
backup data and Git metadata do not enter the ZIP.
The tests cover targeting geometry, hover timing, unlock gates, loot edge cases, native text identity,
widget names, presentation data, package exclusion, installation backup/preservation and CI runner failure handling.
They do not replace an in-game screenshot or a controller test.

All generated files belong in ignored `build/`. Keep machine-specific settings and private notes outside this repository.
Before publishing, review `git status --short --untracked-files=all` and the archive member list.

## GitHub Actions and releases

`.github/workflows/ci.yml` runs on pull requests, pushes to `main`, tags starting with `v`,
and manual **Run workflow**. It builds the Docker image, validates formatting and SDK integrity,
lints workflows and Lua, runs tests, then builds the mod and active SDK packages.
All project tooling, including actionlint and SSH, is in the Dockerfile.
The GitHub checkout/upload actions are pinned to commit SHAs; the workflow only needs
`contents: read` and does not publish a release, push a commit/tag or connect to the Steam Deck.

Successful runs expose two downloadable artifacts:

- `mod-<commit-sha>`: the installable mod ZIP and its SHA-256 sidecar.
- `sdk-<commit-sha>`: the active game-versioned types ZIP and its SHA-256 sidecar.

Packages are kept for 30 days; available LuaLS logs are uploaded even on failure and kept for 7 days.
Artifacts are build outputs, not GitHub Releases. To distribute a version permanently,
attach the package files to a release for the same checked tag/commit.

### Release procedure

1. Update the mod version consistently in `package.py` (`VERSION`), the README version/install
   package filename, and the version marker in `Mods/BestiaryLens/Scripts/main.lua`.
   The game SDK has its own game-version identity; do not rename it to the mod version.
2. Commit the source, workflow, aggregated SDK, manifests and version migration reports, and push to `main`.
   Wait for green CI on that commit. Do not commit generated files from `build/`.
3. Tag that exact commit with the version prefixed by `v` and push that tag. Example for the
   next version, after updating the files to `0.1.1`:

   ```sh
   git tag -a v0.1.1 -m "Bestiary Lens 0.1.1"
   git push origin v0.1.1
   ```

   The tag workflow checks that the tag exactly equals `v` + `package.py`'s `VERSION`;
   a mismatch fails before packages are uploaded. Existing tags should remain immutable.
4. Open the successful **CI run for the tag**, download `mod-<commit-sha>` and optionally
   `sdk-<commit-sha>`, and unpack the outer GitHub artifact ZIPs. The files inside are the
   actual versioned package ZIPs and `.sha256` sidecars; do not upload the outer artifact wrapper.
5. In the repository's **Releases → Draft a new release**, choose the existing tag,
   write or generate release notes, attach the mod ZIP and checksum, and optionally the
   separate SDK ZIP and checksum. Review as a draft, then **Publish release**.

GitHub's automatically supplied **Source code (zip/tar.gz)** downloads are repository archives,
not the installable mod package. Users should install `BestiaryLens-<version>.zip` from Assets.
The current workflow deliberately leaves the final release publication under your control;
pushing a tag only validates and builds artifacts.

## License

MIT; see `LICENSE`. This is an unofficial fan mod. Game assets and trademarks belong to their respective owners.
