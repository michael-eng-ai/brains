#!/usr/bin/env bash
# Detach a repository from its brain: removes the local files written by link.sh.
# The brain folder itself is kept (delete it manually if you really want to lose the knowledge).
#
# Usage: unlink.sh [project-path]   (defaults to the current directory)
set -euo pipefail

PROJECT_PATH="$(cd "${1:-$PWD}" && pwd)"
START_MARK='<!-- brains:start -->'
END_MARK='<!-- brains:end -->'
STUB_SIGNATURE='local stub, not committed'

rm -f "$PROJECT_PATH/.brain" && echo "removed: $PROJECT_PATH/.brain"

if [ -f "$PROJECT_PATH/AGENTS.md" ] && grep -q "$STUB_SIGNATURE" "$PROJECT_PATH/AGENTS.md"; then
  rm -f "$PROJECT_PATH/AGENTS.md" && echo "removed stub: $PROJECT_PATH/AGENTS.md"
fi

local_file="$PROJECT_PATH/CLAUDE.local.md"
if [ -f "$local_file" ]; then
  tmp_file="$(mktemp)"
  awk -v start="$START_MARK" -v end="$END_MARK" '
    index($0, start) { skip = 1 }
    !skip { print }
    index($0, end) { skip = 0 }
  ' "$local_file" > "$tmp_file"
  if [ -n "$(tr -d '[:space:]' < "$tmp_file")" ]; then
    mv "$tmp_file" "$local_file" && echo "removed block from: $local_file"
  else
    rm -f "$tmp_file" "$local_file" && echo "removed: $local_file"
  fi
fi

if git_dir="$(git -C "$PROJECT_PATH" rev-parse --absolute-git-dir 2>/dev/null)"; then
  exclude_file="$git_dir/info/exclude"
  if [ -f "$exclude_file" ]; then
    tmp_file="$(mktemp)"
    grep -vxF -e ".brain" -e "CLAUDE.local.md" -e "AGENTS.md" "$exclude_file" > "$tmp_file" || true
    mv "$tmp_file" "$exclude_file" && echo "cleaned: $exclude_file"
  fi
fi

echo "unlinked: $PROJECT_PATH"
