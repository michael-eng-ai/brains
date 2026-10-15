---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte README.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "README.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Global Live Data

A responsive, multilingual global-data MVP built with **Next.js 16.4.1, React 19.3.1, and TypeScript**. Browse earthquake activity and city forecasts in English, Portuguese, or Spanish.

## What it includes

- A curated directory of **42 cities**, with country and region filters, accent-insensitive search, coordinates, and local time zones.
- A map and earthquake list backed by the USGS rolling 24-hour feed, with time, magnitude, distance/radius, and sort controls.
- MET Norway forecast integration with individual forecast times and available weather values. **Weather is disabled until the operator supplies a genuine identifying `MET_USER_AGENT`.**
- Explicit provider states and timestamps. Unavailable values remain unavailable; no generated readings or sample values are presented as live data.
- Server-side provider requests, shared server caching, and per-process in-flight request deduplication.
- No paid data API, API key, visitor account, AI service, advertising, or analytics integration.

This is an informational explorer, **not an emergency-alert, earthquake-prediction, or life-safety service**. A blank result is not evidence that a place is safe. Follow the relevant local authorities for warnings.

## Run locally

Use **Node.js 24** and npm, matching the CI runtime and deployment host. `.nvmrc` and `package.json#engines` declare this major version; run `nvm use` if you use nvm. This meets Next.js's [minimum requirements](https://nextjs.org/docs/app/getting-started/installation#system-requirements).

```sh
cd global-live-data
npm ci --ignore-scripts
[ -e .env.local ] || cp .env.example .env.local
npm run dev
```

Open `http://localhost:3000`. The committed lockfile supports reproducible installs. Dependency lifecycle scripts are disabled during installation; the explicit check/build commands still execute the reviewed project and installed tooling. The development and production scripts bind to `0.0.0.0`; use a trusted network or firewall when running locally.

The setup command preserves an existing `.env.local`; do not replace an operator's configured file when resuming work. The app can start with an empty `.env.local`. Earthquake data requires outbound HTTPS to USGS. Weather will correctly show a configuration notice until enabled. An unavailable provider must not prevent the rest of the interface from loading.

### Optional weather configuration

