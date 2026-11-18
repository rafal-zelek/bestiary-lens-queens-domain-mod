# Agent guide

Bestiary Lens is a contextual bestiary card for **Queen's Domain**, delivered as a UE4SS Lua
mod. The Lua runtime lives in `Mods/BestiaryLens/Scripts`. Keep the README player-facing and concise; put development and release
procedures in `CONTRIBUTING.md` and `docs/`.

## Layout

- `Mods/BestiaryLens/` — the shipped mod. `enabled.txt` (intentionally empty) plus
  `Scripts/` contains the entry point, card modules, development smoke scenario and its internal SDK.
- `tools/` — developer Python and shell tools, plus `type_exporter.lua` (the SDK capture bridge
  installed on a device). Not shipped in the mod ZIP.
- `tests/` — Python `unittest` suite (`test_*.py`) and the Lua logic harness
  (`run.py` and the Lua files it loads).
- `types/` — tracked SDK source data: aggregated UE4SS/Lua declarations per game version.
- `docs/` — `development.md` (workflow, toolchain, SDK capture, packaging) and `releasing.md`.
- `build/` — all generated output (reports, packages, LuaLS logs). Git-ignored; never commit it.

## Mod architecture and data flow

- `main.lua` starts the shared bootstrap. Development deploys use a separate smoke entry point.
- `config.lua` names the card and journal keys, targeting thresholds, update timing and placement.
  The development smoke key lives in `smoke/config.lua`.
- `card_model.lua` composes and sanitizes the presentation data. Locked entries expose no
  enemy name, stats or drops. `card_view.lua` formats values and chooses presentation colors.
- `sdk/domain/` owns the typed contracts, targeting geometry and debounce, and card update
  sequence. Game objects are accessed through the declared domain operations.
- `sdk/engine/` owns UE4SS hooks, game and save access, native text, journal operations and UMG
  widgets. `sdk/domain/game.lua` is the composition point that imports engine adapters.

The adapter attaches to the gameplay HUD Tick. The lens refreshes on its configured interval,
checks the current aim against visible mesh bounds and line of sight, debounces the target,
and shows the corresponding card. The adapter reads the unlock status from the active save.
F9 toggles visibility. F10 opens the displayed target in the native journal.

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
2. A Lua 5.4 harness: compiles all runtime Lua files with `luac -p`, preloads the modules
   and runs the model, targeting, presentation, Lens and smoke assertions without starting UE4SS.

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
  and the load message in `bootstrap.lua`; the release tag must equal `v` + `VERSION`. The game SDK has
  its own version and must not be renamed to the mod version. See `docs/releasing.md`.
- Release ZIPs use explicit allowlists (`tools/package.py` `MOD_FILES`); `tools/deploy.py`
  uses the production list by default and adds the smoke runner only with `--with-smoke`. Development
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

## Engineering Workflow

OpenSpec owns requirements, design, specifications, task planning, and change lifecycle.
Discover available skills and select relevant ones autonomously. Do not invoke every skill
mechanically. Use research and domain-modeling during exploration when relevant, and
codebase-design for architecture. During implementation, use TDD where applicable, systematic
debugging for failures, and native subagents for independent tasks. Use worktrees when
concurrent changes require isolation. OpenSpec artifacts are the authoritative plan. Do not
generate competing plans with other frameworks. Review changes against both coding standards
and OpenSpec requirements. Compare the complete diff against the correct Git base, including
uncommitted work. Run applicable tests, lint, typecheck, and build checks. Verify implementation
against OpenSpec before archiving. Never claim success without execution evidence.
