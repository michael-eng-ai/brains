---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/HANDOFF.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/HANDOFF.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Project handoff

A self-contained entry point for a developer or AI continuing this repository. No private conversation history is needed. Read [AGENTS.md](../AGENTS.md) first; use current source, tests, Git, and hosting evidence to verify status.

## Current verified state (2026-10-15)

- **PR #2 was merged during this continuation**, outside this session, at 21:25:17 UTC (18:25:17 America/Fortaleza). Current main is `897f3f31084ab34c9320b018b00e53a32818c2f8`; both jobs passed in [main CI run 38809731359](https://github.com/michael-eng-ai/global-live-data/actions/runs/38809731359). The earlier instruction to keep prepared without publishing remains historical evidence; the observed merge supersedes the open-PR status, but does not establish deployment authorization or a hosted release. Do not ask to merge PR #2 again.
- PR #1 is **merged**, not awaiting approval. Main commit: `fff8ff8d55717ef76dd4eeb91c2d4f7fbc6427a1`, merged at 20:23:30 UTC (17:23:30 America/Fortaleza). Both jobs passed in [main CI run 38801555512](https://github.com/michael-eng-ai/global-live-data/actions/runs/38801555512).
- Merged release-preparation branch: `codex/launch-readiness`, [PR #2](https://github.com/michael-eng-ai/global-live-data/pull/2), originally based on the PR #1 main revision. It reconciles release records, declares Node.js 24/Vercel build settings, and adds a configurable public contact section to all three privacy pages. Dependencies and provider logic remain unchanged. Prior configuration revision `b617147383b424315406f548de446b207ec01b47` passed [CI run 38802632700](https://github.com/michael-eng-ai/global-live-data/actions/runs/38802632700); documentation revision `890b189f84128eb06bd7dcd38bec49acfec03864` passed [run 38802943691](https://github.com/michael-eng-ai/global-live-data/actions/runs/38802943691). The contact implementation and subsequent documentation are now in main. The current documentation follow-up is `codex/continuation-handoff`; keep it separate from the already merged PR.
- Vercel browser access is resolved: after the owner authenticated, the existing app installation showed all repositories already selected, and reloading Vercel exposed `global-live-data`. This session made no GitHub permission changes. The connector's HTTP 403 is separate and was not retried. The correct import form is prepared but not submitted.
- The owner supplied an email and explicitly authorized publication and MET Norway identification. `MET_USER_AGENT` and `GLD_PUBLIC_CONTACT_EMAIL` are configured in the ignored `.env.local` and entered in the unsaved Vercel import form. A real local MET forecast passed validation; weather is not yet verified on a host. `GlobalLiveData/0.1` identifies the application, not an invented legal entity. The operator's legal identity and actual hosting/retention disclosures remain incomplete.
- No production URL or hosted end-to-end validation is confirmed. See [the concrete import settings and access steps](DEPLOYMENT.md#verified-import-preparation-2026-10-15).
- The local clone is in the directory named `global-live-data`. The original chat directory `site-busca-eventos` contained a different uncommitted project with no remote; it was left untouched. Work in the clone whose origin is the GitHub repository below.
- The owner authorized a separate project brain on 2026-10-15. It is linked locally by the ignored `.brain` marker; initialize/resume instructions are independent of the team repository. This GitHub documentation remains the portable handoff for contributors without access to that memory repository. No contacts or credentials belong in the brain.

## Continuation verification (2026-10-15)

- Re-fetched GitHub before edits: PR #1 remained merged at `fff8ff8`; PR #2 was still open at `1e93c1fe20e3d759735e251e75b29313c7f74dd6`. Both jobs passed in [CI run 38805969384](https://github.com/michael-eng-ai/global-live-data/actions/runs/38805969384). The pasted earlier handoff predates these changes.
- A later fetch observed PR #2 merged at `897f3f3` with passing main CI, as recorded above. Its merge contains the tested application. The documentation-only commit `9bec50b` was pushed after that merge to the old source branch; it is not part of PR #2. It is carried forward on `codex/continuation-handoff` for separate review. No merge or deployment was performed by this continuation.
- Re-ran `npm run check` on that unchanged application revision with Node.js 24.22.0 and npm 11.21.1: lint, types, all 30 unit tests, production build, and nine-route HTTP smoke passed. Operator variables were explicitly empty and `GLD_LIVE_SMOKE=0`; no new live-provider probe is claimed.
- All four `npm run test:e2e` Chromium cases also passed locally against production output at `http://127.0.0.1:3000`. Desktop 1280x720 and mobile 390x844 fixture screenshots were inspected: map, readable controls, and responsive layout rendered without a framework overlay. The tests covered magnitude filtering, city search, language/back navigation, keyboard Escape/focus, localized source/privacy pages, empty versus failed data, and API bounds. Hydration/CSP exception assertions passed. The only terminal warnings concerned `NO_COLOR`/`FORCE_COLOR` precedence. Earlier browser IPC failures do not apply to this run.
- Browser plugin not available; used the existing Playwright suite and installed its matching Chromium in the local browser cache. No project dependencies or lockfile versions changed.
- The shell default was Node.js 22 and an installed path named `node@24` reported Node.js 25. Verify `node --version` instead of trusting a directory name. The checks above used `npm exec --yes --package=node@24.22.0 --package=npm@11.21.1 --call 'npm run check'` (and the same wrapper for `npm run test:e2e`), without changing the repository dependency graph.
- Audit recheck: production audit passed with zero findings; full audit remains nonzero with the same five high findings in the development-only braces chain. No forced dependency change was made.
- Both operator variables are present in ignored `.env.local`; their values were not printed or copied. Setup instructions now preserve this file when resuming work. The deployment guide now correctly distinguishes local configuration and an unsaved import form from verified saved host configuration.
- Vercel's connector again returned an empty team list. GitHub lists no deployments for this repository; this alone does not prove that no hosting exists elsewhere. The browser import form was not reopened or submitted in this continuation. Hosted status, URL, provider behavior, and distributed cache behavior remain unverified. No new instruction to deploy was received in this continuation.

## Product direction

Build a global, multilingual data portal in **EN/PT/ES**. Phase 1 is nature data: earthquake reports and local forecasts. The current bounded geography is 42 curated cities worldwide. Phase 2 broadens the product to events; Phase 3 considers advertising. Those later phases have no implemented provider or monetization integration in this MVP.

The infrastructure/API design target is **R$600/month excluding advertising**. No automatic paid provisioning follows from that target. Detailed priorities and release gates are in [ROADMAP.md](ROADMAP.md).

## What is in the source

- Next.js 16.4.1 / React 19.3.1 / TypeScript, with Node.js 24 as the local and CI runtime.
- Shared typed EN/PT/ES copy, curated city/country/region search, timezone-aware display, earthquake filtering/sorting, responsive map and list components, and a forecast panel.
- A Node-runtime `GET /api/data?city=lisbon` route. Only the `city` parameter and known city IDs are accepted; omitted city defaults to Lisbon. Invalid/extra/repeated parameters are rejected.
- USGS past-day adapter plus MET Norway compact forecast adapter. Weather is intentionally disabled until the owner supplies a valid public identifying contact.
- Response schema checks, source attribution, genuine provider/retrieval/expiry timestamps, stale fallbacks, error/backoff behavior, Next fetch caching, and process-local request deduplication.
- Unit tests with injected provider I/O. Browser-test tooling and scripts are separate from the aggregate check; inspect the current suite before claiming browser coverage.
- Documentation and a validation-only GitHub Actions workflow. Source presence is not proof of passing checks or successful remote publication.

See [ARCHITECTURE.md](ARCHITECTURE.md) for file responsibilities and [DATA-SOURCES.md](DATA-SOURCES.md) for semantics and licensing.

## Start and validate

```sh
node --version                     # use Node.js 24
npm ci --ignore-scripts
[ -e .env.local ] || cp .env.example .env.local  # preserve existing configuration
npm run dev                       # http://localhost:3000
```

From another shell, or after stopping the dev server as appropriate:

```sh
npm run check                     # lint + types + unit tests + build + HTTP smoke
npm run test:e2e                   # separate browser checks
```

The unit runner is `node --import tsx --test tests/*.test.ts`. This avoids the `tsx` CLI IPC failure seen in restricted execution. Do not run multiple builds against the same working directory. For automated production HTTP smoke: `npm run build` then `npm run test:smoke`. This starts its own server on port 3100 (`SMOKE_PORT` override), validates nine localized routes plus redirects, invalid inputs, and headers, and does not query providers by default. Leave `GLD_LIVE_SMOKE` unset or `0` for routine runs. `npm start` is available for an interactive production check.

CI has two Node.js 24 jobs: aggregate checks (`npm ci --ignore-scripts`, then `npm run check`) and browser smoke (`npm ci --ignore-scripts`, `npx playwright install --with-deps chromium`, then `npm run test:e2e`). Both keep weather unconfigured; no custom secrets or deployments are included. The browser job uploads only test-results (synthetic-fixture screenshots, traces, and diagnostics), retained for seven days. These tests do not establish live-provider availability. CI runs on pull requests, main pushes, and manual dispatch; feature-branch pushes do not duplicate PR runs. See the verified run history below before reporting a full pass.

## Configuration and open launch requirements

- `MET_USER_AGENT`: server-side only. Requires a real application/operator identity and a public contact supplied and approved by the owner. Keep blank until that exists. A syntactically valid test string is not valid production identification.
- `GLD_PUBLIC_CONTACT_EMAIL`: server setting intentionally rendered as a support/privacy `mailto:` link in EN/PT/ES. The owner-approved value is stored in ignored configuration, not this document. The page does not infer it from the MET identifier. Browser fixture runs explicitly clear both contact variables.
- Supply real public operator/company and privacy/support details before public launch. Do not invent legal facts or reuse private chat information.
- Review aggregate provider traffic, host limits, privacy disclosures, and all three languages before release. A disabled-weather preview is acceptable if clearly labeled.

## Publication status

**No successful hosted deployment is verified in this handoff.** The Vercel connector encounters HTTP 403 for the intended team. The authenticated local browser now reaches the repository import form, with the correct team, main branch, build settings, and authorized contact variables prepared. It has not submitted the deployment. See [DEPLOYMENT.md](DEPLOYMENT.md), including the first-deployment Production caveat.

Verified publication: [michael-eng-ai/global-live-data](https://github.com/michael-eng-ai/global-live-data), merged [pull request #1](https://github.com/michael-eng-ai/global-live-data/pull/1), `main` at `fff8ff8d55717ef76dd4eeb91c2d4f7fbc6427a1`. Application revision `6c972b399ee303ba9fab6a4f7d40d41b6b55b286`, the subsequent documentation revision `a53b5d3fc8240f9403e52e34b742fcbcfa117bad`, and the merge revision each have successful CI. Earlier failed runs remain in GitHub history for diagnosis. GitHub publication does not establish a hosted deployment.

## Release verification record

Update these entries after verification; preserve failures and not-run checks rather than replacing them with generic “ready” language.

- Verified date: 2026-10-15. Validated application revision: `6c972b399ee303ba9fab6a4f7d40d41b6b55b286`. Later documentation-only revisions should be distinguished from application changes.
- GitHub publication: source, configuration, tests and documentation are integrated in `main` by PR #1, as verified above.
- Runtime used for the earlier cloud checks: Node.js v24.19.0 and npm 11.9.0. Local desktop continuation: Node.js v24.22.0 and npm 11.21.1, selected explicitly because the shell default is Node.js 22. The new runtime declarations preserve the existing Node.js 24 requirement.
- Last completed local aggregate check: passed lint, typecheck, all 30 unit tests, production build, and HTTP smoke for all nine localized production routes, redirect/404 behavior, API bounds, and security headers. The final aggregate rerun after the magnitude-label and antimeridian corrections passed on 2026-10-15. Type checking also explicitly generates Next route types for a clean checkout.
- Independent desktop verification on 2026-10-15: `npm ci --ignore-scripts` and `npm run check` passed against the merged application. No live provider calls were enabled by that aggregate check. Local browser tests were not run in this continuation; the main CI browser pass was inspected directly.
- Browser tests: all four Chromium cases passed remotely in run 38791512267, covering desktop filters/geography/language/back navigation, mobile layout and localized pages, empty-feed versus outage, and API bounds. Local browser execution was blocked by the sandbox; this does not invalidate the independently observed remote pass. Desktop/mobile fixture screenshots were reviewed, and the corrected map was verified in the final desktop rendering. Fixtures are synthetic test data, not live observations.
- Live USGS probe at 2026-10-15T18:44:17.832Z: status `ready`, 189 classified earthquakes, 2 other/unclassified records excluded; source publication and retrieval timestamps were both 2026-10-15T18:44:00Z. This is an observed snapshot, not a continuing availability guarantee.
- Weather at the same live probe: `not_configured`; no real operator identity supplied and no live forecast claimed.
- Independent local live probe at 2026-10-15T20:31:56.379Z using `GLD_LIVE_SMOKE=1 npm run test:smoke`: USGS `ready`, 187 classified earthquakes, 0 other/unclassified records excluded; publication and retained retrieval timestamps both 2026-10-15T20:31:46.000Z. Weather remained `not_configured`. This confirms one local provider response, not hosted availability, global caching, or an ongoing event count.
- Authorized MET live probe at 2026-10-15T20:46:48.299Z: Lisbon forecast `ready`, 91 points, source publication 19:18:24 UTC, retrieval 20:46:48 UTC, expiry 21:18:39 UTC. Two concurrent snapshots followed by a cached snapshot made one MET request and one USGS request; weather results matched. This validates a single process, not distributed quota control. No operator value was printed in the probe output.
- After the contact-page change, local `npm run check` passed (lint, types, 30 units, build, nine-route HTTP smoke). Chrome rendered EN/PT/ES contact pages and language navigation correctly; desktop and 390×844 mobile screenshots were inspected. The mobile Spanish dashboard showed the live forecast, units, model-forecast label, and distinct source/retrieval/expiry times. No application console errors were observed; an unrelated installed Chrome extension logged missing chunks. Screenshots are local QA artifacts outside Git. Hosted verification remains pending.
- Contact implementation revision `97df008347f97873d7574b070c827cb4fbe45ec6` passed both jobs in [CI run 38805279807](https://github.com/michael-eng-ai/global-live-data/actions/runs/38805279807), including all four Chromium tests. Local HTTP snapshots also confirmed weather `ready`, identical weather/source timestamps across concurrent requests, `Cache-Control: no-store`, and absence of operator configuration from API JSON. The local QA server was stopped after verification. Subsequent changes recording the owner's release hold are documentation-only.
- GitHub Actions: [run 38791512267](https://github.com/michael-eng-ai/global-live-data/actions/runs/38791512267) validates application revision `6c972b399ee303ba9fab6a4f7d40d41b6b55b286`; [run 38792071031](https://github.com/michael-eng-ai/global-live-data/actions/runs/38792071031) validates the subsequent documentation revision. [Main run 38801555512](https://github.com/michael-eng-ai/global-live-data/actions/runs/38801555512) passed both jobs on the merge revision. Recheck current CI after later changes.
- Hosting project, environment, URL, and status: not yet verified/deployed
- Hosting remains unverified. PR #2 is already integrated, as observed during this continuation; do not repeat that merge. If the owner explicitly resumes publication, verify the current main revision and actual Vercel target, deploy only within that instruction, and test the hosted instance. Public contact is supplied; legal operator identity and hosting/retention details still need completion before public launch. The earlier PR #1 merge gate is historical and superseded by the observed merge. Do not ask to merge PR #1 or authenticate GitHub again without new evidence.

## Suggested next steps

1. Read the verified revision/CI record above; preserve truthful unavailable/stale behavior and rerun checks after code changes.
2. Review the `codex/continuation-handoff` documentation follow-up and its current CI. PRs #1 and #2 are already merged; no application code changed in this follow-up.
3. Resume hosting publication only within a new explicit instruction; recheck the actual team/repository/main revision and form state then. A merge observed elsewhere is not deployment authorization. No further repository-access expansion was needed in the previously observed installation.
4. Verify MET Norway on the actual deployment using the authorized configuration; finish operator identity and accurate hosted privacy disclosures before public launch.
5. Consider later-phase work only after the Phase 1 release and operating-cost review. Do not add paid integrations to make a demo look complete.

## Browser CI correction and dependency audit (2026-10-15)

The first browser run used Next's development server on 127.0.0.1 and logged a blocked HMR-origin request. Next 16's development React debug channel depends on that connection, and an isolated invocation of its origin check reproduced HTTP 403 for this host combination. Inspection of `next/dist/client/app-index.js`, its React Server Components decoder, and the hot-reloader confirms that the development debug channel can defer hydration until HMR chunks arrive. Production avoids this development-only mechanism. Browser smoke now uses `next build` followed by `next start` to exercise deployed output with the unchanged production CSP. Exact place-text locators were also incorrect because event links include a screen-reader suffix; tests now target the table's event links while preserving the assertions and accessible content. Console/page errors, failure screenshots, and traces are collected for review. The subsequent complete pass is recorded above; retain the earlier failures as diagnostic history.

[Dependency audit details](DEPENDENCIES.md) record five dev-only high findings from one currently unpatched braces advisory, plus the verified production-only audit result. No force upgrade or unsupported peer override was applied.

## Map correction and remaining localization limitation

The first screenshots exposed horizontal filled strips where raw land rings crossed ±180°. The generator now uses `d3-geo` antimeridian clipping and retains the same equirectangular marker projection. Three regression tests cover exact regenerated geometry, bounded non-world-spanning segments including a Fiji seam fixture, and alignment with all 42 supported cities. A static SVG render and the final desktop screenshot from successful run 38791512267 were visually checked; the incorrect world-spanning strips are gone. `d3-geo` is development-only and its source/license are documented in [DATA-SOURCES.md](DATA-SOURCES.md). Both audits were repeated after this addition: production-only 0 findings; the same five dev-only high findings documented in [DEPENDENCIES.md](DEPENDENCIES.md).

Provider-generated explanatory notices can still appear in English within PT/ES pages. The surrounding status labels and portal copy are localized; translating bounded provider notices without changing their meaning is a known follow-up.

## Conexoes
- [[harvest-inventory]] - Fontes lidas, evidencias e lacunas da inicializacao.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
