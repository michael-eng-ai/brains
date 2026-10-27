---
tipo: sessao
projeto: global-live-data
resumo: "PR49 publica guia R/H/E; CI, Ready e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-27"
atualizado: "2026-10-27"
ia: codex
maquina: macos
---

# Sessao: leitura do placar de beisebol

## Estado
- PR49 integrada em e2fddce8469e31a4e34a63931f3d36c4743dd00d; main/origin limpos.
- Ambos CI, Production Ready/SHA e paginas publicas verificados.
- Quatro fontes MLB e exemplo ficticio em [[editorial-publishing]].
- Evidencias e limitacoes em [[release-status]].

## Decisoes
- Query brewers e pista de interesse, nao prova de jogo ou resultado.
- Beisebol e somente filtro de artigos; nao existe novo feed.
- Catalogo 31; os demais artigos, dados e automacoes preservados.
- Fonte consultada e publicacao datadas em UTC; disclosure mantido.
- Conector Vercel 403/extensao indisponivel; UI nativa validou painel.
- Na barra de enderecos, usar paste para evitar truncamento de typeText.
- Nenhuma mudanca de conta, acesso, custo, provider ou frequencia.

## Validacao
- 11 Python, 101 unitarios/check e 35 Chromium passaram.
- Checks e QA repetidos apos ajustes finais de texto; sem falhas.
- Leitura local/publica 390/1280 px, tres idiomas, teclado e links.
- WebKit/iOS nativo/carga nao repetidos nesta edicao de conteudo.
- Probe representativo e detalhes do deploy em [[release-status]].

## Retomada
1. Sincronize cerebro; leia current/esta sessao e docs/EDITORIAL.md.
2. Confira Git livre/main atualizada; use Node 24 e pesquisa atual.
3. Compare 31 artigos, escolha no maximo uma pauta util e bem apurada.
4. Se pronta: ledger, EN/PT/ES, testes/QA/PR/ambos CI/merge/Ready/SHA/publico.
5. Salve/sincronize; pule sem apuracao. Nao alterar cadencia ou escopo.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
