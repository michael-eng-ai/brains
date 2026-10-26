---
tipo: "conceito"
projeto: "global-live-data"
resumo: "OpenLigaDB e Frankfurter publicadas com paginas internas, cache compartilhado e datas explicitas."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-26"
---

# Futebol e cambio

Piloto inicial no commit b16718c; publicacao do portal e paginas proprias confirmada pela PR #4 e [[release-status]]. Documento principal: docs/FOOTBALL-FX-PILOT.md no repositorio.

Rota /api/lab/data, server-only, recebe somente league e base allowlisted. Pagina e API retornam 404 por padrao e na Vercel, mesmo com opt-in. Noindex/no-store. Previa em http://127.0.0.1:3101/pt/lab, com EN/ES tambem; servidor deve ficar em loopback.

Futebol: OpenLigaDB, dados comunitarios ODbL 1.0, sem chave. Bundesliga bl1/4937 e UEFA Champions League ucl/4946, temporada 2026/27. Rodadas anterior/atual/seguinte da fonte, cache cinco minutos, consulta de ultima alteracao antes de baixar rodada inalterada. Escopo europeu limitado; revisar IDs/temporada antes da proxima temporada. Nao afirmar cobertura global ou placar instantaneo.

Semantica: placar ausente nao e zero; resultado por resultTypeKind, conclusao por matchIsFinished, data UTC de inicio. Jogo com horario passado nao vira ao vivo automaticamente. Timestamp de edicao sem offset fica null, sem inventar fuso. Penalidades sao identificadas como tal. Resultados encerrados aparecem do mais recente ao mais antigo.

Cambio: Frankfurter v2, bases USD/EUR/GBP/BRL/JPY, quatro alvos por base, cache de uma hora, data de referencia por taxa. Recusa taxa invalida, duplicada, futura ou com mais de sete dias. Conversor indicativo sem tarifas/spread, multiplicacao decimal e arredondamento unico; zero valido e campo vazio distintos. HTTP 304 preserva a leitura original e atualiza somente a verificacao.

Transporte: timeout de oito segundos incluindo corpo, limite de 1 MB, redirects bloqueados, Retry-After/403/429 com pausa por fornecedor neste processo. Deduplicacao de requests concorrentes. Falha preserva ultimo dado explicitamente stale por no maximo um dia (futebol) ou sete dias (cambio) apos ultima verificacao boa. Erro sem dado retorna null; vazio legitimo permanece vazio. Maps locais nao sao limitadores distribuidos. O transporte interno usa no-store; a versao publica envolve snapshots normalizados no Data Cache compartilhado, descrito abaixo.

Evidencia real em 2026-10-15 por volta de 22:56 UTC: 27 jogos Bundesliga (9 encerrados), 54 Champions League (36 encerrados), quatro taxas USD com data 2026-10-15. Repeticao preservou timestamps via cache. Sao respostas observadas, nao certificacao independente dos resultados comunitarios. Nomes de equipes/pessoas e corpos brutos nao foram copiados para o cerebro.

Referencias oficiais verificadas: https://api.openligadb.de/ ; https://github.com/OpenLigaDB/OpenLigaDB-Samples ; https://www.openligadb.de/lizenz ; https://frankfurter.dev/ . Fonte/licenca ficam visiveis na UI. Sem logos/fotos copiados, nova assinatura ou credencial. Atribuicao ODbL e acesso ao dataset adaptado ficam na metodologia; custos/quota agregada e ampliacao continuam exigindo avaliacao.

## Portal e cache publico

Home /[lang] com cards de dados abre /football, /exchange e /nature. /live redireciona ao portal; links antigos ?city= preservam a cidade no redirecionamento para natureza. Links Dados na fonte removidos dos resultados e taxas; creditos levam a metodologia interna. Cards mostram proximo jogo/ultimo resultado, referencias FX datadas e atividade sismica, com refresh a cada cinco minutos enquanto visivel. Categorias tem navegacao, retorno e atalhos para continuar explorando. EN/PT/ES preservados, sem trackers ou armazenamento de visitante.

