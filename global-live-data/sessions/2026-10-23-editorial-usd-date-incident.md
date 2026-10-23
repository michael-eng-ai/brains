---
tipo: sessao
projeto: global-live-data
resumo: "Pauta USD adiada; latest indisponivel e rejeicao de datas futuras reproduzida."
tags: [global-live-data, sessao, editorial, cambio, incidente]
data: "2026-10-23"
atualizado: "2026-10-23"
ia: codex
maquina: macos
---

# Sessao: pesquisa editorial e falha USD

## Objetivo
Pesquisar uma pauta distinta e verificar seu destino antes de eventual publicacao.

## Estado
- Main/origin limpos em 28d226858d57a5c548624794ddd20ea549cf1973; catalogo18artigos, nenhum novo commit/PR/deploy.
- Seis mercados ready; guia USD investigado e adiado. Apuracao em [[editorial-publishing]].
- Latest USD indisponivel EN/PT/ES; historico ready. Evidencias e limites em [[football-fx-pilot]].
- 18 testes offline piloto/historico aprovados; normalizador rejeitou tres datas futuras capturadas na fonte. Consulta datada de hoje passou.

## Decisoes e limites
- Adiar somente esta pauta; nao mudar frequencia/escopo editorial.
- Diagnostico de validacao reproduzido localmente nao prova qual corpo a Vercel recebeu.
- Nao afrouxar guardas de data ou fabricar atualidade para recuperar disponibilidade.
- Sem mudanca no app: check/build/e2e completos, WebKit/iOS/carga/CI nao executados.

## Proximo passo
Revalidar latest apos nextRefreshAt20:36:03.754UTC e conferir semantica de datas da fonte. Se persistir, investigar fallback limitado por data, mantendo validacao/cache/backoff; nao implementar como efeito colateral da rotina editorial. A consulta explicita para23out e apenas evidencia de viabilidade pontual.

## Prompt para continuacao
1. Sincronize cerebro; leia current, esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Consulte [[football-fx-pilot]] para reproduzir/verificar o incidente sem relaxar datas ou repetir probes em loop.
3. Na proxima rodada editorial, pesquise novamente e publique no maximo uma pauta pronta; mantenha18artigos e todas as datas ate haver entrega validada.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Pesquisa e decisao.
- [[football-fx-pilot]] - Incidente e diagnostico.
