#!/usr/bin/env bash
set -euo pipefail

usage() {
    echo "Usage: $0 check|write TAG" >&2
    exit 2
}

[[ $# == 2 ]] || usage
operation="$1"
tag="$2"
repository="${GITHUB_REPOSITORY:-}"
[[ -n "$repository" ]] || { echo 'GITHUB_REPOSITORY is required' >&2; exit 1; }
marker_name='nexus-upload-attempted.txt'

asset_names() {
    gh release view "$tag" --repo "$repository" --json assets --jq '.assets[].name'
}

has_marker() {
    local names
    if ! names="$(asset_names)"; then
        echo "Could not inspect release assets for $tag; refusing Nexus publication." >&2
        return 2
    fi
    grep -Fxq "$marker_name" <<< "$names"
}

case "$operation" in
    check)
        if has_marker; then
            echo "Nexus upload attempt marker already exists for $tag; inspect Nexus and recover manually." >&2
            exit 1
        else
            status=$?
            [[ $status == 1 ]] || exit "$status"
        fi
        ;;
    write)
        if has_marker; then
            echo "Nexus upload attempt marker already exists for $tag; refusing a second attempt." >&2
            exit 1
        else
            status=$?
            [[ $status == 1 ]] || exit "$status"
        fi

        temp_dir="$(mktemp -d)"
        temp_file="$temp_dir/$marker_name"
        trap 'rm -rf "$temp_dir"' EXIT
        {
            printf 'tag=%s\n' "$tag"
            printf 'commit=%s\n' "${GITHUB_SHA:-unknown}"
            printf 'run_id=%s\n' "${GITHUB_RUN_ID:-unknown}"
            printf 'attempted_at=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
        } > "$temp_file"
        if ! gh release upload "$tag" "$temp_file" --repo "$repository"; then
            echo "Could not upload Nexus attempt marker for $tag; refusing Nexus publication." >&2
            exit 1
        fi
        if has_marker; then
            :
        else
            status=$?
            if [[ $status -eq 1 ]]; then
                echo "Nexus attempt marker is not visible on release $tag; refusing Nexus publication." >&2
            fi
            exit 1
        fi
        ;;
    *)
        usage
        ;;
esac
