---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/DEPLOYMENT.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/DEPLOYMENT.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Deployment and launch checklist

This is an operator guide, not a deployment receipt or authorization to publish. No repository push, hosting account, cloud service, or production deployment is created by these instructions. The owner must approve the target account/project, publication, any account connection, applicable agreements, and any financial commitment before those actions.

## 1. Verify the local release

```sh
npm ci --ignore-scripts
npm run check
npm run test:e2e
```

Use `npm install` only if this checkout does not yet contain a lockfile, then retain the generated lockfile. Use Node.js 24 for local verification, CI, and hosting. Check [Next.js installation requirements](https://nextjs.org/docs/app/getting-started/installation#system-requirements).

`check` covers lint, typecheck, unit tests, build, and automated production HTTP smoke checks. The smoke script starts a server on port 3100 (`SMOKE_PORT` override) and checks nine localized routes, redirects, rejected API inputs, and security headers without provider queries by default. Keep `GLD_LIVE_SMOKE` unset or `0` in routine checks. Browser tests are separate. Record the exact tested revision and distinguish a passing test run from a test that could not run. Never replace a blocked live weather check with an invented `MET_USER_AGENT`.

This app requires a server for provider requests and caching. For a Node host:

```sh
npm run build
npm start
```

Place the Node server behind an HTTPS-capable host/reverse proxy, manage the process, configure allowed network access, and retain the required server environment. Do not set `output: 'export'`: static-only hosting cannot run this provider proxy. See [Next.js deploying guidance](https://nextjs.org/docs/app/getting-started/deploying).

## 2. Set only the needed environment configuration

| Variable         | Scope                                                                                 | Required?              |
| ---------------- | ------------------------------------------------------------------------------------- | ---------------------- |
| `MET_USER_AGENT` | Server only; a real public application/operator identifier with an authorized contact | Only to enable weather |
| `GLD_PUBLIC_CONTACT_EMAIL` | Server configuration intentionally rendered as a public support/privacy email in EN/PT/ES | For the public contact section |

Use `.env.local` locally and the host's environment settings for deployment. Never commit `.env.local`, authentication tokens, passwords, or private user information. This application needs no paid API key, database, or secret credential. Do not add a `NEXT_PUBLIC_` prefix to the MET operator identifier.

The owner supplies the actual public identity and contact. Review [DATA-SOURCES.md](DATA-SOURCES.md) and the linked MET terms before enabling weather. Leaving the value blank is a supported release state, provided the UI clearly says weather is unavailable.

On 2026-10-15 the owner supplied and explicitly authorized a contact email for publication and MET Norway identification. Its value is kept in ignored local configuration and was entered in the unsaved Vercel import form, not this handoff. Saved host configuration has not been verified. `GlobalLiveData/0.1` identifies the existing application; it does not invent a company or legal operator identity. The privacy page reads only `GLD_PUBLIC_CONTACT_EMAIL`, not `MET_USER_AGENT`, and retains the outstanding legal/hosting notice.

On Vercel, configure the appropriate Development, Preview, or Production scope. Environment edits apply to new deployments, so redeploy after a change. See [Vercel environment variables](https://vercel.com/docs/environment-variables).

## 3. Vercel import and Preview workflow

**Important: current Vercel documentation says the first deployment of a new project is always Production.** This also applies to dashboard Git imports and CLI deployments without `--prod`. Do not describe a fresh import as preview-only. Stop before the first deploy if the owner has authorized only a Preview. See [Vercel's first-deployment behavior](https://vercel.com/docs/deployments/environments#first-deployment).

For an owner-approved project setup:

1. The owner selects the intended Vercel account/team and Git repository, reviewing repository access and hosting terms. If source has not been published to the intended repository, obtain separate permission before uploading it.
2. In **Add New → Project**, select the approved repository. Set the root directory to this app's folder, `global-live-data` when it is nested, or the repository root when the app itself is the repository.
3. Confirm framework **Next.js**, build command `npm run build`, and install command `npm ci --ignore-scripts` with the committed lockfile. These settings are recorded in `vercel.json`; `package.json#engines.node` selects `24.x` and `.nvmrc` matches local development. Keep the framework's default output directory. Review the [official build settings](https://vercel.com/docs/builds/configure-a-build), [Node.js version selection](https://vercel.com/docs/functions/runtimes/node-js/node-js-versions), and [Next.js integration](https://vercel.com/docs/frameworks/full-stack/nextjs).
4. Set environment variables and review visibility, domain assignment, access protection, and spending controls before deploying. Do not assume an obscure generated URL is private. Do not enable analytics, paid add-ons, or third-party integrations as part of this MVP.
5. Confirm authorization for the actual deployment target. After the initial project deployment exists, a non-production branch/PR can produce a Preview. Verify the dashboard's environment label and exact commit; then test its generated URL. Production-branch pushes may deploy automatically, so review branch settings before later pushes. See [Vercel deployment environments](https://vercel.com/docs/deployments/environments).

Do not merge, promote a Preview, attach a production domain, or enable automatic production releases merely because Preview testing succeeded. Those are separate release decisions. A deployment is successful only after the host reports it ready and its actual URL has been checked.

### Verified import preparation (2026-10-15)

| Setting | Prepared target / observed state |
| --- | --- |
| Repository | `michael-eng-ai/global-live-data` (private) |
| Production branch | `main`; PR #2 subsequently merged as `897f3f31084ab34c9320b018b00e53a32818c2f8` |
| Vercel team visible in browser | `michael-eng-ai's projects`, slug `michael-eng-ais-projects`, Pro |
| Intended project | `global-live-data`; not created in this session |
| Root directory | Repository root (`./`), not a nested directory |
| Framework / runtime | Next.js / Node.js `24.x` |
| Install / build | `npm ci --ignore-scripts` / `npm run build` |
| Output directory | Next.js default |
| Weather | Owner-authorized identity configured locally and entered in the import form; live local forecast verified. Host configuration is not saved until import completes. |
| Public contact | `GLD_PUBLIC_CONTACT_EMAIL` configured locally and entered in the import form for Production and Preview; localized privacy pages verified locally. |
| Deployment / URL | No deployment or production URL verified |

The Vercel connector returns no teams and HTTP 403 when listing projects in the known team. No Vercel CLI is installed in the inspected local environment. The existing local Chrome session independently opens the team's dashboard successfully. This is an available authenticated path; it does not resolve the connector's permissions.

Earlier, **Create New → Project** could not find `global-live-data`, and GitHub required **Confirm access** before showing the existing Vercel installation settings. The owner subsequently authenticated. Inspection showed **All repositories** already selected; no permissions or pending permission update were changed by this session. Reloading the Vercel import page made `global-live-data` available.

The import form is now prepared for the exact repository/team above, `main`, root `./`, Next.js, `npm run build`, `npm ci --ignore-scripts`, and both operator variables in Production and Preview. **Deploy has not been clicked**; no hosting project or environment save is claimed. After CI passed for contact revision `97df008`, the owner explicitly chose **keep prepared, do not publish**. A later GitHub inspection observed PR #2 merged outside this continuation at 21:25:17 UTC on 2026-10-15, with successful main CI. The PR is no longer awaiting integration. No deployment was performed or confirmed by this continuation; do not infer deployment authorization from that merge. Before an authorized deployment, recheck the current form, CI, team, repository and main revision. Do not copy browser credentials into a CLI or connector.

The hosted checks below remain pending until an actual deployment exists. Local HTTP tests and GitHub browser fixtures do not establish hosted provider/cache behavior.

## 4. Verify the hosted instance

Use the actual generated URL, never an invented or predicted deployment URL.

- Load English, Portuguese, and Spanish views on desktop and a narrow mobile viewport; check keyboard navigation, focus, readable labels, and layout.
- Search several curated cities; change country/region and ensure invalid combinations are handled. Confirm city timezone formatting and radius behavior.
- Check earthquake time/magnitude filters, sorting, empty results, map/list selection, and source links.
- Confirm source publication and retrieval timestamps are distinct and do not reset misleadingly on refresh.
- With weather disabled, verify the visible configuration notice and that no request is made to MET Norway. With owner-approved configuration, verify a real forecast, units, forecast times, and one-hour versus longer precipitation intervals.
- Verify provider failure and stale-data notices with controlled tests. Do not intentionally flood or break a public provider to create failure conditions.
- Confirm browser data requests are same-origin and server responses do not expose configuration values. Review response security headers and unexpected console/network errors.
- Check provider request volume, cache reuse, and concurrent-request deduplication. Do not claim distributed rate limiting from a single-process test.
- Check all public legal/contact/source links and the actual operator details before public promotion.

## 5. Costs, caching, and scale

The data integrations require no paid API subscription, and the product has no visitor accounts, AI, ads, or analytics. Hosting is a separate operator choice and may require an account. Server execution, builds, bandwidth, logs, and preview requests can incur costs or exhaust a free allowance. Review the selected host's current plan and quotas; there is no unlimited-free-traffic promise.

The provider cache is shared across app requests where the server/platform supports it. Per-process single-flight and in-memory fallbacks do not coordinate every serverless instance or region. Cold starts and multiple deployments can duplicate work. Before significant traffic, verify real cross-instance cache behavior, aggregate provider rate, and error backoff. Do not raise provider load to compensate for a hosting-cache misunderstanding. Larger scale may require an explicitly approved shared caching/rate-control design.

For Vercel, review [Spend Management](https://vercel.com/docs/spend-management) for the selected plan. A budget notification alone does not stop usage. Supported production-pausing controls are not instantaneous and may allow additional usage before they take effect. Do not treat them as an absolute spending cap, and do not change billing settings without the owner's approval.

## Production launch gate

Complete and record each item before public launch:

- [ ] Exact source revision passes lint, typecheck, unit tests, production build, and browser tests; blocked checks are documented.
- [ ] The owner approves the target project, account, visibility, initial deployment behavior, and release scope.
- [ ] Real USGS reachability and source timestamp rendering are verified from the deployment.
- [ ] Weather is either intentionally disabled with a clear notice or enabled using the owner's real public contact, with a verified forecast and provider-compliant request behavior.
- [ ] Attributions and source/license links are visible and accurate; presentation changes are disclosed.
- [ ] A real operator/company name, public privacy/support contact, and any legally required business details are supplied by the owner. No fictional company, address, registration, jurisdiction, or contact is published.
- [ ] Privacy information accurately describes the actual hosting logs, provider proxy, local/browser storage if used, retention, and operator practices. Do not claim GDPR or other legal compliance solely from this checklist; seek appropriate review where needed.
- [ ] Any terms, privacy page, or consent language matches actual operation and applicable requirements. No private user information has been reused as configuration.
- [ ] Accessibility and mobile checks include all three languages and loading, empty, stale, disabled, and error states.
- [ ] No API key, password, token, private contact, `.env.local`, or unrelated private file is included in source or build output.
- [ ] Provider-rate controls, cache limitations, host quotas, cost notifications, and rollback/disable procedures are understood.
- [ ] Emergency-use limitations are clear. There are no promises of hazard detection, instant updates, comprehensive city coverage, or guaranteed uptime.
- [ ] The actual release URL and deployment status are verified after the authorized release.

If a deployment fails, retain the error and tested revision, fix the local issue, rerun affected checks, and redeploy only within the approved scope. To disable weather, clear `MET_USER_AGENT` and redeploy; do not substitute a false identifier. Rollbacks or production changes also require an authorized target and scope.

## CI action provenance

The validation-only workflow pins the official [actions/checkout v7.0.1 commit](https://github.com/actions/checkout/commit/3d3c42e5aac5ba805825da76410c181273ba90b1) and [actions/setup-node v7.1.0 commit](https://github.com/actions/setup-node/commit/949feb2413d6458794dcd2491c4babbbce0c15c1), verified against their release pages on 15 October 2026. Review release notes and full commit provenance before updating pins. See [GitHub secure workflow guidance](https://docs.github.com/en/actions/reference/security/secure-use). The workflow has an aggregate-check job and a separate Chromium browser-smoke job. The browser job installs Chromium and its system dependencies, then runs the existing Playwright suite, following [Playwright CI guidance](https://playwright.dev/docs/ci-intro). It does not configure hosting, use custom secrets, or deploy. It uploads synthetic fixture screenshots and diagnostics from `test-results/` for seven days using the pinned `actions/upload-artifact` action. Both jobs passed on main in [run 38801555512](https://github.com/michael-eng-ai/global-live-data/actions/runs/38801555512). The earlier cloud browser IPC failure is historical; it is not evidence of a local desktop restriction.

Browser CI uses production build/start and collects console/page errors, traces, and screenshots. It intentionally does not rely on Next's development HMR origin configuration. Passing local HTTP smoke does not verify hydration; require the separate Chromium job to pass before release. Review [dependency audit](DEPENDENCIES.md) and its remaining dev-tooling findings before public launch.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[resume-publication]] - Retomar hospedagem somente com nova instrucao e alvo confirmado.
