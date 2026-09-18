#!/usr/bin/env bash
# Graph lint and catalog for one brain. Wikilinks [[name]] are the edges of the graph.
#
# Usage: graph.sh <project-id> [check|catalog|all]   (default: all)
#   check   : broken links, orphan notes, duplicate names, missing frontmatter or "## Conexoes"
#   catalog : regenerate <brain>/catalog.md (one line per note: tipo, resumo, tags, links in/out)
# Exit code 1 when broken links or duplicate names exist, so an AI can act on it.
set -euo pipefail

BRAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ID="${1:?usage: graph.sh <project-id> [check|catalog|all]}"
MODE="${2:-all}"
BRAIN_PATH="$BRAINS_DIR/$PROJECT_ID"
[ -d "$BRAIN_PATH" ] || { echo "brain not found: $BRAIN_PATH"; exit 1; }

cd "$BRAIN_PATH"
work_dir="$(mktemp -d)"
trap 'rm -rf "$work_dir"' EXIT

# README.md files are folder guides with template placeholders: not nodes of the graph.
find . -name '*.md' ! -name 'catalog.md' ! -name 'README.md' | sed 's|^\./||' | sort > "$work_dir/files"

# Drop fenced code blocks, HTML comments and inline code before extracting links,
# so template placeholders and examples are not counted as edges.
linkable_text() {
  awk '
    /^```/ { in_fence = !in_fence; next }
    in_fence { next }
    { gsub(/<!--[^>]*-->/, ""); gsub(/`[^`]*`/, ""); print }
  ' "$1"
}

# name -> path map and duplicate basenames
while IFS= read -r file; do
  printf '%s\t%s\n' "$(basename "$file" .md)" "$file"
done < "$work_dir/files" > "$work_dir/names"
cut -f1 "$work_dir/names" | sort | uniq -d > "$work_dir/dups"
# catalog.md is generated, so [[catalog]] is always a valid target
{ cut -f1 "$work_dir/names"; echo catalog; } | sort -u > "$work_dir/known"

# edges: source path <TAB> target name (cross-project links with "/" are ignored)
while IFS= read -r file; do
  { linkable_text "$file" | grep -o '\[\[[^]]*\]\]' || true; } \
    | sed -e 's/^\[\[//' -e 's/\]\]$//' -e 's/[|#].*$//' \
    | { grep -v '/' || true; } \
    | while IFS= read -r target; do
        [ -n "$target" ] && printf '%s\t%s\n' "$file" "$target"
      done
done < "$work_dir/files" | sort -u > "$work_dir/edges"

is_structural() {
  case "$(basename "$1")" in
    index.md|AGENTS.md|catalog.md) return 0 ;;
    *) return 1 ;;
  esac
}

incoming_count() {  # name
  awk -F'\t' -v n="$1" '$2 == n { c++ } END { print c + 0 }' "$work_dir/edges"
}

outgoing_count() {  # path
  awk -F'\t' -v f="$1" '$1 == f { c++ } END { print c + 0 }' "$work_dir/edges"
}

frontmatter_field() {  # path field
  awk -v key="$2" '
    NR == 1 && $0 != "---" { exit }
    NR > 1 && $0 == "---" { exit }
    NR > 1 && index($0, key ":") == 1 { sub("^" key ":[ ]*", ""); print; exit }
  ' "$1"
}

run_check() {
  local problems=0 broken=0 orphans=0 nofm=0 nocx=0
  echo "== graph check: $PROJECT_ID ($(wc -l < "$work_dir/files" | tr -d ' ') notes, $(wc -l < "$work_dir/edges" | tr -d ' ') links) =="

  if [ -s "$work_dir/dups" ]; then
    echo "-- duplicate note names (wikilinks become ambiguous):"
    while IFS= read -r name; do grep "^$name	" "$work_dir/names" | cut -f2 | sed 's/^/   /'; done < "$work_dir/dups"
    problems=1
  fi

  echo "-- broken links:"
  while IFS=$'\t' read -r source target; do
    if ! grep -qxF "$target" "$work_dir/known"; then
      echo "   $source -> [[$target]]"; broken=$((broken + 1))
    fi
  done < "$work_dir/edges"
  [ "$broken" = 0 ] && echo "   none"

  echo "-- orphan notes (no incoming link):"
  while IFS=$'\t' read -r name file; do
    is_structural "$file" && continue
    if [ "$(incoming_count "$name")" = 0 ]; then echo "   $file"; orphans=$((orphans + 1)); fi
  done < "$work_dir/names"
  [ "$orphans" = 0 ] && echo "   none"

  echo "-- notes without frontmatter:"
  while IFS= read -r file; do
    if [ "$(head -n 1 "$file")" != "---" ]; then echo "   $file"; nofm=$((nofm + 1)); fi
  done < "$work_dir/files"
  [ "$nofm" = 0 ] && echo "   none"

  echo "-- notes without '## Conexoes':"
  while IFS= read -r file; do
    if ! grep -q '^## Conexoes' "$file"; then echo "   $file"; nocx=$((nocx + 1)); fi
  done < "$work_dir/files"
  [ "$nocx" = 0 ] && echo "   none"

  echo "== summary: broken=$broken orphans=$orphans no_frontmatter=$nofm no_conexoes=$nocx duplicates=$(wc -l < "$work_dir/dups" | tr -d ' ')"
  [ "$broken" -gt 0 ] && problems=1
  return $problems
}

run_catalog() {
  local out="$BRAIN_PATH/catalog.md"
  {
    echo "---"
    echo "tipo: catalogo"
    echo "projeto: $PROJECT_ID"
    echo "resumo: Catalogo gerado por graph.sh. Uma linha por nota. Nao editar a mao."
    echo "tags: [$PROJECT_ID, catalogo]"
    echo "atualizado: $(date +%Y-%m-%d)"
    echo "---"
    echo
    echo "# Catalogo: $PROJECT_ID"
    echo
    echo "Gerado por \`graph.sh $PROJECT_ID catalog\`. Use para decidir o que ler; abra a nota pelo caminho."
    echo
    echo "| Nota | Tipo | Resumo | Tags | In | Out |"
    echo "| --- | --- | --- | --- | --- | --- |"
    while IFS=$'\t' read -r name file; do
      printf '| [[%s]] (%s) | %s | %s | %s | %s | %s |\n' \
        "$name" "$file" \
        "$(frontmatter_field "$file" tipo)" \
        "$(frontmatter_field "$file" resumo | sed 's/|/\\|/g')" \
        "$(frontmatter_field "$file" tags)" \
        "$(incoming_count "$name")" "$(outgoing_count "$file")"
    done < "$work_dir/names"
    echo
    echo "## Conexoes"
    echo "- [[index]]"
  } > "$out"
  echo "catalog written: $out"
}

status=0
case "$MODE" in
  check) run_check || status=$? ;;
  catalog) run_catalog ;;
  all) run_check || status=$?; run_catalog ;;
  *) echo "unknown mode: $MODE (use check, catalog or all)"; exit 2 ;;
esac
exit $status
