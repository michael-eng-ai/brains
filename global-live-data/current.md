---
tipo: estado
projeto: global-live-data
resumo: "PR14 publicada: dois recortes RO reconciliados, 2022 preservado; turno 2 pendente."
tags: [global-live-data, estado, eleicoes]
atualizado: "2026-10-19"
---

# Estado atual

Ultimo handoff: [[2026-10-19-tse-ro-release]].

- PR14 integrada e publicada; main limpa 967371fbba09bca2e6cdd2119bdd285975bebf2b. Dois jobs CI PR/main aprovados e Vercel Production Ready no SHA exato; recibos em [[release-status]].
- [[brazil-election-comparison]]: 136 recortes validos 2026, sem quarentena; ambos deputados RO agora comparaveis com 2022. Todos os 134 recortes anteriores e cinco outras edicoes intactos. Turno 2 ainda ausente; nao antecipar IDs/dados antes de 25/10 e dos gates oficiais.
- Testes: 11 Python, 87 Node, 25 Chromium, build/HTTP; UI 390/1280; 15 paginas publicas EN/PT/ES e seis JSONs integrais conferidos. ops:check oito feeds ready em 19/10 12:27 UTC; observacao pontual, sem garantia longitudinal.
- Proximo heartbeat TSE: seguir [[refresh-tse-elections]], main atualizada/arvore livre/uma chamada --apply; no-op sem alterar captura, commit ou deploy. Regressoes agora tambem preservam RO liberado. Nenhuma frequencia/automacao alterada.
- Produto anterior de temporadas/time/Bundesliga e FX 30/90 permanece; [[sports-fx-depth]]. Priorizar feedback do usuario, sem ampliar automaticamente categorias/previsao/infraestrutura. O cache FX nao e um warehouse permanente; avaliar trafego antes de escalar.
- Telefones fisicos, Safari mobile e carga distribuida continuam nao testados. Nenhuma conta, chave, custo, analytics ou ads novo. Servidor QA encerrado.

## Conexoes
- [[index]] - Entrada do projeto.
- [[2026-10-16-sports-election-release]] - Handoff historico da expansao.
- [[2026-10-16-publish-sports-elections]] - Autorizacao historica de esportes/eleicoes.
- [[sports-election-feeds]] - Contratos e fontes.
- [[release-status]] - Evidencias remotas.
- [[validation-workflow]] - Testes e limites.
- [[2026-10-15-portal-release]] - Handoff anterior do portal.
- [[2026-10-15-discovery-release]] - Handoff anterior da descoberta.
- [[football-fx-pilot]] - Integracoes anteriores.
- [[2026-10-15-publish-portal]] - Autorizacao anterior.
- [[2026-10-15-publish-discovery]] - Autorizacao anterior.
- [[trends-tv-discovery]] - Descoberta anterior.
- [[category-research]] - Pesquisa de categorias.
- [[editorial-publishing]] - Protocolo editorial e recorrencia.
- [[2026-10-16-auto-editorial]] - Escolha explicita de publicacao automatica.
- [[2026-10-16-editorial-release]] - Handoff editorial.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-history-release]] - Handoff do historico publicado.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[2026-10-16-auto-tse]] - Atualizacao TSE autorizada e verificavel.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
- [[consolidation-audit]] - Evidencias e prioridades.
- [[2026-10-16-consolidate-first]] - Direcao de consolidacao.
- [[2026-10-16-consolidation-audit]] - Handoff da auditoria.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
- [[2026-10-16-publish-consolidation]] - Autorizacao especifica de consolidacao e publicacao.
- [[api-data-adequacy]] - Adequacao e profundidade dos dados.
- [[2026-10-16-api-data-audit]] - Ultima auditoria.
- [[2026-10-16-publish-sports-fx-depth]] - Entrega de esportes e FX.
- [[2026-10-19-tse-ro-release]] - Ultimo handoff TSE.
