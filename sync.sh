#!/usr/bin/env bash
# Commit local brain changes, pull with rebase, push. Safe to run repeatedly.
#
# Usage: sync.sh ["commit message"]
# Exit codes: 0 synced or committed locally, 1 conflict or push failure (publication pending).
set -euo pipefail

BRAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$BRAINS_DIR"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "not a git repository: run 'git init' in $BRAINS_DIR first"
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -q -m "${1:-docs: brain update $(date +%Y-%m-%dT%H:%M)}"
  echo "committed locally"
else
  echo "nothing to commit"
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  echo "no remote configured: publication pending (git remote add origin <url>)"
  exit 0
fi

if ! git pull --rebase --quiet; then
  git rebase --abort 2>/dev/null || true
  echo "pull failed (conflict or offline): publication pending, resolve manually in $BRAINS_DIR"
  exit 1
fi

if git push --quiet; then
  echo "synced with origin"
else
  echo "push failed: publication pending"
  exit 1
fi
