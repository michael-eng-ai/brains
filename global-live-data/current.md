---
tipo: estado
projeto: global-live-data
resumo: "Arquivo historico publicado: Brasil 2022 e quatro temporadas 2025/26."
tags: [global-live-data, estado, historico]
atualizado: "2026-10-16"
---

# Estado atual

Ultimo handoff: [[2026-10-16-history-release]].

- PR #8 integrada; main 56d255d6880ce1b727a3586cd06eac57fdbe2332 limpa/local=remota. CI PR/main e Vercel Production Ready observados em [[release-status]].
- Historico https://global-live-data.vercel.app/pt/history/br-2022. Seis cargos brasileiros agregados por partido/estado/turno e quatro temporadas esportivas anteriores; detalhes em [[historical-editions]].
- Persistencia: JSON versionado + SQLite read-only indexado, aproximadamente 360 KiB. Gate impede trocar temporada esportiva sem arquivar a anterior. Sem novo banco cloud, conta, chave ou despesa contratada.
- 69 unidades, 3 testes Python separados, 15 casos Chromium, 54 rotas HTTP passaram. Cinco exports publicados iguais aos arquivos locais; QA desktop/mobile publicado sem erros/overflow.
- Apuracao Brasil 2026 e ingestao futura automatica nao implementadas. Carga/Safari/aparelhos fisicos nao testados; arquivo nao implica cobertura completa de eleicoes/esportes globais.
- Heartbeat publicar-artigos-do-global-live-data segue ACTIVE a cada seis horas e independente; nenhuma execucao agendada confirmada nesta sessao. [[editorial-publishing]].
- Proximo passo: avaliacao do historico ou rodada editorial autorizada. Para nova edicao, seguir docs/HISTORY.md; nunca substituir arquivo anterior pelo evento atual.

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
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-history-release]] - Handoff do historico publicado.
