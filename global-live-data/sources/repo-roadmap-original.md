---
tipo: "fonte"
projeto: "global-live-data"
resumo: "Copia da fonte docs/ROADMAP.md."
tags: ["global-live-data", "fonte"]
atualizado: "2026-10-15"
origem: "docs/ROADMAP.md"
capturado_em: "2026-10-15"
revisao: "458b227fc92b80a2752d601968e7ea8bb33fee58"
---

# Roadmap and scope

This roadmap distinguishes source implementation from future work. It is not a release announcement, deployment record, contract, or authorization to spend.

## Phase 1: global nature-data MVP

**Present in the implementation:**

- Global-first EN/PT/ES interface and a bounded catalog of 42 cities across regions
- Curated city/country/region discovery and selected-city timezone display
- USGS rolling 24-hour earthquake adapter, map/list, occurrence chart, radius/time/magnitude filters, and sort controls
- MET Norway forecast adapter and weather UI, gated on a real operator identity
- Source attribution, timestamps, explicit missing/stale/error/disabled states
- Server-only upstream requests, schema validation, Next fetch cache, process-local single-flight and backoff
- Local validation scripts, provider unit tests, documentation, and validation-only GitHub CI configuration

**Launch work still needs verification or owner input:**

- Final automated and browser checks against the exact release revision
- An authorized hosted deployment: GitHub publication, PR #1 merge, and main CI are verified. The Vercel connector returns HTTP 403, but the authenticated browser reaches the correct repository import with settings prepared. Deploy has not been submitted. See [the deployment access record](DEPLOYMENT.md#verified-import-preparation-2026-10-15).
- Real owner-supplied public operator/contact information and accurate privacy/legal pages
- Hosted MET forecast verification: an authorized contact and successful local live forecast are recorded; host configuration and response remain unverified
- Hosted cache/request-volume checks, host cost controls, mobile/accessibility review, and a rollback plan

Known limits: curated geography rather than geocoding; USGS past-day feed rather than historical storage; model forecast rather than observation; provider/network latency; no guaranteed availability or emergency service. “Global” does not mean every city is searchable or every hazard is detected.

## Phase 2: events, planned only

Expand to an events layer after Phase 1 is stable. No event-discovery/ticketing provider, event database, purchase flow, or paid event API is implemented or selected. Existing earthquake “event” records are part of Phase 1 and do not mean Phase 2 is complete.

Before implementation, agree the intended event categories, regions, source rights, update cadence, time-zone/cancellation semantics, and cost. Prefer bounded, cacheable integrations with clear provenance. Keep EN/PT/ES and global coverage goals. Evaluate provider availability and commercial terms using current evidence before selection.

## Phase 3: advertising, planned only

Advertising or other monetization is future work. There is currently no ad network, paid campaign, ad purchase, advertising account, tracking pixel, revenue estimate, or consent-management implementation.

Before adding advertising, decide the model and placements, review privacy/consent and performance impact, verify provider terms, and obtain specific approval for accounts, data sharing, spend, and deployment. Never treat an empty ad slot or roadmap entry as permission to activate tracking or purchase media.

## Operating-cost constraint

Target **R$600 per month for infrastructure plus APIs, excluding advertising**. This is a planning ceiling, not a statement of current spend, guaranteed quote, or blanket permission to buy services. No automatic paid provisioning, subscription, account creation, or overage acceptance is authorized by this document.

Evaluate hosting/functions, transfer, build/runtime limits, logs, storage, data APIs, and contingency together. Foreign-currency billing, tax, traffic spikes, and delayed budget enforcement can affect the total. Source data is currently free to access under provider terms; hosting capacity is not unlimited. Record current evidence and an owner-approved total before any paid commitment.

## Prioritization rules

1. Correctness, provenance, safety wording, privacy, and provider compliance come first.
2. Keep all three languages and responsive/accessibility behavior working as features change.
3. Fix measured reliability and cost problems before increasing traffic or scope.
4. Add a paid dependency only for a demonstrated requirement and explicit approval.
5. Promote a later phase to “implemented” only after code, tests, source attribution, and release status support that claim.

## Conexoes
- [[2026-10-15-scope-budget]] - Natureza como primeira fase e limite de custo como planejamento.
- [[index]] - Mapa de conhecimento e entrada do projeto.
