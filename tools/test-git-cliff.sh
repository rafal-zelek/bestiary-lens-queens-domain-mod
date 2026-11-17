#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
generator="$root/tools/release-notes.sh"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
repo="$tmp/repo"
mkdir -p "$repo/.github/release-notes" "$repo/tools"
cp "$root/cliff.toml" "$repo/cliff.toml"
cp "$generator" "$repo/tools/release-notes.sh"

git -C "$repo" init -q
git -C "$repo" config user.name ReleaseTest
git -C "$repo" config user.email release-test@example.invalid

git -C "$repo" commit --allow-empty -qm 'prototype: initial project setup'
git -C "$repo" tag v1.0.0
printf 'Initial release.\n' > "$repo/.github/release-notes/v1.0.0.md"

run_generator() {
  (cd "$repo" && bash tools/release-notes.sh "$(git -C "$repo" describe --tags --exact-match HEAD)")
}

run_generator
test "$(cat "$repo/build/release-notes.md")" = 'Initial release.'
echo 'PASS: initial release override'

git -C "$repo" commit --allow-empty -qm 'feat: display more enemy details'
git -C "$repo" commit --allow-empty -qm 'fix: avoid stale card after target switch'
GIT_COMMITTER_DATE='2001-01-01T00:00:00Z' git -C "$repo" tag -a v1.0.1 -m 'Bestiary Lens 1.0.1'
run_generator
grep -qi 'display more enemy details' "$repo/build/release-notes.md"
grep -qi 'avoid stale card after target switch' "$repo/build/release-notes.md"
grep -q '^## v1.0.1$' "$repo/build/release-notes.md"
! grep -q 'prototype: initial project setup' "$repo/build/release-notes.md"
echo 'PASS: generated notes cover commits since previous tag'

printf 'Curated release notes.\n' > "$repo/.github/release-notes/v1.0.2.md"
git -C "$repo" commit --allow-empty -qm 'fix: do not include overridden release'
git -C "$repo" tag v1.0.2
run_generator
test "$(cat "$repo/build/release-notes.md")" = 'Curated release notes.'
echo 'PASS: version-specific override'

no_baseline="$tmp/no-baseline"
mkdir -p "$no_baseline/.github/release-notes" "$no_baseline/tools"
cp "$root/cliff.toml" "$no_baseline/cliff.toml"
cp "$generator" "$no_baseline/tools/release-notes.sh"
git -C "$no_baseline" init -q
git -C "$no_baseline" config user.name ReleaseTest
git -C "$no_baseline" config user.email release-test@example.invalid
git -C "$no_baseline" commit --allow-empty -qm 'prototype: legacy history'
git -C "$no_baseline" commit --allow-empty -qm 'feat: first semantic release'
git -C "$no_baseline" tag -a v2.0.0 -m 'First semantic release'
if (cd "$no_baseline" && bash tools/release-notes.sh v2.0.0) >"$tmp/no-baseline.out" 2>&1; then
  echo 'Expected release note generation without a previous tag to fail' >&2
  exit 1
fi
grep -q 'No previous semantic version tag' "$tmp/no-baseline.out"
test ! -e "$no_baseline/build/release-notes.md"
echo 'PASS: missing baseline fails without including legacy POC commits'

leading_zero="$tmp/leading-zero"
mkdir -p "$leading_zero/.github/release-notes" "$leading_zero/tools"
cp "$root/cliff.toml" "$leading_zero/cliff.toml"
cp "$generator" "$leading_zero/tools/release-notes.sh"
git -C "$leading_zero" init -q
git -C "$leading_zero" config user.name ReleaseTest
git -C "$leading_zero" config user.email release-test@example.invalid
git -C "$leading_zero" commit --allow-empty -qm 'chore: baseline'
git -C "$leading_zero" tag v1.0.0
git -C "$leading_zero" commit --allow-empty -qm 'feat: invalid release test'
for invalid_tag in v01.0.1 v1.01.1 v1.0.01; do
  git -C "$leading_zero" tag "$invalid_tag"
  if (cd "$leading_zero" && bash tools/release-notes.sh "$invalid_tag") >"$tmp/leading-zero.out" 2>&1; then
    echo "Expected release tag $invalid_tag with a leading zero to fail" >&2
    exit 1
  fi
  grep -q 'Release tag must use vMAJOR.MINOR.PATCH' "$tmp/leading-zero.out"
done
echo 'PASS: leading-zero version components rejected'

ambiguous="$tmp/ambiguous"
mkdir -p "$ambiguous/.github/release-notes" "$ambiguous/tools"
cp "$root/cliff.toml" "$ambiguous/cliff.toml"
cp "$generator" "$ambiguous/tools/release-notes.sh"
git -C "$ambiguous" init -q
git -C "$ambiguous" config user.name ReleaseTest
git -C "$ambiguous" config user.email release-test@example.invalid
git -C "$ambiguous" commit --allow-empty -qm 'chore: shared baseline'
git -C "$ambiguous" tag v1.0.0
git -C "$ambiguous" tag v1.0.1
git -C "$ambiguous" commit --allow-empty -qm 'feat: ambiguous range'
git -C "$ambiguous" tag v1.0.2
if (cd "$ambiguous" && bash tools/release-notes.sh v1.0.2) >"$tmp/ambiguous.out" 2>&1; then
  echo 'Expected multiple equally-near previous tags to fail' >&2
  exit 1
fi
grep -q 'Ambiguous previous semantic version tag' "$tmp/ambiguous.out"
echo 'PASS: ambiguous previous tag rejected'
