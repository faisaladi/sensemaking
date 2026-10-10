#!/usr/bin/env bash
# Verifies the protocol files bundled in the skill are byte-identical
# to the frozen artifacts listed in ARTIFACTS.sha256.
set -euo pipefail
cd "$(dirname "$0")/.."

skill_refs="plugins/sensemaking/references"
status=0

sha256sum -c --quiet ARTIFACTS.sha256 || status=1

while read -r expected path; do
  copy="$skill_refs/$(basename "$path")"
  if [[ ! -f "$copy" ]]; then
    echo "MISSING: $copy"; status=1; continue
  fi
  actual=$(sha256sum "$copy" | cut -d' ' -f1)
  if [[ "$actual" != "$expected" ]]; then
    echo "DRIFT: $copy does not match $path"; status=1
  fi
done < ARTIFACTS.sha256

[[ $status -eq 0 ]] && echo "OK: skill references match frozen artifacts"
exit $status
