<!-- brains:start -->
# Project brains (segundo cerebro por projeto)

- Persistent, tool-agnostic project knowledge lives in `{{BRAINS_DIR}}/<project-id>/`.
  Project id = contents of the `.brain` file in the repo root; if absent, the repo folder name.
- BEFORE the first task in any project: run the `brain` skill in `resume` mode
  (read `index.md`, `current.md`, newest file in `sessions/`). If `{{BRAINS_DIR}}/<project-id>/`
  does not exist, say so and offer `brain init`.
- AFTER significant work, or when the user says "salvar", "handoff", "atualizar cerebro",
  "update memory bank": run the `brain` skill in `save` mode.
- Sync: `git -C "{{BRAINS_DIR}}" pull --ff-only` before reading; commit and push after writing
  (helper: `{{BRAINS_DIR}}/sync.sh` or `sync.ps1`). If the pull or push fails, report it; never claim it synced.
- Never write secrets, tokens, PATs, passwords or PII into the brain. Store pointers to env files only.
<!-- brains:end -->
