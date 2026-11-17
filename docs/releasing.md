# Releases

## GitHub Actions and releases

`.github/workflows/ci.yml` runs on pull requests, pushes to `main`, and manual **Run workflow**.
`.github/workflows/release.yml` runs on pushes of tags starting with `v`. Both use the shared
validation workflow, which runs three independent jobs in parallel: `code-quality` (StyLua, LuaLS,
SDK integrity and actionlint), `tests` (Python, Lua and release-notes generation) and `package`
(mod ZIP, checksum and release notes). A manual CI run against a tag validates it but never
publishes a release.
All project tooling, including actionlint, git-cliff and SSH, is in the Dockerfile.
GitHub actions are pinned to commit SHAs. CI uses `contents: read`; tag publication jobs receive
`contents: write` only where needed to create a GitHub Release or add the Nexus attempt marker.
The workflow does not push a commit/tag or connect to the Steam Deck.

Successful runs expose a downloadable package artifact:

- `mod-<commit-sha>`: the installable mod ZIP and its SHA-256 sidecar.

The package is kept for 30 days. After a version-tag push passes validation, the release workflow
creates a GitHub Release with the mod ZIP, its SHA-256 sidecar, and generated or curated release
notes. The SDK remains tracked source data.

### Release procedure

1. Update the mod version consistently in `tools/package.py` (`VERSION`), the README version/install
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

   The tag workflow checks that the tag exactly equals `v` + `tools/package.py`'s `VERSION`;
   a mismatch fails before package publication. The current `VERSION` is `0.1.0`, so `v1.0.0`
   will fail until the version is deliberately updated in all locations in step 1.
   Existing tags should remain immutable.
4. Push the tag and wait for its Release workflow run. The workflow checks out the tag with full history,
   packages that checkout, and generates notes for that same tag/commit. `.github/release-notes/<tag>.md`
   overrides generated notes when present. There are currently no version tags in the repository;
   the first release therefore needs a matching curated notes file or a prior semantic version baseline
   tag, otherwise note generation fails closed. The `tools/test-git-cliff.sh` offline fixture also runs in CI.
5. After validation succeeds, the workflow creates a published GitHub Release with the installable mod ZIP,
   matching `.zip.sha256` file and the notes as the release body. It verifies the checksum and release
   assets. The SDK is tracked in the repository, not published as a separate package.
   Source code ZIP/TAR assets are repository archives, not the installable mod package.

### Nexus Mods publication

The tag workflow can publish to an existing Nexus mod page after the GitHub Release is published.
Configure all three repository settings before enabling this path:

- Secret `NEXUSMODS_API_KEY`: Nexus Mods API key.
- Variable `NEXUSMODS_FILE_ID`: existing Nexus mod-file ID whose version history receives the new upload.
- Variable `NEXUSMODS_MOD_ID`: Nexus mod ID used for the changelog and page description.

If any one is empty, all Nexus publication, marker, and page-description steps are skipped; the GitHub
Release still publishes. The official [Nexus-Mods upload action](https://github.com/Nexus-Mods/upload-action)
is pinned to commit `98532f7670c27cbecc78fae03fa3e278147827e2`. It uploads a new version to the existing
file ID, updates the mod version string, and appends the generated/curated release notes as changelog
text. The changelog API accepts text; the workflow sends the release notes as-is and does not convert
Markdown to BBCode or claim a particular rendering. The `description` input for that action describes
the uploaded file version; it is deliberately left unset.

The page's separate full description is the BBCode in [`nexus-description.bbcode`](nexus-description.bbcode).
After the upload action succeeds, a separate `PATCH /mods/{id}` request sets only the page `description`;
it leaves the page summary unchanged. The API currently marks this operation Experimental and requires
the caller to be on the mod team or an admin. See the official
[Nexus Mods API specification](https://github.com/Nexus-Mods/Vortex/blob/master/packages/nexus-api-v3/schema/openapi.yaml)
and official [sample workflow](https://github.com/Nexus-Mods/API-Example).

Before starting the Nexus action, CI checks the GitHub Release for the separate asset
`nexus-upload-attempted.txt`, uploads that marker, then verifies that the asset is visible. Before this,
the workflow downloads the published GitHub Release's ZIP and checksum and compares their bytes to the
verified CI outputs; it also compares the release body to the CI notes, normalizing only CRLF and
terminal newlines. Drafts, prereleases, missing or differing assets, differing notes, and any marker
read/upload/verification error fail closed. An existing marker blocks the Nexus steps. The marker is
intentionally durable: the official action makes separate upload/version/changelog requests, and an
ambiguous failure could mean that some Nexus mutations already succeeded. The workflow does not retry
or promise exactly-once delivery; rerunning a tagged workflow cannot automatically try the Nexus upload
again, preventing a duplicate version or appended changelog.

For recovery, inspect the Nexus Files tab and the target file's version history, the mod changelog for
the release version, and the page description. Compare the uploaded file against the ZIP and checksum
attached to the GitHub Release. Reconcile any partial state manually through Nexus Mods or its API;
keep the marker in place and do not blindly rerun the tagged workflow. The workflow's marker is not part
of release notes or the mod ZIP.

GitHub's automatically supplied **Source code (zip/tar.gz)** downloads are repository archives,
not the installable mod package. Users should install `BestiaryLens-<version>.zip` from Assets.
Pushing a validated tag creates the GitHub Release automatically. Nexus publication is optional and
depends on the three configured credentials listed above.