1. Read the [provider requirements](docs/DATA-SOURCES.md#met-norway-locationforecast) and MET Norway's linked service terms.
2. The owner supplies an actual public application identity and a public operator contact page or business email they authorize sending to MET Norway.
3. Set `MET_USER_AGENT` in `.env.local` or the host's **server-side** environment settings, then restart/redeploy.

Do not copy a fictional contact, reuse private information from another context, or set this value under a `NEXT_PUBLIC_` name. Leave it blank until the owner provides the correct value. No weather API key or provider account is required.

Set `GLD_PUBLIC_CONTACT_EMAIL` separately to the support/privacy email authorized for public display. The EN/PT/ES privacy pages render that contact when configured. They never extract or expose the operator identifier from `MET_USER_AGENT`. This contact does not replace the remaining operator/legal and hosting disclosures.

`.env.local` is ignored by Git; keep credentials and private information out of the repository.

## Commands and checks

| Command              | Purpose                                                              |
| -------------------- | -------------------------------------------------------------------- |
| `npm run dev`        | Development server                                                   |
| `npm run build`      | Production build                                                     |
| `npm start`          | Serve a previously built production app                              |
| `npm run lint`       | ESLint                                                               |
| `npm run typecheck`  | TypeScript checks without emitting files                             |
| `npm test`           | Unit tests: `node --import tsx --test tests/*.test.ts`               |
| `npm run test:e2e`   | Playwright browser tests                                             |
| `npm run test:smoke` | HTTP checks against a previously built production server             |
| `npm run format`     | Format repository files with Prettier; review the resulting changes  |
| `npm run check`      | Lint, typecheck, unit tests, production build, and HTTP smoke checks |

Run `npm run check` and `npm run test:e2e` separately before release. `test:smoke` starts the production build on port 3100 (override with `SMOKE_PORT`) and checks all nine localized page routes, redirects, invalid locale/city handling, API input bounds, and security headers. It does not query live providers by default; leave `GLD_LIVE_SMOKE` unset or `0` for routine checks. The aggregate `check` command does not include browser tests. Playwright needs a compatible browser installed; if missing, follow its installation prompt or run `npx playwright install chromium` in the development environment. Inspect `playwright.config.*` for server/port settings before running the suite.

A successful build does not establish that a live provider is reachable. Test real responses separately when network access permits, and distinguish mocked/fixture tests from live-provider checks. Test weather's disabled state without inventing an operator identity. Do not repeatedly poll public providers to run tests.

## Project layout

- `app/`: App Router pages, styles, and server routes
- `components/`: Interactive UI
- `lib/geography.ts`: The complete curated city directory and distance/search helpers
- `lib/providers/`: Provider retrieval and response validation
- `lib/types.ts`: Shared data contracts, units, and source timestamps
- `tests/`: Unit and browser tests
- `docs/DATA-SOURCES.md`: Data semantics, source links, licensing, and limitations
- `docs/DEPLOYMENT.md`: Hosting instructions and production checklist

## Scope and limits

“Global” describes the provider coverage and distributed city selection. This is **not a comprehensive city database, address geocoder, or boundary dataset**. City coordinates are representative centers; a radius is straight-line distance from that point, not a municipality, travel time, or administrative boundary. Country and region filters narrow the city directory. They do not turn the underlying event feed into an official national catalogue.

The earthquake window is limited to the feed's last 24 hours. Event locations and magnitudes can be revised upstream. Weather values are forecasts rather than observations; later provider timesteps can be farther apart than one hour. Missing one-hour precipitation must not be filled with a six- or twelve-hour accumulation.

Caching reduces requests, but a page refresh is not a new source measurement. Provider publication time, retrieval time, and cache expiry have different meanings. There is no availability or latency guarantee.

## Hosting status and costs

PR #1 was merged into `main` on 15 October 2026 at 20:23:30 UTC as `fff8ff8d55717ef76dd4eeb91c2d4f7fbc6427a1`. PR #2 was subsequently merged as `897f3f31084ab34c9320b018b00e53a32818c2f8`, with both jobs passing in [main CI run 38809731359](https://github.com/michael-eng-ai/global-live-data/actions/runs/38809731359). **No hosted deployment is verified.** These files do not prove publication; follow the owner's authorization for account connections and release actions.

`vercel.json` selects Next.js and records the reviewed install/build commands. Node.js 24 is selected by `package.json#engines`. The authenticated browser now reaches the correct Vercel Pro team's import form, prepared with the build settings and authorized operator variables. It has not been submitted. See [the verified import preparation](docs/DEPLOYMENT.md#verified-import-preparation-2026-10-15).

A server-capable deployment is required. The app's provider proxy is incompatible with a static-only export. Start with the [deployment guide](docs/DEPLOYMENT.md), especially Vercel's first-deployment caveat.

Free source data does not make hosting unlimited or cost-free. Requests, functions, transfer, logs, and preview traffic can consume host quotas. In-memory single-flight is per process, not a distributed rate limiter. Review host limits and provider load before public promotion.

## Continue development

Start with [AGENTS.md](AGENTS.md) and the [handoff](docs/HANDOFF.md). The [architecture](docs/ARCHITECTURE.md) explains provider boundaries and caching; the [roadmap](docs/ROADMAP.md) separates the current nature-data MVP from planned events and advertising. The infrastructure/API planning target is R$600/month, excluding advertising; it does not authorize paid provisioning.

GitHub Actions has separate validation and Chromium browser-smoke jobs on Node.js 24. Validation includes lint, types, unit tests, build, and production HTTP smoke checks. Browser smoke installs Chromium and runs `npm run test:e2e`. It uses read-only repository permissions, pinned official actions, no custom secrets, and no deployment job. GitHub/hosting URLs and successful publication must be verified before being recorded in the handoff.

All four Chromium cases passed in [main CI run 38801555512](https://github.com/michael-eng-ai/global-live-data/actions/runs/38801555512), including the corrected magnitude label and map geometry. Browser execution was blocked by UNIX IPC restrictions in the earlier cloud environment; that historical limitation does not establish a restriction on another machine. Browser fixtures are synthetic, not current provider data. See [HANDOFF.md](docs/HANDOFF.md) for the verification record. CI runs on pull requests, main pushes, and manual dispatch, avoiding duplicate branch-push/PR runs.

## Browser verification and dependency status

Browser smoke builds and starts the production app; it does not use the HMR development server. Run `npm run test:e2e` after installing the configured Playwright browser. CI preserves test diagnostics and synthetic-fixture screenshots for seven days. These artifacts are verification data, not live-data screenshots.

See [dependency audit](docs/DEPENDENCIES.md) for the currently unpatched dev-only braces advisory and ESLint compatibility constraint. See [handoff](docs/HANDOFF.md) for the exact remote CI status; a successful aggregate build alone is not browser verification.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[project]] - Objetivo de produto e limites das fases.
