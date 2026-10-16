---
tipo: estado
projeto: global-live-data
resumo: "Artigos publicados e rotina editorial automatica seis horas ativa."
tags: [global-live-data, estado, editorial]
atualizado: "2026-10-16"
---

# Estado atual

Ultimo handoff: [[2026-10-16-editorial-release]].

- Site https://global-live-data.vercel.app/pt/trending. PR #7 integrada; main dba29fdd2ff944c5934116b6c6dd42cc898e5fc8, limpa/local=remota. CI PR/main e Production Ready observados em [[release-status]].
- Em foco substitui o feed Trends por artigos originais EN/PT/ES, com paginas internas e fontes. Duas leituras iniciais e rotina descritas em [[editorial-publishing]]. Demais sete categorias preservadas.
- Proprietario escolheu publicacao automatica frequente. Heartbeat `publicar-artigos-do-global-live-data` ACTIVE a cada seis horas, ate uma pauta por rodada; nao e um servico autonomo hospedado. Nenhuma rodada agendada observada ainda.
- 63 unidades, 13 browser testes, 39 paginas HTTP, metadata e leitura sem JavaScript passaram; QA mobile/desktop publicado. Fontes reais foram pesquisadas separadamente das fixtures.
- Sem conta, chave, dependencia, API paga, anuncio ou analytics novos. Cerebro contem referencias e recibos, sem credenciais/dados pessoais.
- Proximo passo: executar a rodada editorial autorizada ou corrigir conforme avaliacao. Nao prometer indexacao/views; preservar qualidade e revisao de fontes. Safari/aparelhos fisicos/carga continuam nao testados.

## Conexoes
- [[index]] - Entrada do projeto.
- [[2026-10-16-sports-election-release]] - Handoff atual.
- [[2026-10-16-publish-sports-elections]] - Autorizacao desta entrega.
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
