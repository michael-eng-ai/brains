---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte AGENTS.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "AGENTS.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Contributor and agent guide

## Start here

Read `README.md`, `docs/HANDOFF.md`, `docs/ARCHITECTURE.md`, and `docs/ROADMAP.md` before changing scope. Read `docs/DATA-SOURCES.md` for provider work and `docs/DEPLOYMENT.md` before hosting work. Inspect current source and Git status; a handoff is context, not proof that an old test, push, or deployment still applies.

## Project contract

- Next.js App Router, TypeScript, React; use **Node.js 24** and npm with `package-lock.json`.
- Current product: a global nature-data explorer in **English, Portuguese, and Spanish**, with USGS earthquakes and a configuration-gated MET Norway forecast adapter.
- Geography is a curated 42-city catalog, not universal geocoding. Keep that limitation visible.
- Phase 2 events and Phase 3 advertising are **planned only**. Do not silently add those integrations, accounts, analytics, AI, or paid services.
- Infrastructure plus API planning target: **R$600/month, excluding advertising**. This is a design constraint, not purchase or provisioning permission.

## Commands

Run from the directory containing `package.json`:

```sh
npm ci --ignore-scripts
npm run dev
npm run lint
npm run typecheck
npm test
npm run build
npm run test:smoke
npm run test:e2e
npm run check
```

`npm run check` runs lint, typecheck, unit tests, build, and production HTTP smoke checks; run browser tests separately. `npm test` uses `node --import tsx --test tests/*.test.ts`; avoid changing it back to the `tsx` CLI, whose IPC setup can fail in restricted environments. For a production smoke test, run `npm run build` then `npm start`. Check Playwright configuration and installed browsers before browser tests. Do not run concurrent builds in the same `.next` directory. `test:smoke` requires a completed build and starts a server on port 3100 (`SMOKE_PORT` can override it). It makes no provider queries unless `GLD_LIVE_SMOKE=1` is explicitly set; keep live probes out of routine CI. `npm run format` runs Prettier across the repository, so review its scope before use.

## Code conventions

- Keep types in `lib/types.ts`, geography in `lib/geography.ts`, and user-facing copy in the typed EN/PT/ES dictionaries in `lib/i18n.ts`. Update all three locales together.
- Keep browser components out of server-only provider entry points. Use `@/` imports consistently with existing code and preserve strict TypeScript checks.
- Provider schema normalization, network transport, cache policy, and UI rendering are separate concerns. Add mockable adapter tests before changing their contracts.
- Use explicit units and ISO source timestamps. Keep null distinct from zero, and a valid empty dataset distinct from a failed request.
- Keep source links, attribution, accessibility labels, keyboard-accessible list alternatives, and narrow-screen behavior intact.
- Keep changes focused; do not overwrite another contributor's edits, reformat unrelated files, or update dependencies incidentally. Commit the lockfile when dependencies change.

## Data and security invariants

- Never fabricate live readings, manufacture publication timestamps, or present test fixtures as production data. Never imply emergency-alert capability, guaranteed realtime delivery, earthquake prediction, or an all-clear.
- Weather must make **zero MET Norway requests** when a real owner-supplied `MET_USER_AGENT` is absent/invalid. Never invent a contact or obtain it from unrelated private information. Mock identities belong only in isolated tests with a mock fetcher.
- Provider requests stay server-side. Accept only curated city IDs; do not add arbitrary upstream URLs or unrestricted coordinates to the public route.
- Preserve explicit stale/error/disabled states, timeouts, response limits, provider expiry/backoff, and conditional requests. Do not turn six-/twelve-hour precipitation into hourly precipitation.
- The Next fetch cache is a separate layer from the process-local cache and single-flight maps. Neither local map is a global rate limiter. Recheck aggregate traffic before scaling or adding cities/providers.
- No credentials, `.env.local`, tokens, private chats, personal contact details, or unrelated user files in source, logs, docs, screenshots, or CI artifacts. Keep `.env.example` empty and explanatory.
- These repository instructions do not grant permission to push, publish, deploy, accept terms, provision paid services, change accounts/security, or spend money. Obtain the authorization required for the current task; never infer it from historical handoff text.

## Definition of done

Run relevant checks after final edits and report passed, failed, and not-run checks separately. Keep unit fixtures offline; a mocked test is not a successful live-provider probe. Update the relevant docs and handoff with concrete changes and remaining blockers. For publication, record a verified remote commit and CI/deployment URL/status only after observing them. Never say “deployed” from a build, configuration file, or failed hosting call.

CI includes aggregate checks and a separate Chromium browser-smoke job; it is validation-only, with read-only repository permission and pinned official actions. Do not add secrets, publish steps, deploy jobs, `pull_request_target`, or write permissions as a workaround for a failure.

<!-- BEGIN:nextjs-agent-rules -->

## This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` (resolved from this file's directory; in monorepos the `next` package may not be visible from the repo root) before writing any code. Heed deprecation notices.

This block is written and re-added by `next dev` — verify at `node_modules/next/dist/server/lib/generate-agent-files.js`. Removing it from a diff only re-creates the uncommitted change; committing it with your work keeps the tree clean.

<!-- END:nextjs-agent-rules -->

## Browser release checks

Playwright starts a production build/server. Keep the same origin across its base URL and server URL; do not weaken production CSP to accommodate development HMR. Preserve the screen-reader content in event links and use semantic/scoped locators. The browser job retains synthetic-fixture test-results only for seven days; never add secrets, real account sessions, private data, or unrelated files to its artifacts. Review `docs/DEPENDENCIES.md` before changing the lint stack.

## Conexoes
- [[AGENTS]] - Regras de retomada e limites que precisam sobreviver entre sessoes.
- [[index]] - Mapa de conhecimento e entrada do projeto.
