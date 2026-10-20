---
tipo: estado
projeto: global-live-data
resumo: "PR22 integrada; guia Espanha acessivel e CI aprovado; Ready direto depende de acesso Vercel."
tags: [global-live-data, estado, editorial]
atualizado: "2026-10-20"
---

# Estado atual

Ultimo handoff: [[2026-10-20-spain-clock-editorial-release]].

- Main/origin limpos 85edcf78edde33561642bc6ca2710d8560384739; PR22 e ambos os jobs CI PR/main aprovados. [[release-status]].
- Sete artigos EN/PT/ES. Novo guia Espanha: mudanca de 25 outubro, conversoes por data e hora repetida, tres fontes primarias e nota de IA/sem revisao humana. [[editorial-publishing]].
- Integracao Vercel reportou Production/success no SHA exato; nove paginas publicas mostram o deployment correspondente. Inspecao direta do campo Ready pendente: conector/CLI sem acesso ao time e dashboard em login. Nao declarar esse gate concluido nem criar deploy duplicado. [[trap-vercel-access]].
- Check 92/Python 11/Chromium 33 e QA local 390/1280/publica mobile passaram. Primeiro Chromium teve timeout em beforeEach; suite completa sem alteracoes passou. WebKit/Safari iOS nativo/carga nao repetidos. [[validation-workflow]].
- Um ops:check 07:59 UTC passou com oito feeds ready, incluindo USD. Observacao pontual; nenhuma correcao adicional de provider nesta rodada.
- TSE/editorial mantem frequencias/escopo. Brasil 2026 preserva 136 recortes validos do primeiro turno, sem quarentena; 2022 e demais edicoes preservados.
- Pesquisa em [[sports-demand-priorities]]: proposta Brasileirao/NBA/Premier, LaLiga depois; acesso/licenca/retencao ainda precisam validacao. Nenhuma nova liga de dados implementada nesta rodada.
- Dominio/Google pendentes em [[launch-readiness]]; sem compra/DNS/Search Console. Nenhuma conta/chave/custo/analytics/anuncio novo. Servidor QA e abas proprias encerrados, viewport restaurado.

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
- [[2026-10-19-usgs-refresh-release]] - Handoff anterior USGS.
- [[2026-10-19-repair-usgs-refresh]] - Autorizacao desta correcao.
- [[provider-cache]] - Cache corrigido.
- [[usgs-earthquakes]] - Fonte atual.
- [[2026-10-19-mobile-load-launch]] - Handoff anterior mobile/carga.
- [[2026-10-19-mobile-load-and-domain-research]] - Autorizacao de testes/pesquisa.
- [[launch-readiness]] - Proximo passo de dominio/Google.
- [[2026-10-19-getafe-editorial-release]] - Handoff editorial anterior.
- [[2026-10-19-usd-fx-refresh-release]] - Handoff atual.
- [[2026-10-19-repair-usd-fx-refresh]] - Correcao autorizada.

- [[sports-demand-priorities]] - Nova pesquisa.
- [[2026-10-19-sports-demand-research]] - Handoff atual da pesquisa.
- [[2026-10-19-wnba-editorial-release]] - Handoff editorial atual.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
