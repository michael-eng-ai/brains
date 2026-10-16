---
tipo: estado
projeto: global-live-data
resumo: "PR13 publicada: temporadas/time, Bundesliga e cambio30/90dias."
tags: [global-live-data, estado, dados]
atualizado: "2026-10-16"
---

# Estado atual

Ultimo handoff: [[2026-10-16-sports-fx-depth-release]].

- PR13 integrada; main local/remota limpa 2d0c69c7e6f1e0e6f64852b239556fc83ea82add. CI PR/main com dois jobs aprovados; Vercel Production Ready no SHA exato. Recibos em [[release-status]].
- [[sports-fx-depth]]: calendarios cadastrados2026/27, filtros/rodadas/time/forma, classificacao Bundesliga e FX30/90dias com tabela diaria. Mesmas fontes aprovadas; portal e seis arquivos historicos preservados.
- Check87 testes unitarios, Python11, Chromium25, QA real390/1280 e12paginaspublicas passaram. Novos feeds de producao ready. Ops geral encontrou USGS/MET stale; demais representativos ready, sem alegar recuperacao longitudinal.
- Proximo passo: avaliar a versao publicada com o usuario e priorizar feedback sobre utilidade dos dados. Investigar clima/USGS apenas com diagnostico limitado sob demanda, respeitando TTL; nao promover carga nem trocar fornecedores por um unico snapshot.
- Nao ampliar automaticamente para novas categorias ou previsao7dias. FX historico e cache de fonte, nao warehouse permanente. Medir trafego agregado antes de expandir (inventario frio OpenLiga51 chamadas, sem quota distribuida).
- Duas automacoes seguem inalteradas; RO/turno2 dependem de fonte consistente/disponivel. Nao houve nova coleta TSE. Sem contas, chaves, custos, analytics ou ads novos.
- Telefones fisicos, Safari mobile e carga distribuida permanecem nao testados.

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
