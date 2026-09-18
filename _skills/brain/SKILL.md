---
name: brain
description: Persistent per-project second brain stored in ~/brains/<project-id>/ and shared by Claude Code, Codex, Cursor and any other AI. Modes - init (harvest everything already known about a project into the brain), resume (load context at the start of a session), save (handoff at the end of a session), link (attach a repository). TRIGGER when the user says brain, cerebro, segundo cerebro, memory bank, handoff, salvar contexto, retomar projeto, carga inicial, update memory bank, or when starting work in a repository that has a .brain file or a matching folder in ~/brains.
---

# brain: persistent project memory for any AI

The brain is plain Markdown on disk. No server, no database, no admin rights. Git carries it
between machines. Every AI reads the same files.

## 0. Locate the brain (all modes)

1. `BRAINS_DIR` = env var `BRAINS_DIR` if set; else `~/brains` (Windows: `%USERPROFILE%\brains`).
2. Project id = contents of `.brain` in the repository root; else the repository folder name.
3. `BRAIN_PATH` = `BRAINS_DIR/<project-id>/`.
4. If `BRAINS_DIR` is a git repo with a remote: `git -C BRAINS_DIR pull --rebase` before reading.
   If it fails, continue with the local copy and say the copy may be stale.
5. If `BRAIN_PATH` does not exist: tell the user and offer mode `init`. Do not invent context.

Read with your file tools. Do not rely on automatic loading: Codex and Cursor load
`AGENTS.md` natively, Claude Code loads `CLAUDE.md` and `CLAUDE.local.md`, but the brain
folder itself is only read when you read it.

## 0.0 Secrets rule (applies to every write, in every mode)

- Every secret, token, API key, password or connection string of a project lives in a `.env`
  file at the repository root, listed in `.gitignore`, never committed, never copied here.
- The brain stores only variable NAMES, where each is used and where to obtain the value.
  That table lives in `environment.md`.
- Whenever you discover a new variable the project reads, add its name to the table in
  `environment.md` and, if the repo has a `.env.example`, propose the matching empty line.
- Before every `save`, scan `BRAIN_PATH` (excluding nothing) for `ghp_`, `sk-`, `xox`, `AKIA`,
  `dapi`, `PAT=`, `password=`, `token=`, `secret=`, `Bearer `, and any 30+ character random
  string. Remove any value found and tell the user which file had it.

## 0.0.1 Professional conventions (commits, files, text)

- Commits and pull requests carry NO signature of any kind: no `Co-Authored-By`, no
  "Generated with", no AI name, no person name or e-mail in the message body. The repository
  already records authorship. Commit messages follow Conventional Commits
  (`feat:`, `fix:`, `docs:`, `chore:`, `refactor:`, `test:`), one logical change per commit,
  subject in English, imperative, under 72 characters.
- No emojis anywhere: not in notes, commit messages, file names, logs or scripts.
- Plain ASCII in file names (kebab-case, no accents). Note bodies may use the project's
  language, but stay free of decorative characters.
- Do not mention which AI wrote a note. Record the tool only in the `ia:` field of a session
  file, because that is operational metadata, not attribution.

## 0.1 Graph discipline (applies to every write, in every mode)

The brain is a graph, not a pile of files. Wikilinks `[[name]]` are the edges; `name` is the
file `name.md` anywhere under `BRAIN_PATH` (basenames must be unique). Obsidian renders the
same graph when `BRAINS_DIR` is opened as a vault.

1. Before writing a note, search the brain for related notes (grep the term and its synonyms
   in `BRAIN_PATH`). List what already exists; extend it instead of duplicating.
2. Every file has frontmatter with `tipo`, `projeto`, `resumo` (one line), `tags` (list,
   always including the project id) and `atualizado`. Shared tags are implicit edges.
3. Every file ends with `## Conexoes`: links out, each with a short reason. A link only counts
   when it is reciprocal: after adding `[[b]]` in `a`, add `[[a]]` in `b`'s `## Conexoes`.
4. A new note leaves with at least 2 outgoing links and 1 incoming link. `index.md` (the MOC)
   lists every note in its section, and every note links back to `[[index]]`.
5. One concept per note in `notes/` (a table, a DAG, a component, a domain term, a person or
   role). Decisions, traps, runbooks and sessions link to the concept notes they touch, and the
   concept notes link back. Facts go once, in the concept note; other notes link, not copy.
6. Prefer pointers over copies: `file:line`, commit, PR, `[[fonte]]`. Long verbatim material
   lives in `sources/` and is linked, never pasted into distilled notes.
7. After writing, run `BRAINS_DIR/graph.sh <project-id>` (Windows: `graph.ps1 -ProjectId <id>`).
   Fix broken links and orphans before `save`. The generated `catalog.md` (one line per note
   with tipo, resumo, tags, links in/out) is the cheap way to decide what to read: read the
   catalog, then open only the notes the task needs.