/api/live valida os mesmos limites antes de consultar. lib/public-feeds.ts usa unstable_cache no projeto sem Cache Components: duas chaves de futebol (300s) e cinco FX (3600s), independentes de combinacoes de query. Timestamps originais sao armazenados e verificados apos cada leitura; stale-while-revalidate nao ganha timestamp novo. Snapshot vencido vira stale e ultrapassar um dia/sete dias remove os dados; data FX e validada de novo. Erros tambem ficam em cache; proxima tentativa considera intervalo compartilhado e Retry-After maior.

Estimativa com cache quente em uma regiao: ate 14 calls futebol/5min, 8 quando rodadas inalteradas, e 5 calls FX/h. Regioes, eviccoes e corrida fria podem multiplicar; nao e garantia de quota global. Nenhum servico pago ou chave nova. Medir agregado antes de promocao ampla. Uso observado e resultado de producao em [[release-status]].

## Temporadas preservadas

As edicoes 2025/26 das duas ligas foram arquivadas independentemente dos feeds atuais; guardas de troca de temporada e detalhes em [[historical-editions]]. FX diario nao ganhou serie historica nesta entrega.

## Recuperacao USD e atualizacao da pagina, 19 outubro local

O incidente USD de 18:47 UTC nao identifica causa upstream; nao afirmar HTTP 403, bloqueio ou mudanca de schema. Na investigacao autorizada, antes de editar, fonte direta/publico latest/history estavam ready em 20/10 00:32 UTC (19/10 local). Quatro taxas USD, datas 19/20 por par, historico com 359 observacoes. Vercel Production na janela de 12h exibiu linha com 13 chamadas Frankfurter/0% erros HTTP; agregado nao prova ausencia de timeout ou falha de validacao no incidente. Nenhum relaxamento de datas futuras/idade/valores.

Defeito reproduzido: DataPilot consultava somente ao montar, trocar a selecao ou clicar; podia manter erro indefinidamente apos servidor recuperar. Agora agenda leitura pelo nextRefreshAt do feed relevante, minimo de 60s para snapshot expirado/ausencia de prazo/erro HTTP, prazo de 20s no cliente, pausa por visibilidade, retomada vencida sem duplicacao e descarte de respostas de selecao antiga. Conversor preserva valor e selecao no refresh automatico. Prazo futuro do servidor nao e encurtado. Temporizadores longos acordam para reavaliar, sem overflow. Contrato/evidencias: docs/FX-REFRESH.md.

Cache da fonte de 1h, Next compartilhado/SWR, backoff/condicionais e historico ficam intactos. Aba saudavel consulta latest normalmente uma vez por hora; resposta SWR antiga pode exigir leitura 1min depois. Erro persistente sem prazo: maximo de 60 leituras HTTP/h/aba visivel, nao 60 chamadas Frankfurter. /api/live inclui envelope de futebol em cache; cache/regioes/cold starts nao sao quota distribuida. O historico mantem a cadencia de 1h. Sem API/chave/infra/automacao nova. [[validation-workflow]] e [[release-status]] distinguem fixtures, dados reais e publicacao.

## Incidente USD observado em 23 outubro, 19:36 UTC

Durante a pesquisa editorial, /api/live?league=bl1&base=USD retornou HTTP200 com fx.status=error, data/checkedAt/retrievedAt nulos e nextRefreshAt: 2026-10-23T20:36:03.754Z. Em19:37:26Z, Chromium anonimo confirmou indisponibilidade de latest na pagina /exchange EN/PT/ES, enquanto o historico USD estava ready; sem overflow a390px ou pageerrors. Captura mobile inspecionada. Isso sucede a observacao saudavel das13:37UTC, sem provar quando o incidente comecou.

Uma leitura direta ao endpoint v2/rates?base=USD&quotes=EUR,GBP,BRL,JPY retornou HTTP200 com Date=2026-10-23T19:36:23Z: BRL com referencia23out, mas EUR/GBP/JPY com24out. SHA256 do corpo: 58f8a2483e47c1714a972cad62da21aa7c1a9ec05530f37bdb324cbe93c14b50. normalizeRates inalterado rejeitou o conjunto e cada uma das tres linhas futuras, aceitando BRL isoladamente em19:37:03.256Z. Reproducao local confirma o mecanismo; o corpo upstream recebido pela Vercel nao foi observado, portanto a causa exata em producao permanece uma hipotese consistente, nao prova de erro HTTP ou outage completo da fonte.

