# Agent guide

Bestiary Lens is a contextual bestiary card for **Queen's Domain**, delivered as a UE4SS Lua
mod. The runtime mod is three Lua files; everything else is build, test, SDK-capture and release
tooling around it. Keep the README player-facing and concise; put development and release
procedures in `CONTRIBUTING.md` and `docs/`.

## Layout

- `Mods/BestiaryLens/` — the shipped mod. `enabled.txt` (intentionally empty) plus
  `Scripts/{main,config,card_model,card_view}.lua`. This directory is the runtime payload.
- `tools/` — developer Python and shell tools, plus `type_exporter.lua` (the SDK capture bridge
  installed on a device). Not shipped in the mod ZIP.
- `tests/` — Python `unittest` suite (`test_*.py`) and the Lua logic harness
  (`run.py` plus `card.lua`, `model.lua`).
- `types/` — tracked SDK source data: aggregated UE4SS/Lua declarations per game version.
- `docs/` — `development.md` (workflow, toolchain, SDK capture, packaging) and `releasing.md`.
- `build/` — all generated output (reports, packages, LuaLS logs). Git-ignored; never commit it.

## Mod architecture and data flow

The three scripts have strict responsibilities; preserve the separation:

- `config.lua` — plain tunables table (`acquireDelay`, `releaseDelay`, `maxDistance`,
  `aimPadding`, `rightMargin`, `bottomMargin`). No logic.
- `card_model.lua` — pure data transform (`M.build`). No Unreal lookups, actors, saves or UI.
  Sanitizes input into the presentation contract; a locked/`known=false` input must not leak
  name, stats or drops.
- `card_view.lua` — presentation only. Constructs widgets and `render`s a model; no actor
  queries, targeting, unlock checks or journals.
- `main.lua` — the driver and the only place that touches Unreal. Holds all game-thread work.

Control flow in `main.lua`: `LoopInGameThreadWithDelay` polls for `FS_PlayerHUD_C`, then
`RegisterHook`s its Tick. Each tick (throttled to ~0.1s) runs `update`, which:
`selectEnemy` (every 0.5s rescans `EnemyBase_C`; scores via ray/AABB against visible mesh bounds
plus a `LineTraceSingle` obstruction check, not the actor root) → `stepHover` debounce
(acquire/release delays) → `unlocked` (read-only check of `ActiveSaveSlot.KilledEnemyCounts`) →
`presentationFor` → `Model.build` → `CardView:render`. F9 toggles visibility; F10 opens the
displayed enemy's journal entry (via `OpenPauseMenu` then a polling loop that selects the entry).

Localized captions are **captured from the game's own widget templates**
(`EnemyDescriptionBox_C`, `JournalMenu_C`) by walking their `WidgetTree`. Do not add a private
translation dictionary; missing native captions are simply omitted.

## Commands

The pinned toolchain (Python 3.13.9, Lua/LuaLS, StyLua, actionlint, git-cliff) lives in
`Dockerfile`. From the repository root:

```sh
docker build -t bestiary-lens-ci .          # needs network; rebuild after source changes
docker run --rm --network none bestiary-lens-ci            # default task: check
docker run --rm --network none bestiary-lens-ci <task>
```

`check` = `format-check` → `types-verify` → `workflow-lint` → `lint` (LuaLS at Warning+) →
`test`, stopping on first failure. `package` builds the mod release ZIP but does
**not** imply `check`. Reports and artifacts land in `build/`; without a bind mount they vanish
with the container. For working-tree sources and persistent output, bind-mount the repo; see
`docs/development.md` for exact flags.

Without Docker, with the same tools in PATH (Python 3.9+):

```sh
python3 -B tools/tasks.py <format|format-check|lint|test|check|package|types-verify|workflow-lint>
python3 -B tests/run.py --host YOUR_SSH_ALIAS   # run Lua tests over SSH
python3 tools/deploy.py --ue4ss "/path/to/ue4ss" [--host YOUR_SSH_ALIAS]
python3 -B tools/sync_types.py <install-helper|fetch|activate|verify> ...
```

`tools/tasks.py` resolves the repo from its own path (cwd-independent), runs subprocesses without
a shell, and returns 127 with a Docker hint when a tool is missing. Add new gates to the `TASKS`
tuple and `commands()` there.

## Testing approach

`tests/run.py` (invoked by the `test` task) does two things:

1. `unittest discover` over `tests/test_*.py` (Python tooling, packaging, workflow and SDK tests).
2. A Lua 5.4 harness: compiles every `Mods/BestiaryLens/Scripts/*.lua` with `luac -p`, then
   concatenates the scripts and `tests/{card,model}.lua`. It sets `BestiaryLens_TEST_MODE=true`,
   stubs the module loader via `package.preload`, and loads `main.lua`, which **returns a table
   of pure functions** (`unlocked`, `score`, `rayBox`, `stepHover`, `decodeDrops`, `excerpt`,
   `widgetName`, ...) instead of installing hooks when that flag is set. When you add a pure,
   testable helper to `main.lua`, export it in that block and add assertions to `tests/card.lua`
   or `tests/model.lua`.

