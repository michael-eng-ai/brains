---
tipo: sessao
projeto: global-live-data
resumo: "PR37 publica leitura de placares e overs em tres idiomas, com CI e Production verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-24"
atualizado: "2026-10-24"
ia: codex
maquina: macos
---

# Sessao: leitura de placares de criquete

## Objetivo e estado
- Uma pauta original apurada, sem ampliar o produto.
- PR37 integrada; main/origin limpos em a4a5a5b1c3cf63e240a647184a72c7c3f8a0e0cc.
- Ambos jobs CI PR/main, Production Ready exato e publico verificados em [[release-status]].
- Vinte artigos; pesquisa, tres fontes e limites em [[editorial-publishing]].

## Decisoes
- Explique campos e overs com exemplos hipoteticos; nao invente placar India-Nova Zelandia.
- Reutilize filtro Cricket e indice, sem API ou novo esporte no painel de dados.
- MCC PDF atual substitui HTML 404; nao usar trechos desatualizados do guia basico ECB.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python, 35 Chromium; leitura e interacoes PT/EN/ES 390/1280.
- Publico: nove URLs, sitemap, metadata, disclosure, fontes e QA visual.
- WebKit/iOS nativo/carga nao repetidos. Probe de feeds em [[football-fx-pilot]].
- TSE RO segue bloqueado na captura anterior; dados validos, NBA desativada e piloto de nomes preservados.

## O que evitar
Nao usar 15.2 como decimal; nao inferir resultado ou causa de interesse de um termo Trends. Nao confundir CI com dados reais ou probe com disponibilidade continua.

## Proximo passo e prompt de retomada
1. Sincronize cerebro, leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Na proxima rodada execute uma pesquisa editorial:research nos seis mercados e compare com vinte artigos.
3. No maximo uma pauta pronta segue testes/QA/PR/CI/merge/Ready/publico e cerebro sincronizado.
4. Preserve escopo, custos, configuracoes e automacoes; comunique apenas novidade acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao e conteudo.
- [[release-status]] - Recibos.
- [[football-fx-pilot]] - Probe operacional.
