#!/usr/bin/env bash
# Install the "brains" integration into Claude Code and Codex user config.
# Idempotent. Requires no admin rights: only writes under $HOME.
#
# Usage: ./install.sh
# Env overrides: CLAUDE_CONFIG_DIR (default ~/.claude), CODEX_HOME (default ~/.codex)
set -euo pipefail

BRAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_HOME="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
START_MARK='<!-- brains:start -->'
END_MARK='<!-- brains:end -->'

render_block() {
  sed "s|{{BRAINS_DIR}}|$BRAINS_DIR|g" "$1"
}

# Replace (or append) the block delimited by the brains markers in a file.
upsert_block() {
  local target_file="$1" block_file="$2" tmp_file
  mkdir -p "$(dirname "$target_file")"
  touch "$target_file"
  tmp_file="$(mktemp)"
  awk -v start="$START_MARK" -v end="$END_MARK" '
    index($0, start) { skip = 1 }
    !skip { print }
    index($0, end) { skip = 0 }
  ' "$target_file" > "$tmp_file"
  # Trim trailing blank lines, then append the fresh block.
  sed -i.bak -e :a -e '/^\n*$/{$d;N;ba' -e '}' "$tmp_file" && rm -f "$tmp_file.bak"
  [ -s "$tmp_file" ] && printf '\n\n' >> "$tmp_file"
  render_block "$block_file" >> "$tmp_file"
  mv "$tmp_file" "$target_file"
  echo "updated: $target_file"
}

install_skill() {
  local tool_home="$1" dest="$1/skills/brain"
  rm -rf "$dest"
  mkdir -p "$dest"
  cp -R "$BRAINS_DIR/_skills/brain/." "$dest/"
  echo "installed skill: $dest"
}

upsert_block "$CLAUDE_HOME/CLAUDE.md" "$BRAINS_DIR/_global/claude.block.md"
install_skill "$CLAUDE_HOME"

upsert_block "$CODEX_HOME/AGENTS.md" "$BRAINS_DIR/_global/codex.block.md"
install_skill "$CODEX_HOME"

chmod +x "$BRAINS_DIR"/*.sh 2>/dev/null || true

echo "brains installed from $BRAINS_DIR"
echo "next: cd <project> && $BRAINS_DIR/link.sh <project-id>"
