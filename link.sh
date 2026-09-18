#!/usr/bin/env bash
# Attach a repository to its brain folder. No symlinks, no admin rights.
#
# Usage: link.sh <project-id> [project-path]   (project-path defaults to the current directory)
#
# What it does:
#   1. Creates ~/brains/<project-id>/ from _template/ if it does not exist.
#   2. Writes <project>/.brain with the project id.
#   3. Writes <project>/AGENTS.md stub only if the repo has none (Codex, Cursor, Copilot read it).
#   4. Upserts a block in <project>/CLAUDE.local.md that imports the brain (Claude Code reads it).
#   5. Adds those files to <project>/.git/info/exclude so the team repo is untouched.
set -euo pipefail

BRAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ID="${1:?usage: link.sh <project-id> [project-path]}"
PROJECT_PATH="$(cd "${2:-$PWD}" && pwd)"
BRAIN_PATH="$BRAINS_DIR/$PROJECT_ID"
TODAY="$(date +%Y-%m-%d)"
START_MARK='<!-- brains:start -->'
END_MARK='<!-- brains:end -->'
STUB_SIGNATURE='local stub, not committed'

render() {
  sed -e "s|{{BRAIN_PATH}}|$BRAIN_PATH|g" \
      -e "s|{{PROJECT_ID}}|$PROJECT_ID|g" \
      -e "s|{{DATE}}|$TODAY|g" "$1"
}

# 1. Brain folder from template.
if [ ! -d "$BRAIN_PATH" ]; then
  mkdir -p "$BRAIN_PATH"
  (cd "$BRAINS_DIR/_template" && find . -type f) | while read -r relative_file; do
    mkdir -p "$BRAIN_PATH/$(dirname "$relative_file")"
    render "$BRAINS_DIR/_template/$relative_file" > "$BRAIN_PATH/$relative_file"
  done
  echo "created brain: $BRAIN_PATH"
else
  echo "brain exists: $BRAIN_PATH"
fi

# 2. Project id marker.
printf '%s\n' "$PROJECT_ID" > "$PROJECT_PATH/.brain"
echo "wrote: $PROJECT_PATH/.brain"

# 3. AGENTS.md stub only when the repo has none.
created_agents_stub=0
if [ ! -e "$PROJECT_PATH/AGENTS.md" ]; then
  render "$BRAINS_DIR/_stubs/AGENTS.stub.md" > "$PROJECT_PATH/AGENTS.md"
  created_agents_stub=1
  echo "created stub: $PROJECT_PATH/AGENTS.md"
elif grep -q "$STUB_SIGNATURE" "$PROJECT_PATH/AGENTS.md"; then
  render "$BRAINS_DIR/_stubs/AGENTS.stub.md" > "$PROJECT_PATH/AGENTS.md"
  created_agents_stub=1
  echo "refreshed stub: $PROJECT_PATH/AGENTS.md"
else
  echo "kept team file: $PROJECT_PATH/AGENTS.md (global ~/.codex/AGENTS.md block handles discovery)"
fi

# 4. CLAUDE.local.md block.
local_file="$PROJECT_PATH/CLAUDE.local.md"
touch "$local_file"
tmp_file="$(mktemp)"
awk -v start="$START_MARK" -v end="$END_MARK" '
  index($0, start) { skip = 1 }
  !skip { print }
  index($0, end) { skip = 0 }
' "$local_file" > "$tmp_file"
render "$BRAINS_DIR/_stubs/CLAUDE.local.stub.md" >> "$tmp_file"
mv "$tmp_file" "$local_file"
echo "updated: $local_file"

# 5. Keep local files out of the team repository.
if git_dir="$(git -C "$PROJECT_PATH" rev-parse --absolute-git-dir 2>/dev/null)"; then
  exclude_file="$git_dir/info/exclude"
  mkdir -p "$(dirname "$exclude_file")"
  touch "$exclude_file"
  entries=".brain CLAUDE.local.md"
  [ "$created_agents_stub" = 1 ] && entries="$entries AGENTS.md"
  for entry in $entries; do
    grep -qxF "$entry" "$exclude_file" || echo "$entry" >> "$exclude_file"
  done
  echo "updated: $exclude_file"
else
  echo "not a git repository: skipped .git/info/exclude"
fi

echo "linked: $PROJECT_PATH -> $BRAIN_PATH"
echo "next: open the project in Claude Code or Codex and ask for 'brain init' (first time) or 'brain resume'"
