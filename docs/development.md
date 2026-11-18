# Development

## Development and packaging

The supported toolchain lives in `Dockerfile`: Python 3.13.9, Lua/luac 5.4.8,
Lua Language Server 3.19.2, StyLua 2.6.0, actionlint 1.7.12 and git-cliff 2.14.2.
The Python base image is pinned by digest; Lua, LuaLS, StyLua, actionlint and git-cliff downloads
are verified against pinned SHA-256 values.
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
python3 -B tools/tasks.py format
python3 -B tools/tasks.py format-check
python3 -B tools/tasks.py lint
python3 -B tools/tasks.py test
python3 -B tools/tasks.py check
python3 -B tools/tasks.py package
```

The runner resolves the repository from its own path and does not depend on the caller's
working directory. Missing executables fail with exit code 127 and a Docker hint;
subprocess failures propagate to the caller. No shell is used to execute task commands.
The existing remote-Lua test mode remains available directly:

```sh
python3 -B tests/run.py --host YOUR_SSH_ALIAS
```

### Deployment helper

Requires Python 3.9+; SSH deployment additionally requires OpenSSH and Python 3.9+ on the target.
The tool has no stored host or installation path. Supply your own target explicitly:

```sh
python3 tools/deploy.py --ue4ss "/path/to/ue4ss"
python3 tools/deploy.py --host YOUR_SSH_ALIAS --ue4ss "/path/on/target/to/ue4ss"
```

Both commands install the production payload by default. Add `--with-smoke` to install the
development entry point and `smoke.test.lua`. The test shortcut is configured in
`Scripts/smoke/config.lua`. The card and journal shortcuts are in `Scripts/config.lua`.
A default install after a smoke install replaces the active directory and backs up the prior copy.
On Windows, use the corresponding Windows path for local installation.
The tool stages the complete mod outside `Mods`, backs up any previous `BestiaryLens` directory
under `ue4ss/bestiary-lens-backups/`, installs the new directory and verifies SHA-256 readback.
It preserves other mods and loader settings. Deployment reports stay in ignored `build/deployments/`.
For this helper's complete directory replacement, the final switch is not a filesystem transaction;
the supported deployment procedure is to stop the game first. The tool does not start/restart
the game or enable hot reload. Individual Lua changes can instead be made while the game is
running when UE4SS hot reload is configured, but hot reload can hang the game; verify the
loaded version and behavior rather than assuming a file write took effect.

Before remote deployment, check access from the same environment that will run the helper:

```sh
ssh -o BatchMode=yes -o ConnectTimeout=8 -o StrictHostKeyChecking=yes YOUR_SSH_ALIAS 'id -un'
```

A route failure indicates a network reachability problem; an authentication failure means the
host was reached but did not accept the available credentials. Check the alias, network,
SSH identity and agent access in that environment; do not assume a previously working connection
is still available. For the helper's directory replacement, verify the game has exited;
do not stop or restart it without the user's approval. A successful SSH check does not establish
that the game is stopped.

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

`tools/sync_types.py` uses Python's standard library, SSH and Python 3 on the Steam Deck,
with the same explicit host/UE4SS-path convention as `tools/deploy.py`.
The Docker image includes the local SSH client and CA certificates.
There is no stored device address, credential or installation path in the source.

Install the development bridge once, with the correct paths for your device:

```sh
python3 -B tools/sync_types.py install-helper --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
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
python3 -B tools/sync_types.py fetch --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
```

The command verifies a live game process and matching mapped binaries, probes the bridge,
backs up any previous dump, calls `GenerateLuaTypes()` on the game thread, waits for a fresh
completion acknowledgement, transfers the files and verifies their SHA-256 values.
It refuses forced asset loading. Coverage is **currently loaded reflected objects**;
loading another level or opening a menu can expose additional types.
If the installed UE4SS base API file is absent, it is fetched from the exact loader source commit;
this origin is recorded separately from runtime-generated files. The matching UE4SS MIT license
is retained under `types/licenses/` and verified with the active SDK.
The original remote dump and backups are preserved; a local transfer record stays under `build/types/`.

`<game-version>` is the installed game's `version.txt` label, not an inferred Steam BuildID
or semantic version. EXE/loader hashes do not select directories.
Captures of the same game version always update the same aggregate and retain declarations
that are absent from a later capture. Reimporting the same declarations is a no-op.

A new game version creates a new directory and switches LuaLS, retaining the prior game version.
Only these version switches produce a report under `types/migrations/`; individual captures
of one version do not create migration history. Other LuaLS library settings are preserved.
Run the full check after importing or switching versions. API/code changes remain a separate task.

```sh
python3 -B tools/tasks.py types-verify
python3 -B tools/sync_types.py activate --version 13540
```

`types/` contents are project source data and are **not ignored by Git**.
Only generated mod archives, transfer records and temporary tooling output belong in ignored `build/`.
To use the sync tool from Docker, override the runner entrypoint and supply SSH authentication
at runtime; credentials are not baked into the image. For example, with a POSIX shell and
key-based SSH configuration available in `~/.ssh`:

```sh
docker run --rm --entrypoint python3 \
  --mount "type=bind,source=$PWD,target=/workspace" \
  --mount "type=bind,source=$HOME/.ssh,target=/root/.ssh,readonly" \
  bestiary-lens-ci -B /workspace/tools/sync_types.py fetch \
  --host YOUR_SSH_ALIAS --ue4ss "/path/to/ue4ss"
```

The fetch requires network access. Offline CI uses the checked-in SDK and never contacts the game.
The helper is a development tool and is excluded from the release mod package.

### Packaging and verification limits

`tools/package.py` (with `VERSION` defined in that file) builds `build/BestiaryLens-0.1.0.zip` and its `.zip.sha256` sidecar
from an explicit allowlist. The install ZIP contains the mod payload plus the user README and
`LICENSE`; it excludes smoke tests, their entry point, runner, and development tools.
The SDK, its manifest and UE4SS license are tracked source data, not a separate package.
Tests, tooling/configuration files, private notes, logs, backup data and Git metadata do not
enter the ZIP.
The tests cover targeting geometry, hover timing, unlock gates, loot edge cases, native text identity,
widget names, presentation data, package exclusion, installation backup/preservation and CI runner failure handling.
They do not replace an in-game screenshot or a controller test.

All generated files belong in ignored `build/`. Keep machine-specific settings and private notes outside this repository.
Before publishing, review `git status --short --untracked-files=all` and the archive member list.
