---
tipo: estado
projeto: global-live-data
resumo: "USGS corrigido e publicado pela PR17; main/Production verificadas; dados avancando."
tags: [global-live-data, estado, usgs, cache]
atualizado: "2026-10-19"
---

# Estado atual

Ultimo handoff: [[2026-10-19-usgs-refresh-release]].

- Main local/origin limpas em 5f482f533492f9064e7af5240dd19401f3ea3908; PR17 integrada, CI PR/main e Production Ready exatas verificadas. [[release-status]].
- Correcao USGS: consulta atual aguardada ao expirar cache de processo, fonte, validade e backoff preservados; natureza atualiza a cada minuto visivel. Futebol/FX a cada cinco minutos. [[provider-cache]] e [[usgs-earthquakes]].
- Check 92 unidades/lint/tipos/build/HTTP, Python11 e Chromium29 passaram. UI mobile/desktop e duas publicacoes reais sucessivas verificadas. [[validation-workflow]].
- Resultado operacional pontual: 2026-10-19T14:05:58.211Z, npm run ops:check exit0, oito feeds representativos ready (USGS, MET, futebol, FX, hoquei, xadrez, eleicoes e TV); nao representa todos os seletores/regioes. Nao inferir disponibilidade continua.
- Previsao da Cidade do Mexico EN/PT/ES da PR16 preservada, catalogo42; [[met-forecast]]. Quatro artigos e seis edicoes historicas mantidos; TSE2026 com136 recortes reconciliados e turno2 ainda pendente.
- Servidor QA encerrado; proximo passo e feedback e medicao antes de promocao/escala. Nao testados telefones fisicos/Safari mobile/carga. Nenhuma nova cidade/API/conta/chave/gasto/analytics/ads ou automacao.

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
- [[2026-10-19-asian-para-editorial-release]] - Handoff da edicao editorial dos Jogos Para-Asiaticos.
- [[2026-10-19-mexico-weather-first]] - Escopo local selecionado pelo proprietario.
- [[2026-10-19-mexico-weather-preview]] - Handoff da previa mexicana.
- [[2026-10-19-publish-mexico-weather]] - Autorizacao da previsao publicada.
- [[2026-10-19-mexico-weather-release]] - Handoff anterior da previsao.
- [[met-forecast]] - Previsao publicada.
- [[2026-10-19-usgs-refresh-release]] - Handoff atual.
- [[2026-10-19-repair-usgs-refresh]] - Autorizacao desta correcao.
- [[provider-cache]] - Cache corrigido.
- [[usgs-earthquakes]] - Fonte atual.
