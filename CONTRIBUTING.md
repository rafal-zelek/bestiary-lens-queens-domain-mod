# Contributing

This repository's development workflow, pinned tools, checks, packaging, editor setup,
SDK capture and migration procedures are documented in [Development](docs/development.md).
Release and Nexus Mods publication steps are in [Releases](docs/releasing.md).

Before opening a change, run the relevant checks from the repository root. The full offline
CI-equivalent gate is `docker run --rm --network none bestiary-lens-ci` after building the
pinned toolchain image; see the development guide for commands and generated-file rules.

## Pull requests

Base pull requests on `main`. Reviewers and contributors discuss a pull request in its comments.
When a maintainer approves it, the maintainer's orchestrator merges it (squash); contributors do
not merge their own pull requests. Tags and releases need the maintainer's explicit go.

## AI-assisted development

Codex assisted with code, documentation and tests in this repository. Maintainers are responsible
for reviewing contributions, including AI-assisted changes. Contributions remain subject to the
repository's license and the same review process as other contributions.