Lua tests monkeypatch Unreal globals (`FindAllOf`, `FText`, ...) directly, so keep pure logic
free of Unreal calls to remain testable. UObject operations must run on the game thread
(`ExecuteInGameThread`, `RegisterHook`, `LoopInGameThreadWithDelay`); loader logs and automated
tests are not proof of in-game behavior.

## Style and type checking

- Lua: StyLua (`stylua.toml`) — 4-space indent, 120 columns, single quotes, no collapsed
  statements; `.editorconfig` matches for other files. `lint` runs LuaLS against `.luarc.json`
  at Warning level. `format.enable` is false in LuaLS; formatting is StyLua's job.
- `.luarc.json` lists the UE4SS runtime globals the mod uses under `diagnostics.globals`. New
  game-provided globals must be added there or LuaLS will flag them.
- `types/` is tracked source data. Imports merge declarations per game version: newer
  conflicts win, absent declarations are retained, classes/enums replace as a unit, method
  groups merge independently. Reimporting identical declarations is a no-op. Only the **active**
  game version (selected by `types/active.json`, currently `13540`) is indexed by LuaLS.
- The host bridge differs from reflected/upstream declarations in places (`TMap:Find` returns a
  `RemoteUnrealParam` wrapper, numeric out-parameters are passed as tables, widget
  factories/slots need concrete class casts). Annotate these boundaries locally with
  `---@cast`/`---@as`/`---@diagnostic`; never rewrite the generated SDK. The target-selection
  UObject boundary remains opaque — the SDK is not proof of complete type coverage.

## Gotchas

- Version identity: the mod version is duplicated in `tools/package.py` (`VERSION`), the README,
  and the load marker in `main.lua`; the release tag must equal `v` + `VERSION`. The game SDK has
  its own version and must not be renamed to the mod version. See `docs/releasing.md`.
- Release ZIPs use explicit allowlists (`tools/package.py` `MOD_FILES`); `tools/deploy.py`
  imports that same list. Adding a runtime file means adding it to `MOD_FILES`. Development
  tools, debug files and private data must never enter the mod ZIP. Verify members and checksums.
- Deploy with the game stopped; the helper stages outside `Mods`, backs up any prior mod under
  `ue4ss/bestiary-lens-backups/`, verifies SHA-256, and never starts/restarts the game.
- `AGENTS.md` and `CLAUDE.md` are listed in `.gitignore` (they are treated as local notes);
  `AGENTS.md` is nevertheless tracked.
- Do not hand-edit generated files in `build/`; regenerate via the tasks. `types/` is source, not
  build output, and is not ignored.

## Committing

- Commit every completed agent change separately, following the git-cliff Conventional Commit
  rules described below and after running the relevant checks.
- Commit on **small working achievements**: as soon as a focused change is implemented and its
  relevant checks pass, commit it. Do not batch unrelated edits into one commit or leave verified
  work uncommitted while starting the next task. Keep runtime, tooling, tests and docs as separate
  commits when they are separate concerns.
- Use granular Conventional Commits (`type(scope): imperative summary`, first line under 72
  characters, a body only when it adds reasoning). Include `Assisted-by: AI` as a trailer when the
  change was AI-assisted; do not name the vendor or tool. Keep the subject single-line and the
  trailer in the body, matching the existing history.
- `cliff.toml` drives git-cliff release notes: it requires Conventional Commit subjects
  (`require_conventional = true`), groups only `feat`, `fix`, `perf` and `refactor`, and skips
  `docs`, `test`, `ci`, `chore` and `build`. Trailers stay out of the subject so they never leak
  into generated notes; generated notes render `commit.message` only.
- A local `.githooks/commit-msg` hook enforces all of the above: it rejects non-conventional
  subjects, a missing or extra `Assisted-by: AI` trailer, and vendor/tool attribution. Install it
  once per clone with `cp .githooks/commit-msg .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg`.
- Stage only the files belonging to that change, run the checks appropriate to it, and report what
  was actually tested. Never commit generated `build/` output, private notes or configuration
  secrets. Review `git status --short --untracked-files=all` before committing.

  ```sh
  git add <files>
  git commit -m "docs: describe the agent workflow" \
             -m "Assisted-by: AI"
  ```

- Keep unpushed work off `main`: create a working branch for local commits and move any
  already-unpushed commits on `main` onto it, so `main` stays at `origin/main`.
- Committing is local. Pushing to `main`, tagging and publishing are separate release steps in
  `docs/releasing.md`; routine commits do not push branches or create tags.

## Repository conventions

- Run checks appropriate to the change and report what was actually tested; the full offline
  CI-equivalent gate is `docker run --rm --network none bestiary-lens-ci` after building the image.