Uma segunda leitura diagnostica limitada, com date=2026-10-23, retornou quatro pares com essa data e passou no normalizador original em19:37:49.084Z. Isso aponta uma opcao para investigar fallback datado, sem aprovar/implementar um contrato novo nem garantir recuperacao. Nao alterar datas da fonte, aceitar futuro, trocar null por zero, apagar cache a forca ou atribuir valores atuais a exemplos. Manter limites de payload/timeout/backoff/condicionais e semantica diaria. Proximo passo tecnico: revalidar apos prazo compartilhado, conferir a politica de datas do provedor e, se necessario, desenhar fallback limitado por data com testes antes de alterar/publicar o adapter.

Node24.22.0: 18 testes offline de tests/pilot.test.ts e tests/depth.test.ts passaram. Reproducao com payload real capturado e UI publica sao evidencias separadas. Check/build/e2e completos, WebKit/iOS/carga/CI nao repetidos porque nao houve mudanca no app. Main/origin limpos em 28d226858d57a5c548624794ddd20ea549cf1973; nenhum commit/PR/deploy do produto. Evidencias locais /tmp/gld-usd-20261023-{source.json,validation.json,dated-validation.json,ui.json,tests.log,mobile.png}. Uma primeira tentativa apontou a rota inexistente /api/pilot e recebeu404; foi corrigida para /api/live e nao e evidencia do incidente.

## Verificacao operacional de 24 outubro, 01:49 UTC

Durante a publicacao editorial PR36, uma execucao de ops:check fez sete leituras representativas e saiu2. Em 2026-10-24T01:49:23.892Z, /api/live?league=bl1&base=USD retornou fx error, sem checkedAt/retrievedAt; nextRefreshAt2026-10-24T02:48:45.719Z. Oito outros feeds estavam ready, incluindo Natureza. Incidente USD persiste apos a virada UTC; nao se reconsultou a fonte direta, historico ou cada moeda nesta rodada, portanto o corpo e a causa atuais nao foram estabelecidos. Diagnostico de23out continua evidencia historica, nao prova do payload atual. Sem reparo, afrouxamento de gates ou mudanca de provider/cache. Evidencia /tmp/gld-rainfall-ops.json; contexto em [[release-status]].

## Probe durante a PR37, 24 outubro

Ops em 2026-10-24T07:50:42.859Z: oito feeds representativos ready e USD error em sete leituras; incidente anterior persiste, sem reparo nesta entrega. Sete leituras limitadas por ops:check, sem recaptura direta do provedor ou diagnostico novo. Estado de USD distinto da verificacao do artigo e sem reparo de codigo nesta entrega. Evidencia /tmp/gld-cricket-ops.json; [[release-status]].

## Probe durante a PR38, 24 outubro

Ops em 2026-10-24T13:57:21.672Z: oito feeds representativos ready e USD error em sete leituras; incidente anterior persiste, sem reparo nesta entrega. Sete leituras limitadas por ops:check; nenhuma recaptura direta do provedor ou reparo nesta entrega. Estado USD e verificacao do artigo sao independentes. Evidencia /tmp/gld-premier-ops.json; [[release-status]].

## Probe durante PR39, 24 outubro

Ops em 2026-10-24T19:56:11.866Z: sete feeds representativos ready, TV/streaming stale e USD error em sete leituras; nenhum reparo de provedor nesta entrega. Sete leituras limitadas por ops:check; nenhuma recaptura direta do provedor ou reparo nesta entrega. Estado USD e verificacao do artigo sao independentes. Evidencia /tmp/gld-u17-ops.json; [[release-status]].

## Probe durante PR40, 25 outubro

Ops em 2026-10-25T02:02:47.053Z: nove feeds representativos ready em sete leituras, incluindo USD e TV/streaming; sem reparo de provedor nesta entrega. Sete leituras limitadas por ops:check; nenhuma recaptura direta do provedor ou reparo nesta entrega. Estado USD e verificacao do artigo sao independentes; nao inferir a causa a partir deste probe. Evidencia /tmp/gld-nhl-ops.json; [[release-status]].

