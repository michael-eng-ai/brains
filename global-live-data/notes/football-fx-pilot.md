---
tipo: "conceito"
projeto: "global-live-data"
resumo: "OpenLigaDB e Frankfurter integradas somente na previa local, com dados reais e cache limitado."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Piloto de futebol e cambio

Confirmado no commit local b16718c8dfc1f09204707f133103347c1ed3007e, branch codex/mobile-category-lab. Documento principal: docs/FOOTBALL-FX-PILOT.md no repositorio. Nenhum push, PR ou deployment desta expansao.

Rota /api/lab/data, server-only, recebe somente league e base allowlisted. Pagina e API retornam 404 por padrao e na Vercel, mesmo com opt-in. Noindex/no-store. Previa em http://127.0.0.1:3101/pt/lab, com EN/ES tambem; servidor deve ficar em loopback.

Futebol: OpenLigaDB, dados comunitarios ODbL 1.0, sem chave. Bundesliga bl1/4937 e UEFA Champions League ucl/4946, temporada 2026/27. Rodadas anterior/atual/seguinte da fonte, cache cinco minutos, consulta de ultima alteracao antes de baixar rodada inalterada. Escopo europeu limitado; revisar IDs/temporada antes da proxima temporada. Nao afirmar cobertura global ou placar instantaneo.

Semantica: placar ausente nao e zero; resultado por resultTypeKind, conclusao por matchIsFinished, data UTC de inicio. Jogo com horario passado nao vira ao vivo automaticamente. Timestamp de edicao sem offset fica null, sem inventar fuso. Penalidades sao identificadas como tal. Resultados encerrados aparecem do mais recente ao mais antigo.

Cambio: Frankfurter v2, bases USD/EUR/GBP/BRL/JPY, quatro alvos por base, cache de uma hora, data de referencia por taxa. Recusa taxa invalida, duplicada, futura ou com mais de sete dias. Conversor indicativo sem tarifas/spread, multiplicacao decimal e arredondamento unico; zero valido e campo vazio distintos. HTTP 304 preserva a leitura original e atualiza somente a verificacao.

Transporte: timeout de oito segundos incluindo corpo, limite de 1 MB, redirects bloqueados, Retry-After/403/429 com pausa por fornecedor neste processo. Deduplicacao de requests concorrentes. Falha preserva ultimo dado explicitamente stale por no maximo um dia (futebol) ou sete dias (cambio) apos ultima verificacao boa. Erro sem dado retorna null; vazio legitimo permanece vazio. Maps locais nao sao limitadores distribuidos; Next fetch cache nao e usado neste piloto.

Evidencia real em 2026-10-15 por volta de 22:56 UTC: 27 jogos Bundesliga (9 encerrados), 54 Champions League (36 encerrados), quatro taxas USD com data 2026-10-15. Repeticao preservou timestamps via cache. Sao respostas observadas, nao certificacao independente dos resultados comunitarios. Nomes de equipes/pessoas e corpos brutos nao foram copiados para o cerebro.

Referencias oficiais verificadas: https://api.openligadb.de/ ; https://github.com/OpenLigaDB/OpenLigaDB-Samples ; https://www.openligadb.de/lizenz ; https://frankfurter.dev/ . Fonte/licenca ficam visiveis na UI. Sem logos/fotos copiados, nova assinatura ou credencial. Revisar obrigacoes de redistribuicao, custos/quota agregada e ampliacao de cobertura antes da publicacao.

## Conexoes
- [[index]] - Mapa do projeto.
- [[2026-10-15-football-fx-first]] - Escolha do proprietario.
- [[category-research]] - Experimento anterior e alternativas.
- [[environment]] - Gate local e runtime.
- [[validation-workflow]] - QA e verificacoes realizadas.
- [[2026-10-15-football-fx-pilot]] - Handoff da implementacao.
- [[current]] - Contexto e evidencia do piloto real.
