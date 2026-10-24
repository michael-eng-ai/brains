---
tipo: sessao
projeto: global-live-data
resumo: "PR38 publica guia de jogos a menos, com CI, Production e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-24"
atualizado: "2026-10-24"
ia: codex
maquina: macos
---

# Sessao: jogos a menos na Premier League

## Objetivo e estado
- Uma pauta original EN/PT/ES, sem ampliar o produto.
- PR38 integrada; main/origin limpos em ca83b0879dc1c3d953f98ac3a96caafee72f4010.
- Ambos jobs CI PR/main, Production Ready exato e publico verificados em [[release-status]].
- Catalogo com 21 artigos; pesquisa, duas fontes e limites em [[editorial-publishing]].

## Decisoes
- Compare pontos e jogos com exemplos hipoteticos; nao invente classificacao atual.
- Referencia de medias de 2025 claramente datada, usada somente para metodologia.
- Reutilize filtro Futebol e destino interno; nenhuma API Premier League.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python, 35 Chromium; QA PT/EN/ES em 390/1280 pixels e capturas inspecionadas.
- Primeiro browser local 34/35: contagem Futebol de 4 para 5 corrigida; suite completa passou.
- CI main teve falha sintetica USD; repeticao unica sem alterar SHA passou, evidencia em [[release-status]].
- Publico: 9 URLs, sitemap, metadata, fontes/disclosure e navegacao responsiva.
- WebKit, iOS nativo e carga nao repetidos. Ops em [[football-fx-pilot]].
- TSE reconciliou RO as 12:43 com changed false, sem publicar; NBA desativada e piloto de nomes preservados.

## O que evitar
Nao converter jogo pendente em tres pontos nem media em previsao. Nao usar snippet de tabela como classificacao verificada. Nao confundir validacao do artigo com saude continua de feeds.

## Proximo passo e prompt de retomada
1. Sincronize cerebro, leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Rode uma pesquisa atual editorial:research nos seis mercados e compare com 21 artigos.
3. No maximo uma pauta pronta segue testes, QA, PR, CI, merge, Ready, publico e cerebro.
4. Preserve custos/configuracoes/automacoes e comunique somente mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
- [[football-fx-pilot]] - Probe operacional.
