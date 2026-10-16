---
tipo: "arquitetura"
projeto: "global-live-data"
resumo: "Mapa dos componentes e fronteiras do servidor."
tags: ["global-live-data", "arquitetura"]
atualizado: "2026-10-16"
---

# Arquitetura

Confirmado no codigo: Next.js App Router 16.4.1, React 19.3.1 e TypeScript. Sem banco, login de visitantes, IA, anuncios ou analytics.

GET /api/data aceita somente uma cidade curada. A rota chama a instancia compartilhada do servico server-only; adapters normalizam respostas; UI consome contratos de lib/types.ts. Cabecalho do envelope: Cache-Control: no-store. Fontes usam uma camada separada de cache.

Pontos de entrada: app/api/data/route.ts, lib/providers/index.ts, lib/providers/service.ts, lib/providers/schema.ts, lib/providers/http.ts, lib/providers/cache.ts. Geografia em lib/geography.ts; copy compartilhada em lib/i18n.ts. Componentes de mapa, atividade, clima e status em components/.

A aplicacao exige servidor Node. Exportacao puramente estatica nao suporta a API. vercel.json apenas descreve framework/install/build, sem comprovar criacao de projeto ou deploy.

## Navegacao do portal

components/portal.tsx fornece o panorama com requests paralelos e cards internos. Natureza saiu da raiz para /[lang]/nature; futebol e cambio tem paginas proprias. Fonte dos novos dados usa lib/public-feeds.ts sobre o servico testavel em lib/lab. detalhes em [[football-fx-pilot]]; UI e contrato no repositorio da PR #4.

## Descoberta por tendencias e programacao

PR #5 acrescenta lib/discovery/{schema,service,index}.ts, GET /api/discover, components/use-discovery.ts e components/discovery.tsx. Rotas /[lang]/trending e /[lang]/screen compartilham contratos, copy EN/PT/ES e navegacao do portal. Servico mockavel, cache compartilhado e age guards ficam separados da UI; [[trends-tv-discovery]] concentra os limites.

## Esportes e resultados eleitorais

PR #6 acrescenta lib/events/{catalog,schema,service,index}.ts e /api/events. Tres paginas internas e componentes events/use-events usam sete chaves de cache, normalizadores puros, transporte testavel e age guard externo. Navegacao responsiva acomoda oito categorias. Detalhes e invariantes em [[sports-election-feeds]].

## Conexoes
- [[curated-geography]] - Catalogo limitado de 42 cidades e geometria do mapa.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[repo-architecture-original]] - Copia da fonte docs/ARCHITECTURE.md.
- [[football-fx-pilot]] - Direcao e implementacao atualizadas.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[sports-election-feeds]] - Fontes de esportes e resultados eleitorais.
