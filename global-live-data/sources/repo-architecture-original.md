---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/ARCHITECTURE.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/ARCHITECTURE.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Architecture

## Runtime and boundaries

The MVP is a Next.js App Router application with React and strict TypeScript. The deployment needs a **Node.js 24 server-capable runtime**; it cannot be exported as a static-only site because it proxies and caches provider data. There is no database, visitor authentication, paid data API, AI API, advertising SDK, or analytics integration.

`package.json#engines.node` and `.nvmrc` select Node.js 24. `vercel.json` records the Next.js framework and reviewed install/build commands. These files prepare a Git import; they do not create a hosting project or establish publication.

Browser UI requests a same-origin snapshot for a curated city. The route validates the request, calls the server-only provider service, and returns normalized data plus provenance/status. Client-side event filters do not create distinct upstream queries.

## File map

| Area                                 | Responsibility                                                                        |
| ------------------------------------ | ------------------------------------------------------------------------------------- |
| `app/`                               | Pages, layouts, styles, and API route                                                 |
| `app/api/data/route.ts`              | Node route; validates curated city request; returns a no-store snapshot envelope      |
| `components/location-picker.tsx`     | Search and curated country/region selection                                           |
| `components/world-map.tsx`           | SVG geographic overview and event markers; list remains the accessible detail path    |
| `components/earthquake-activity.tsx` | Event results, filters, ordering, and hourly occurrence counts                        |
| `components/weather-panel.tsx`       | Forecast display and disabled/error/stale states                                      |
| `components/provider-status.tsx`     | Status and provider timestamp presentation                                            |
| `components/site-chrome.tsx`         | Shared navigation/footer                                                              |
| `lib/geography.ts`                   | 42 city centers, aliases, localized country names, approximate great-circle distance  |
| `lib/i18n.ts`                        | Typed EN/PT/ES dictionaries and locale formatting                                     |
| `lib/earthquakes.ts`                 | Pure filters, sorts, hourly counts, and map projection                                |
| `lib/types.ts`                       | City, provider result, earthquake, weather, and snapshot contracts                    |
| `lib/providers/index.ts`             | Server-only singleton service entry; never instantiate it per request                 |
| `lib/providers/query.ts`             | Allowlisted city-query parsing                                                        |
| `lib/providers/service.ts`           | Provider URLs, identity gate, cache configuration, pacing, and snapshot composition   |
| `lib/providers/http.ts`              | HTTPS fetch options, timeout/body cap, response checks, Retry-After, HTTP timing      |
| `lib/providers/schema.ts`            | Validate/normalize source JSON; preserve nulls, zeroes, intervals, and source times   |
| `lib/providers/cache.ts`             | Bounded process-local cache, in-flight deduplication, retries, and stale presentation |
| `tests/`                             | Unit/provider fixtures and Playwright browser/API checks                              |
| `scripts/smoke.mjs`                  | Production HTTP route/input/header checks; live provider probe is opt-in              |
| `scripts/generate-world-map.mjs`     | Development-time conversion of Natural Earth land geometry                            |
| `lib/world-paths.json`               | Committed generated SVG path data for the map                                         |
| `.github/workflows/ci.yml`           | Validation only; no publishing or deployment                                          |

Map geometry is bundled with the application rather than requested from a paid tile service. `node scripts/generate-world-map.mjs` reads `world-atlas/land-110m.json`, converts it with `topojson-client`, applies `d3-geo` equirectangular projection with antimeridian clipping, and writes `lib/world-paths.json`. All three packages are development dependencies; no map service is queried at runtime. Preserve provenance and licenses from [DATA-SOURCES.md](DATA-SOURCES.md#map-geometry-and-generation) when regenerating the committed asset.

## Request and data flow

1. A selected city ID reaches `GET /api/data?city=…`. A missing city uses Lisbon. Unknown IDs, arbitrary query keys, duplicate city keys, and oversized/invalid queries are rejected.
2. `getDataSnapshot` resolves the city and uses one module-level provider-service instance.
3. The service retrieves the single USGS rolling-day feed and, only if configured, the selected city's MET forecast concurrently.
4. Each adapter applies transport limits and schema normalization, producing `ProviderResult<T>`.
5. The route returns `Cache-Control: no-store` for the snapshot envelope so a browser/CDN does not mask status transitions. This does not disable the separate upstream fetch cache.
6. UI uses normalized source values and selected-city timezone. Earthquake radius/time/magnitude/sort filters and occurrence counts are local calculations over the bounded feed.

## Two cache layers, different guarantees

**Framework layer:** upstream fetch uses `cache: 'force-cache'` and Next `next.revalidate`/tags. USGS requests use 60 seconds; MET requests use 3,600 seconds. Persistent/shared behavior depends on the deployed Next host. A revalidation response can still contain old source data, so timestamps must survive that response unchanged.

**Process layer:** `ProviderCache` shares a bounded response map, retry state, and a Promise map across visitors handled by one running process. Concurrent requests for the same key reuse one pending operation. It keeps usable prior responses on failure with an explicit stale state, and eventually discards old source data. These maps reset on process replacement and are not shared across serverless instances or regions.

Current service policy sets USGS freshness no later than five minutes after source publication and discards at six hours; weather freshness is bounded at twelve hours after source publication and discarded at twenty-four hours. HTTP response expiry can make a result stale earlier. These are app policies, not provider publication promises; verify constants when changing them.

MET requests use provider expiry/conditional validators, a per-process start-spacing mechanism, and access/rate-limit backoff. The current four-starts-per-second process limit is **not an application-wide provider quota**. Multiple instances and deployments multiply traffic. Before scaling, validate real cache behavior and aggregate provider requests; do not claim distributed coordination from unit tests.

## Truthful timestamps and values

- `providerUpdatedAt`: source publication time from the source payload
- `fetchedAt`: upstream retrieval timing retained through shared-cache hits
- `expiresAt`: calculated freshness boundary
- `generatedAt`: snapshot assembly time, not a new observation
- `status`: `ready`, `stale`, `error`, or `not_configured`

Preserve true zero values. Missing magnitude/weather fields stay null; unavailable provider data stays null, not an empty “all clear” list. Weather represents model output. The adapter keeps one-hour rain separate from six-/twelve-hour periods; UI converts wind from m/s to km/h where labeled. Test fixtures are not fallback production data.

## Security, privacy, and expansion

Provider endpoints are fixed server-side URLs. The public route cannot select arbitrary hosts or coordinates. Event links are validated to the expected HTTPS USGS host. Transport has a deadline and response-size limit. Server headers constrain framing, browser permissions, and same-origin connections.

A genuine MET operator identifier is required before any forecast request. No provider receives visitors' cookies or profile data from this design. Hosting logs can still contain request metadata; describe actual hosting and storage practices in the public privacy information. Do not claim that absence of analytics eliminates all data processing.

`GLD_PUBLIC_CONTACT_EMAIL` is separate server configuration intentionally rendered by the localized privacy pages. Only an explicitly authorized public address belongs there. The page does not parse `MET_USER_AGENT` to obtain a contact and does not expose that full server identifier. Missing or malformed public email leaves the contact section hidden and the incomplete-launch notice visible.

To add a source: review terms/licensing and cost first, add an explicit typed contract and mockable adapter, bound inputs/request volume, test schema/freshness/failure cases, add attribution and all three languages, and update these docs. Additional accounts, paid services, personal-data sharing, or deployment changes require appropriate approval. Events and advertisements remain separate planned phases.

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[index]] - Mapa de conhecimento e entrada do projeto.
