---
tipo: "arquitetura"
projeto: "global-live-data"
resumo: "Mapa dos componentes e fronteiras do servidor."
tags: ["global-live-data", "arquitetura"]
atualizado: "2026-10-15"
---

# Arquitetura

Confirmado no codigo: Next.js App Router 16.4.1, React 19.3.1 e TypeScript. Sem banco, login de visitantes, IA, anuncios ou analytics.

GET /api/data aceita somente uma cidade curada. A rota chama a instancia compartilhada do servico server-only; adapters normalizam respostas; UI consome contratos de lib/types.ts. Cabecalho do envelope: Cache-Control: no-store. Fontes usam uma camada separada de cache.

Pontos de entrada: app/api/data/route.ts, lib/providers/index.ts, lib/providers/service.ts, lib/providers/schema.ts, lib/providers/http.ts, lib/providers/cache.ts. Geografia em lib/geography.ts; copy compartilhada em lib/i18n.ts. Componentes de mapa, atividade, clima e status em components/.

A aplicacao exige servidor Node. Exportacao puramente estatica nao suporta a API. vercel.json apenas descreve framework/install/build, sem comprovar criacao de projeto ou deploy.

## Conexoes
- [[curated-geography]] - Catalogo limitado de 42 cidades e geometria do mapa.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[repo-architecture-original]] - Copia da fonte docs/ARCHITECTURE.md.