## Nova indisponibilidade USD durante PR42

Ops unico 2026-10-25T14:08:17.022Z: USD reportedStatus/status error, checkedAt/retrievedAt nulos, proxima tentativa 2026-10-25T15:07:54.346Z. Oito outros feeds representativos ready, incluindo TV. A leitura saudavel anterior das08:02UTC nao se manteve; inicio e causa atual nao estabelecidos. Sem nova leitura direta Frankfurter, historico ou corpo recebido pela Vercel. Nao atribuir automaticamente a datas futuras nem a falha sintetica do CI. Nenhum reparo, afrouxamento de gates ou mudanca de provedor/cache nesta entrega. Evidencia /tmp/gld-usgp-ops.json; [[release-status]].

## Probe USD durante PR43

Ops unico 2026-10-25T19:59:04.334Z: USD reportedStatus/status error, checkedAt/retrievedAt nulos, nextRefreshAt 2026-10-25T20:58:22.501Z; oito outros feeds ready. A indisponibilidade observada as14:08UTC persiste nesta leitura. Sem diagnostico adicional, reparo de codigo ou consulta direta ao upstream nesta rodada editorial. Nao inferir recuperacao permanente nem causa. Recibo /tmp/gld-appletv-ops.json; [[release-status]].

## USD disponivel na verificacao de 26 outubro, 00:51 UTC

Um unico npm run ops:check em 2026-10-26T00:51:48.820Z retornou exit 0: nove feeds representativos ready, incluindo USD. Para FX, status/reportedStatus ready, checkedAt/retrievedAt 2026-10-26T00:51:31.127Z, nextRefreshAt 2026-10-26T01:51:31.127Z, sourceUpdatedAt null. A rodada anterior, 25 outubro 19:59 UTC, havia reportado error. Isto e recuperacao observada neste probe, sem causa atribuida, garantia de continuidade ou afirmacao de reparo. Nenhum codigo USD, consulta direta ao upstream, retry ou configuracao alterado nesta entrega TSE. Evidencia /tmp/gld-tse-20261026-0044-ops.json e -ops.log; preservar o historico do incidente acima.

## Conexoes
- [[index]] - Mapa do projeto.
- [[2026-10-15-football-fx-first]] - Escolha do proprietario.
- [[category-research]] - Experimento anterior e alternativas.
- [[environment]] - Gate local e runtime.
- [[validation-workflow]] - QA e verificacoes realizadas.
- [[2026-10-15-football-fx-pilot]] - Handoff da implementacao.
- [[current]] - Contexto e evidencia do piloto real.

- [[2026-10-15-publish-portal]] - Autorizacao e revisao de navegacao solicitadas antes do merge.
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[architecture]] - Direcao e implementacao atualizadas.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[api-data-adequacy]] - Auditoria transversal de adequacao dos dados.
- [[sports-fx-depth]] - Contrato aprofundado de esportes/FX.
- [[2026-10-19-usd-fx-refresh-release]] - Handoff da correcao.
- [[2026-10-19-repair-usd-fx-refresh]] - Autorizacao da correcao.
- [[2026-10-23-editorial-usd-date-incident]] - Handoff da pesquisa e incidente USD.
- [[editorial-publishing]] - Pesquisa que encontrou a indisponibilidade USD.
- [[2026-10-24-rainfall-editorial-release]] - Probe USD durante a entrega editorial.
- [[2026-10-24-cricket-overs-editorial-release]] - Probe durante a entrega.
- [[2026-10-24-premier-games-in-hand-editorial-release]] - Probe durante entrega.
- [[2026-10-24-u17-women-editorial-release]] - Probe durante entrega.
- [[2026-10-25-nhl-shootout-editorial-release]] - Probe durante entrega.
- [[2026-10-25-us-gp-grid-editorial-release]] - USD na entrega PR42.
- [[2026-10-25-apple-tv-editorial-release]] - Probe USD nesta entrega.
- [[2026-10-26-tse-rn-pe-revision-release]] - Disponibilidade USD observada.
