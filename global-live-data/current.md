---
tipo: estado
projeto: global-live-data
resumo: "Atualizacao TSE publicada, heartbeat ativo e dados anteriores preservados."
tags: [global-live-data, estado, eleicoes, automacao]
atualizado: "2026-10-16"
---

# Estado atual

Ultimo handoff: [[2026-10-16-tse-refresh-release]].

- PR #10 integrada; main 2935a247684a3a9d9bc0bf716a0968b035502c69 limpa/local=remota. CI PR/main e Production Ready em [[release-status]].
- Publico https://global-live-data.vercel.app/pt/elections/brazil. Cobertura e pendencias derivadas do SQLite; EN/PT/ES; [[brazil-election-comparison]].
- Heartbeat TSE ACTIVE a cada seis horas no Codex local, conforme [[refresh-tse-elections]]. Autorizacao em [[2026-10-16-auto-tse]].
- Execucoes reais confirmaram fatos inalterados: duas selecoes RO pendentes, turno 2 ausente. Datas de captura nao renovadas artificialmente. Recibos em [[release-status]].
- Os seis JSONs canonicos preservados, SQLite runtime somente leitura; sem conta/chave/gasto novo. [[historical-editions]].
- Validacao local/remota passou; [[validation-workflow]]. Futuro disparo autonomo, turno 2 real, Safari/aparelhos fisicos/carga nao verificados.
- Editorial independente; [[editorial-publishing]]. Proximo passo: primeira atualizacao material pelo runbook, sem redeploy se fatos iguais.

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
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[2026-10-16-auto-tse]] - Atualizacao TSE autorizada e verificavel.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
