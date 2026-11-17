#!/usr/bin/env bash
set -euo pipefail

tag="${1:?Usage: tools/verify-github-release.sh TAG}"
repository="${GITHUB_REPOSITORY:-}"
[[ -n "$repository" ]] || { echo 'GITHUB_REPOSITORY is required' >&2; exit 1; }
if [[ ! "$tag" =~ ^v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$ ]]; then
    echo "Release tag must use vMAJOR.MINOR.PATCH: $tag" >&2
    exit 2
fi
version="${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.${BASH_REMATCH[3]}"
package="BestiaryLens-${version}.zip"
checksum="${package}.sha256"

state="$(gh release view "$tag" --repo "$repository" --json isDraft,isPrerelease \
    --jq 'if .isDraft == false and .isPrerelease == false then "published" else "not-published" end')"
if [[ "$state" != published ]]; then
    echo "GitHub release $tag is a draft or prerelease; refusing Nexus publication." >&2
    exit 1
fi

asset_names="$(gh release view "$tag" --repo "$repository" --json assets --jq '.assets[].name')"
grep -Fxq "$package" <<< "$asset_names" || {
    echo "GitHub release $tag is missing $package; refusing Nexus publication." >&2
    exit 1
}
grep -Fxq "$checksum" <<< "$asset_names" || {
    echo "GitHub release $tag is missing $checksum; refusing Nexus publication." >&2
    exit 1
}

expected_package="release-assets/$package"
expected_checksum="release-assets/$checksum"
expected_notes='release-notes/release-notes.md'
for file in "$expected_package" "$expected_checksum" "$expected_notes"; do
    [[ -s "$file" ]] || { echo "Required CI release input is missing: $file" >&2; exit 1; }
done

temp_dir="$(mktemp -d)"
trap 'rm -rf "$temp_dir"' EXIT
gh release download "$tag" --repo "$repository" --pattern "$package" --dir "$temp_dir"
gh release download "$tag" --repo "$repository" --pattern "$checksum" --dir "$temp_dir"
cmp "$expected_package" "$temp_dir/$package"
cmp "$expected_checksum" "$temp_dir/$checksum"
gh release view "$tag" --repo "$repository" --json body --jq '.body' > "$temp_dir/release-notes.md"
python3 - "$expected_notes" "$temp_dir/release-notes.md" <<'PY'
from pathlib import Path
import sys

def normalize(text):
    return text.replace('\r\n', '\n').rstrip('\n')

expected = normalize(Path(sys.argv[1]).read_text(encoding='utf-8'))
actual = normalize(Path(sys.argv[2]).read_text(encoding='utf-8'))
if actual != expected:
    raise SystemExit('Published GitHub release notes differ from CI release notes; refusing Nexus publication.')
PY

echo "Published GitHub release $tag assets and notes match the verified CI outputs."
