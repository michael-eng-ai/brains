---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/DEPENDENCIES.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/DEPENDENCIES.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Dependency audit and compatibility

Checked 2026-10-15 with npm 11.9.0 against the committed lockfile; independently rechecked the same dependency versions on the local desktop with Node.js 24.22.0 and npm 11.21.1. The full and production-only audit findings below are unchanged. No forced upgrade, downgrade, or override was applied.

## Observed audit results

- `npm audit --json`: five high-severity package findings, all in development dependencies.
- `npm audit --omit=dev --json`: zero reported production dependency vulnerabilities on this date. This is a point-in-time advisory result, not a guarantee that the application is secure.
- The five findings are one advisory propagated through this chain: `eslint-config-next` → `@next/eslint-plugin-next` → `fast-glob` → `micromatch` → `braces`.
- Advisory: [GHSA-vfj7-8cjw-p6xm / CVE-2026-93687](https://github.com/advisories/GHSA-vfj7-8cjw-p6xm), stack-exhaustion denial of service from deeply nested brace patterns. The official advisory lists `braces <=3.0.3` as affected and no patched version; the npm registry's latest braces is 3.0.3.

These packages are used by lint tooling, not by the app's public API path. Do not pass untrusted runtime data or user-supplied glob patterns into lint tooling. CI has no application secrets, read-only repository permissions, and bounded job timeouts. These controls limit this project's exposure; they do not repair the upstream package.

## Why no forced dependency replacement

`eslint-config-next` 16.4.1 is the current version matching Next.js 16.4.1. npm suggests a major downgrade to 14.2.35 to escape the affected dependency chain. That is not an appropriate automatic fix for a Next 16 application, so it was not applied.

ESLint 9.39.5 is deprecated. The current ESLint release is 10.12.0, but the latest `eslint-plugin-react` 7.37.5 and `eslint-plugin-jsx-a11y` 6.10.2 declare peer support only through ESLint 9. Their latest versions were checked directly in the official npm registry on 2026-10-15. The project retains the compatible lint stack rather than using `--force`, `--legacy-peer-deps`, unsupported overrides, or disabling rules to conceal the warning.

## Next maintenance step

Recheck the advisory and plugin releases before public launch and at normal dependency maintenance. When compatible patched versions exist, update the lockfile and rerun lint, type generation/typecheck, unit tests, production build/HTTP smoke, and production browser smoke. Consider a separate reviewed lint-stack migration if upstream support remains unavailable; do not merge that unrelated migration merely to make an audit count disappear.

## Conexoes
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.
- [[index]] - Mapa de conhecimento e entrada do projeto.
