---
tipo: "estado"
projeto: "global-live-data"
resumo: "Futebol e cambio reais prontos na previa local; publicacao da expansao pendente."
tags: ["global-live-data", "estado"]
atualizado: "2026-10-15"
---

# Estado atual

Ultimo handoff: [[2026-10-15-football-fx-pilot]].

- Producao existente: https://global-live-data.vercel.app, ultima entrega registrada b6bbd5f em [[release-status]]. Esta etapa nao publicou alteracoes; main dispara Production.
- Branch local codex/mobile-category-lab, commit b16718c8dfc1f09204707f133103347c1ed3007e, arvore limpa, sem push/PR/deploy.
- O proprietario aprovou futebol e cambio diario primeiro, com teste real na previa antes de publicar: [[2026-10-15-football-fx-first]].
- Previa http://127.0.0.1:3101/pt/lab, servidor iniciado em loopback. OpenLigaDB para Bundesliga/Champions League 2026/27 e Frankfurter para cinco moedas, EN/PT/ES. Dados comunitarios e referencias diarias, sem garantia de live. Detalhes em [[football-fx-pilot]].
- Passaram lint/tipos/43 unidades/build/smoke, quatro e2e, gates pagina/API, probes reais e UI desktop/mobile. Correcao de arredondamento decimal confirmada. Sem falhas finais pendentes dos checks executados.
- Proximo passo: avaliacao do proprietario sobre dados/apresentacao e escopo de eventual publicacao. Sem compra, nova chave, conta, assinatura ou autorizacao para publicar implicita.
- Nao testados: dispositivos fisicos, Safari, partidas em andamento, carga/cache distribuido. Pendencias anteriores de identidade legal/retencao e auditoria dev-only permanecem; auditoria nao repetida.

## Conexoes
- [[index]] - Mapa do projeto.
- [[release-status]] - Evidencia da producao existente.
- [[2026-10-15-football-fx-pilot]] - Handoff mais recente.
- [[football-fx-pilot]] - Dados, cobertura e limites.
- [[2026-10-15-football-fx-first]] - Escolha aprovada para teste.
- [[2026-10-15-global-review-before-release]] - Revisao antes de publicar.
- [[validation-workflow]] - Checks e limites.