## 1. Mode `resume` (start of a session)

1. Read, in order: `index.md`, `current.md`, the newest file in `sessions/`, then `AGENTS.md`.
2. Read `catalog.md` to pick notes; open `decisions/`, `runbooks/`, `traps/` and `notes/` only
   as the task requires, following `[[links]]` from the notes you opened.
3. Compare the recorded state with reality: `git status --short`, `git branch --show-current`,
   `git log --oneline -5` in the project. Report divergences.
4. Reply with, at most, 10 lines: project, last handoff (date, AI, machine), current focus,
   next step recorded, divergences found, whether the brain copy is synced or possibly stale.
5. Then proceed with the user's task.

## 2. Mode `save` (end of a session, handoff)

Optimize for what the next session needs in order to act, not for a record. Finished work is
recoverable from git; decisions, dead ends and the next step are not.

1. Create `sessions/<YYYY-MM-DD>-<slug>.md` (max 60 lines) using the template in
   `sessions/README.md`: objective, state (branch, commit, clean or dirty), decisions and why,
   open options, what to avoid (failed attempts), concrete next step with paths and commands,
   and a self-contained starting prompt for the next session (one task, numbered steps).
2. Rewrite `current.md` (it is volatile). Point "Ultimo handoff" to the new session file.
3. New decisions go to `decisions/<YYYY-MM-DD>-<slug>.md`; new traps to `traps/trap-<slug>.md`;
   new procedures to `runbooks/`; new concepts to `notes/`; new references to `sources/`.
   Append one line to `sessions/historico.md`. Update `index.md` so every new file is listed.
   Apply the graph discipline (section 0.1): reciprocal links, tags, `## Conexoes`.
4. Do not turn a proposal into an approved decision, or a planned test into an executed one.
   Do not copy the whole conversation. Never write secrets, tokens, PATs, passwords or PII.
5. Run `graph.sh <project-id>` (or `graph.ps1`). Fix broken links and orphans it reports.
6. Sync: run `BRAINS_DIR/sync.sh "docs(<project-id>): session <YYYY-MM-DD>"` (Windows:
   `sync.ps1`). Report the files changed and whether the push reached the remote. If there is
   no remote or the push failed, say "publicacao pendente".

Also run `save` without being asked after a significant milestone: a PR opened, an
architecture decision, a trap discovered, a runbook verified.

## 3. Mode `init` (first load: harvest everything already known)

Goal: the brain must contain everything any AI already knows about this project, so that the
next session on any machine starts with full context. Read all sources below before writing.

### 3.1 Sources to harvest (in this order)

1. Project repository: `README*`, `CLAUDE.md`, `CLAUDE.local.md`, `AGENTS.md`, `GEMINI.md`,
   `.cursor/rules/`, `.cursorrules`, `.github/copilot-instructions.md`, `.clinerules`,
   `docs/`, every `*.md` in the root and one level up (monorepos often keep setup docs
   in the parent folder), CI config, `Makefile`, `pyproject.toml`, `package.json`,
   `requirements*.txt`, `databricks.yml`, `dbt_project.yml` and similar manifests.
2. Git: `git remote -v`, `git branch -a`, `git log --oneline -100`, `git log --format='%ad %s' --date=short -50`.
3. Claude Code user skills that mention the project: grep `~/.claude/skills/*/SKILL.md`
   for the project id, the client name and the repo name. These are usually the richest source.
4. Claude Code auto memory: grep `~/.claude/projects/*/memory/*.md` for the same terms.
5. Codex: `~/.codex/memories/`, `~/.codex/skills/*/SKILL.md`, `~/.codex/rules/`.
6. Cursor and Gemini user-level rules if present (`~/.cursor`, `~/.gemini/GEMINI.md`).
7. Session history the AIs already accumulated on this machine (this is where most of the
   acquired knowledge lives):
   - Claude Code transcripts: `~/.claude/projects/<slug>/*.jsonl` where `<slug>` is the
     project path with `/` replaced by `-` (list with `ls ~/.claude/projects/`). Also
     `~/.claude/history.jsonl` (prompt history with cwd).
   - Codex: `~/.codex/sessions/`, `~/.codex/archived_sessions/`, `~/.codex/session_index.jsonl`.
   - Cursor: chat history lives in a SQLite state database (`state.vscdb` under the Cursor
     user data folder); read it only if `sqlite3` is available, otherwise note it as a gap.
   These files are large. Do not read them whole and do not copy them into the brain. Mine
   them: extract user messages (`grep -o '"role":"user"[^}]*'` or `jq` when available),
   final assistant summaries, commands that were executed, errors that appeared more than
   once, and any sentence with "decid", "nunca", "sempre", "erro", "funcionou", "PR", "branch".
   Order by date. Turn what you find into `notes/`, `decisions/`, `traps/`, `runbooks/`,
   `current.md` and the timeline in `sessions/historico.md` (one line per session: date, tool,
   what was done, evidence). Mark everything mined from transcripts as
   `origem: transcricao <arquivo>` and link each new note to the concept notes it touches.
