---
tipo: sessao
projeto: global-live-data
resumo: "PR41 publica guia Paquistao-Inglaterra; CI, Production e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-25"
atualizado: "2026-10-25"
ia: codex
maquina: macos
---

# Sessao: horarios Paquistao-Inglaterra

## Objetivo e estado
- Uma pauta original EN/PT/ES, sem ampliar os feeds.
- PR41 integrada; main/origin limpos em e31f70bf35b5f69f6e3735b8af4e81844141f6e6.
- Ambos jobs CI PR/main, Production Ready exato e publico em [[release-status]].
- Catalogo com 24 artigos; pesquisa e limites em [[editorial-publishing]].

## Decisoes e opcoes
- Guia datado, sem inferir inicio real, placar ou finalistas pelo calendario.
- Duas publicacoes ECB e oito conversoes de fuso para a data exata.
- Filtro Criquete e indice existentes; nenhuma nova fonte de placares.
- Proxima pauta depende de pesquisa nova; nenhuma opcao adicional aprovada.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python e 35 Chromium; QA PT/EN/ES em 390/1280 pixels.
- Suites finais passaram apos ajuste terminologico PT; nenhum teste falhou.
- Ops retornou exit 1: TV stale, outros oito ready; pendencia em [[trends-tv-discovery]].
- Publico: nove URLs, sitemap, metadata, fontes e navegacao responsiva.
- Capturas locais/publicas inspecionadas; sem overflow ou erros de console.
- WebKit, iOS nativo e carga nao repetidos. Ops em [[release-status]].
- TSE, NBA desativada e piloto de nomes preservados; nenhum novo servico/custo.

## O que evitar
PCB 403 e extracao ICC incompleta nao comprovam detalhes. Nao substituir fontes lidas por snippets nem chamar duas publicacoes ECB de apuracao independente. CI e Ready nao provam saude continua.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Rode editorial:research nos seis mercados e compare com 24 artigos.
3. No maximo uma pauta pronta segue testes, QA, PR, CI, merge, Ready, publico e cerebro.
4. Preserve configuracoes, custos, frequencias e escopo; avise somente mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
- [[trends-tv-discovery]] - Cache TV observado.
