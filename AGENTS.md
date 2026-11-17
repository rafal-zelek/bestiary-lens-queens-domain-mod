# Agent guide

- Bestiary Lens is a Queen's Domain UE4SS Lua mod. Runtime files live in `Mods/BestiaryLens`; developer tools live in `tools/`.
- Keep the README player-facing and concise; put development and release procedures in `CONTRIBUTING.md` and `docs/`.
- Use the game's native localized text and assets; do not add a private translation dictionary.
- Run UObject operations on the game thread. Treat loader logs and automated tests as distinct from in-game validation.
- Preserve user changes and installation data. Deploy with the game stopped; the deployment helper backs up and verifies files and does not restart the game.
- The pinned toolchain is in `Dockerfile`. From the repository root, build with `docker build -t bestiary-lens-ci .` and run `docker run --rm --network none bestiary-lens-ci`.
- Rebuild the image after source changes, or use the bind-mount commands in `docs/development.md`. Run checks appropriate to the change and report what was actually tested.
- Local tasks use `python3 -B tools/tasks.py <task>`; see `docs/development.md` for tasks, SDK capture and generated-file rules.
- `types/` is tracked source data: imports merge declarations per game version, with newer conflicts winning and absent declarations retained. Verify SDK integrity after changes.
- Release ZIPs use explicit allowlists: the mod contains runtime files, README and license; the SDK contains bindings, manifest and required license. Verify members and checksums.
- Keep generated outputs in `build/`. Do not include development tools, debug files or private data in release packages.
- Follow `docs/releasing.md` for version alignment, tag checks and publication; a pipeline change alone does not require a version or runtime change.
- Use granular Conventional Commits and include `Co-authored-by: Codex <noreply@openai.com>` when creating commits.