8. The current conversation, if the user already explained things in it.

### 3.2 What to write

- Run `link` first if `BRAIN_PATH` does not exist (creates the folder from `_template/`).
- `sources/`: copy each harvested instruction file or skill verbatim as
  `sources/<origin>-original.md` with frontmatter `tipo: fonte`, `origem: <path>`,
  `capturado_em: <date>`. Nothing is lost even if the distillation is imperfect.
- `AGENTS.md` (under 200 lines): what the project is, verified commands, conventions that
  differ from defaults, "never" rules with reasons, where secrets live (pointers only), pointers
  to the other files. Only what an AI cannot deduce by reading the code.
- `notes/`: one atomic note per recurring concept found in the sources (each table or dataset,
  each pipeline or DAG, each component, each domain term, each recurring person or role). This
  is where facts live; everything else links here.
- `project.md`, `architecture.md`, `environment.md`, `current.md`: distilled from the sources,
  linking to the concept notes instead of repeating them. Keep the project's own language.
- `environment.md` variables table: enumerate every environment variable the code reads
  (grep for `os.environ`, `getenv`, `process.env`, `${VAR}`, `env(`, `dbutils.secrets`,
  `System.getenv`, `.env` loaders) and every variable named in docs or CI. One row per name
  with where it is used, type, where to obtain the value, mandatory or not. Never the value.
  Check that `.env` is in the repo `.gitignore`; if not, warn the user. If the repo has no
  `.env.example`, propose one with the names and empty values (do not create it in the team
  repo without asking).
- `traps/`: one file per trap or gotcha found, `trap-<slug>.md`, linked to the concept note
  where it happens and to the runbook that avoids it.
- `decisions/`: one file per decision found in the sources or the git history, with date,
  who decided (if recorded), reason, rejected alternatives, evidence (PR, commit, message).
  If the reason is not recorded write "motivo nao registrado".
- `runbooks/`: one file per procedure that the sources describe step by step.
- `index.md`: the MOC. Every file listed in its section with a one-line hook; every file
  links back to `[[index]]`.
- `sessions/<date>-init.md`: what was harvested, from where, what is still missing. Add the
  first real line to `sessions/historico.md`.
- Finish with `graph.sh <project-id>` and fix everything it reports; commit `catalog.md`.

### 3.3 Rules

- Mark each statement as confirmed (verified in the repo or in a source), hypothesis, or
  pending. Do not invent decisions, people or commands.
- Every command listed under "verificados" was executed successfully in this session or is
  quoted from a source that says it was; otherwise mark "nao verificado".
- Secrets: apply section 0.0. Only names and pointers; run the scan before finishing.
- Do not modify files that belong to the team repository (its `CLAUDE.md`, `AGENTS.md`,
  `README`). Only `.brain`, `CLAUDE.local.md` and an `AGENTS.md` stub when none exists,
  all excluded via `.git/info/exclude` by `link`.
- After the harvest, propose thinning the original Claude skill to a pointer
  (max 40 lines: description, triggers, "read BRAIN_PATH/index.md first"). Only do it if the
  user asked to migrate; the verbatim copy is already in `sources/`.
- Finish with `save` (session file, index, sync) and a report: files created, sources used,
  gaps, and the exact `link` command for the other machines.

## 4. Mode `link` (attach a repository to its brain)

Run from the repository root:

- macOS / Linux: `~/brains/link.sh <project-id> [path]`
- Windows PowerShell: `& "$HOME\brains\link.ps1" -ProjectId <project-id> [-ProjectPath <path>]`

The script creates `BRAIN_PATH` from `_template/` if missing, writes `.brain`, writes an
`AGENTS.md` stub only if the repo has none, upserts a block in `CLAUDE.local.md` that imports
`BRAIN_PATH/AGENTS.md`, and adds those files to `.git/info/exclude`. No symlinks, no admin.

If the scripts cannot run, do the same steps manually with your file tools.

## 5. New machine (any OS, no admin)

1. `git clone <remote> ~/brains` (Windows: `%USERPROFILE%\brains`).
2. `~/brains/install.sh` or `& "$HOME\brains\install.ps1"`: appends the brains block to
   `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md` and copies this skill to
   `~/.claude/skills/brain` and `~/.codex/skills/brain`.
3. Clone the project, run `link`, open it in Claude Code or Codex, ask for `brain resume`.
