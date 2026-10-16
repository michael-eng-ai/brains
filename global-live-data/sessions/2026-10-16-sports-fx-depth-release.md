---
tipo: sessao
projeto: global-live-data
resumo: "PR13 publicada com esportes aprofundados e historico FX; CI e Ready verificados."
tags: [global-live-data, dados, entrega]
atualizado: "2026-10-16"
data: 2026-10-16
ia: codex
maquina: macos
---

# Sessao16/10: esportes e FX publicados

## Objetivo
Implementar a prioridade aprovada, testar, integrar a main, publicar e salvar cerebro.

## Estado
- Main local/remota limpa 2d0c69c7e6f1e0e6f64852b239556fc83ea82add; PR13 integrada21:51:36UTC, arvore identica ao head b706547.
- CI PR38971897534 e main38972157645 passaram ambos os jobs. Recibos completos em [[release-status]].
- Vercel Production Ready dpl_HzwTBZLztApekGi1qcYp4kruFPCs, SHA exato, build29s. URL https://global-live-data.vercel.app/pt .
- Check87 unit/build/HTTP, Python11, Chromium25 e QAreal390/1280 passaram.12paginaspublicas/deployment/CSP/bounds confirmados; novosfeeds ready.
- Ops geral: USGS/MET stale; demais representativos ready. Snapshot nao prova pane permanente ou recuperacao.

## Decisoes e limites
- [[2026-10-16-publish-sports-fx-depth]]: mesmas fontes, calendarios/time, Bundesliga, FX30/90. Nenhuma nova conta/custo/automacao.
- [[sports-fx-depth]]: cache, normalizacao, consulta real, team noindex e limite de retencao FX.
- Portal e seis arquivos historicos preservados. Previsao7dias fora da entrega.

## O que evitar
- Nao interpretar inventario51chamadas frias como quota distribuida. Nao prometer tempo real ou historico FX permanente.
- Conector lista projetos mas deployments403; CLI indisponivel. Painel autenticado resolveu verificacao, sem novas credenciais.
- Primeiro probe publico assumia lang como primeiro atributo HTML; Vercel injeta data-dpl-id antes. Regex de atributos corrigida e probe completo passou. Nao foi defeito do site.
- Nao sobrescrever scripts antigos de save do cerebro: eles restauram estados ultrapassados.

## Proximo passo concreto
Usar docs/SPORTS-FX-DEPTH.md e docs/OPERATIONS.md para avaliar feedback na versao publicada; priorizar profundidade/clareza dentro das fontes atuais. Nao disparar outro deploy sem nova mudanca necessaria/autorizada.

## Prompt inicial para a proxima sessao
Avalie o feedback do usuario sobre esportes e FX publicados: (1) retome cerebro e confira Git; (2) reproduza o filtro/par/data informado; (3) compare a mesma observacao e preserve nulos/stale; (4) entregue correcao focada com testes e autorizacao aplicavel; (5) salve e sincronize. Nao amplie categorias automaticamente.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-16-publish-sports-fx-depth]] - Aprovacao.
- [[sports-fx-depth]] - Contrato.
- [[release-status]] - Evidencias.
- [[validation-workflow]] - Gates.
