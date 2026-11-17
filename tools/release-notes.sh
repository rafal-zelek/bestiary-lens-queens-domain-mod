#!/usr/bin/env bash
set -euo pipefail

root="$(git rev-parse --show-toplevel)"
cd "$root"
tag="${1:?Usage: tools/release-notes.sh TAG}"
if [[ ! "$tag" =~ ^v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$ ]]; then
  echo "Release tag must use vMAJOR.MINOR.PATCH: $tag" >&2
  exit 2
fi
tag_commit="$(git rev-parse --verify "$tag^{commit}" 2>/dev/null || true)"
head_commit="$(git rev-parse HEAD)"
if [[ -z "$tag_commit" || "$tag_commit" != "$head_commit" ]]; then
  echo "Requested tag $tag does not point to HEAD" >&2
  exit 2
fi
output="build/release-notes.md"
override=".github/release-notes/$tag.md"
mkdir -p build
rm -f "$output"

if [[ -f "$override" ]]; then
  cp "$override" "$output"
else
  command -v git-cliff >/dev/null || {
    echo 'git-cliff is required to generate release notes; install it or run in the project toolchain.' >&2
    exit 127
  }
  previous_tag=
  shortest_distance=
  nearest_tags=()
  while IFS= read -r candidate; do
    [[ "$candidate" =~ ^v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$ ]] || continue
    [[ "$candidate" == "$tag" ]] && continue
    git merge-base --is-ancestor "$candidate" HEAD || continue
    distance="$(git rev-list --count "$candidate..HEAD")"
    (( distance > 0 )) || continue
    if [[ -z "$shortest_distance" ]] || (( distance < shortest_distance )); then
      previous_tag="$candidate"
      shortest_distance="$distance"
      nearest_tags=("$candidate")
    elif (( distance == shortest_distance )); then
      nearest_tags+=("$candidate")
    fi
  done < <(git tag --list)

  if [[ -z "$previous_tag" ]]; then
    echo "No previous semantic version tag before $tag; add a release-notes override or create a baseline tag." >&2
    exit 1
  fi
  if (( ${#nearest_tags[@]} > 1 )); then
    printf 'Ambiguous previous semantic version tag before %s: %s\n' \
      "$tag" "${nearest_tags[*]}" >&2
    exit 1
  fi

  temporary="$output.tmp"
  trap 'rm -f "$temporary"' EXIT
  git-cliff --config cliff.toml "$previous_tag..$tag" --output "$temporary"
  test -s "$temporary"
  mv "$temporary" "$output"
  trap - EXIT
fi

test -s "$output"
printf 'Release notes for %s: %s\n' "$tag" "$output"
