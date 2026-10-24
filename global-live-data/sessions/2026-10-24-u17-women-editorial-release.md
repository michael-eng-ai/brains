---
tipo: sessao
projeto: global-live-data
resumo: "PR39 publica guia Mundial Sub-17, com CI, Production e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-24"
atualizado: "2026-10-24"
ia: codex
maquina: macos
---

# Sessao: classificacao do Mundial Feminino Sub-17

## Objetivo e estado
- Uma pauta original EN/PT/ES, sem ampliar o produto.
- PR39 integrada; main/origin limpos em 9d22a5a4079efa33414ae12a0e8c74375814b992.
- Ambos jobs CI PR/main, Production Ready exato e publico verificados em [[release-status]].
- Catalogo com 22 artigos; pesquisa, tres fontes e limites em [[editorial-publishing]].

## Decisoes
- Explicar formato/calendario sem anunciar resultados ou classificados.
- Excluir snippets e contagens historicas divergentes; nao inventar desempates.
- Reutilizar filtro Futebol e destino interno, com cobertura ausente explicita.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python, 35 Chromium; QA PT/EN/ES em 390/1280 pixels.
- Publico: nove URLs, sitemap, metadata, fontes/disclosure e navegacao responsiva.
- Capturas locais/publicas inspecionadas; sem overflow ou erros de console.
- WebKit, iOS nativo e carga nao repetidos. Ops em [[football-fx-pilot]].
- TSE, NBA desativada e piloto de nomes preservados; nenhum novo servico ou custo.

## O que evitar
Nao tratar terceiro lugar como vaga garantida nem agenda como resultado. Nao usar snippet como fonte lida. CI e Ready nao estabelecem saude continua dos feeds.

## Proximo passo e prompt de retomada
1. Sincronize cerebro, leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Rode pesquisa atual editorial:research nos seis mercados e compare com 22 artigos.
3. No maximo uma pauta pronta segue testes, QA, PR, CI, merge, Ready, publico e cerebro.
4. Preserve configuracoes, custos, frequencias e escopo; avise somente mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
- [[football-fx-pilot]] - Probe operacional.
- [[trends-tv-discovery]] - Estado TV observado.
