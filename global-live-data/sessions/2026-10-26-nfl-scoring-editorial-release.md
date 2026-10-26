---
tipo: sessao
projeto: global-live-data
resumo: "PR45 publica guia NFL; testes, CI, Ready e paginas verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-26"
atualizado: "2026-10-26"
ia: codex
maquina: macos
---

# Sessao: pontuacao NFL

## Objetivo e estado
- Uma pauta original trilingue; PR45 integrada em 8f6c0eef2971b19e4cd24b58ce5739b4029a91e7.
- Main/origin limpos; ambos CI e Production Ready exatos, publico verificado.
- Pesquisa, fontes e limites em [[editorial-publishing]]; recibos em [[release-status]].

## Decisoes
- Seis mercados consultados; chiefs BR escolhido, sem deduzir evento pela busca.
- Regra 11 NFL 2026 e glossario profissional; excluir glossario escolar/regulamento antigo.
- Exemplo hipotetico, sem resultado real ou feed NFL; filtro de leitura e CTA interno.
- Catalogo 27, AI/no-human-review e fontes preservados; nenhuma imagem/texto copiado.

## Validacao e limites
- 11 Python, 101 unitarios e check; primeiro Chromium 34/35 por contagem antiga 26.
- Contagem 27 corrigida; check completo e 35 Chromium passaram; CI PR aprovado.
- CI main falhou em FX sintetico: possivel corrida de relogio; uma reexecucao passou.
- Evidencia inicial preservada; nenhum gate/teste FX relaxado. Se reincidir, corrigir sincronizacao.
- QA local/publico EN/PT/ES 390/1280: filtro, teclado, idiomas, sumario/fontes/CTA/retorno.
- Nove URLs publicas/sitemap e deploy exato; capturas inspecionadas, console/overflow limpos.
- Browser plugin indisponivel; Playwright do projeto. WebKit/iOS/carga nao repetidos.
- Ops: nove feeds representativos ready, incluindo USD (ops exit 0). Sem promessa de disponibilidade continua.
- TSE PR44, historico, NBA preparada e piloto de nomes preservados.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS e docs/EDITORIAL.md; confira Git.
2. Node 24, uma pesquisa atual nos seis mercados; compare os 27 artigos existentes.
3. No maximo uma pauta apurada, duas fontes primarias, ledger/EN/PT/ES; sem duplicatas.
4. Se pronta, checks/QA/PR/ambos CI/merge/Ready exato/publico/cerebro; caso contrario pule.
5. Nao mudar frequencia, contas, gastos, chaves, anuncios, analytics ou escopo de feeds.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao e limites.
- [[release-status]] - Publicacao.
