---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Hoquei, xadrez e resultados eleitorais publicados: fontes e limites."
tags: ["global-live-data", "conceito", "esportes", "eleicoes"]
atualizado: "2026-10-16"
---

# Fontes de esportes e eleicoes

Implementacao na PR #6, commit 503c54e22d91f2a616190bcc720e621fcb6ceb1d. Evidencia final de publicacao fica em [[release-status]], nunca deduzida da branch ou do build. Pesquisa detalhada, URLs primarias e direitos em docs/SPORTS-ELECTIONS-RELEASE.md do repositorio.

- OpenLigaDB: DEL/CHL 2026/27, rodadas anterior/atual/seguinte, placares finais acumulados. Licenca ODbL 1.0 permite uso comercial com credito/share-alike; JSON adaptado gratuito, sem logos ou dados pessoais. Cache seis horas, expiracao 36h.
- Lichess: endpoint anonimo /api/broadcast/top, somente primeira pagina. Termos permitem uso comercial; agenda factual de torneios/rodadas/estado, sem imagens, perfis ou partidas. Estado em andamento sempre qualificado pela ultima consulta. Cache dez minutos, expiracao uma hora. Nao generalizar ausencia de autenticacao para outros endpoints de broadcast.
- Parlamento britanico: Members API e Open Parliament Licence v3.0, uso comercial com credito obrigatorio na metodologia. Quatro distritos selecionados, um por nacao; votos agregados por partido e data da eleicao explicita. Sem candidato/perfil/imagem, total nacional, apuracao ao vivo ou previsao. Cache uma hora, expiracao 24h.

/api/events aceita somente sete combinacoes de chave: duas ligas, uma agenda de xadrez e quatro distritos. Normalizacao pura, transporte server-side, fila por fornecedor/processo, backoff exponencial com Retry-After, oito segundos e 1MB por resposta. Next Data Cache tem age guard externo. Nao ha rate limit distribuido; revisitar trafego agregado com futebol e multiplas instancias antes de escala.

Armadilha verificada: getlastchangedate exige rodada. A URL apenas com liga/temporada retornou 404 no probe real, embora fixture inicial passasse. Correcao valida grupo atual contra catalogo da temporada, consulta tokens de tres rodadas e filtra uma resposta de temporada para essas rodadas. Nao somar os placares parciais de hoquei; os valores ja sao acumulados. Nao converter timezone ausente em UTC. Lichess usa past.currentPageResults, nao past.results.

TSE 2026: catalogo oficial declara cc-by (versao nao inferida), mas recursos sao ZIP em lote, datastore inativo. Nao confundir API CKAN de metadados com apuracao em JSON. Proximo passo para Brasil exige desenho de ingestao limitada/cache e revisao dos campos; na entrega original nenhum total brasileiro havia sido importado. A posterior carga de todos os cargos de 2022 esta em [[historical-editions]]; a posterior captura oficial de 2026 e comparacao estao em [[brazil-election-comparison]], com limitacoes explicitas e sem apuracao continua. Outros esportes e eleicoes globais continuam sujeitos a fonte/direitos, sem assinatura paga. Demanda nao comprovada.

## Conexoes
- [[index]] - Entrada do projeto.
- [[category-research]] - Evolucao da pesquisa inicial.
- [[2026-10-16-publish-sports-elections]] - Autorizacao e criterio de selecao.
- [[release-status]] - Comprovacao de publicacao.
- [[validation-workflow]] - Checks, probes e limites.
- [[architecture]] - Fronteiras dos novos componentes.
- [[project]] - Escopo do portal.
- [[2026-10-16-sports-election-release]] - Handoff da expansao publicada.
- [[current]] - Estado atual do produto.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[api-data-adequacy]] - Auditoria transversal de adequacao dos dados.
- [[sports-fx-depth]] - Contrato aprofundado de esportes/FX.
