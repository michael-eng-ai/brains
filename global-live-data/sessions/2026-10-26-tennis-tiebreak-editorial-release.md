---
tipo: sessao
projeto: global-live-data
resumo: "PR47 publica guia de tenis; CI, Ready e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-26"
atualizado: "2026-10-26"
ia: codex
maquina: macos
---

# Sessao: placar de tenis e tie-break

## Objetivo e estado
- Uma pauta EN/PT/ES; PR47 integrada em 08b7632d559b4ccd663dc199b4ef9a5a30f9f477.
- Main/origin limpos; ambos CI, Production Ready/SHA e publico verificados.
- Apuracao em [[editorial-publishing]], recibos em [[release-status]].

## Decisoes e limites
- Query matteo berrettini EUA/Espanha; nao inferir jogo ou causa da busca.
- ITF 2026/USTA; exemplo hipotetico: 16 games para cada lado, sets 2-1.
- Catalogo com 29 artigos, Tenis com 2 artigos, CTA indice; nenhuma API ou resultado novo.
- Apoio IA/sem revisao humana e referencias preservados.
- Conector 403; painel Datasanti acessivel, sem alterar seguranca.

## Validacao
- 11 Python, 101 unitarios, check e 35 Chromium passaram apos edicoes finais.
- QA EN/PT/ES em 390/1280 px local/publico, leitura/filtro/teclado/idiomas/fontes/CTA.
- Sem overflow/overlay/console; capturas inspecionadas.
- Formatter npm aninhado falhou; chamada direta resolveu.
- Browser plugin ausente; Playwright. WebKit/iOS/carga nao repetidos.
- Ops em [[release-status]]; TSE/historico/NBA/piloto/cadencia preservados.

## Prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS e docs/EDITORIAL.md.
2. Confira Git; Node 24, pesquisa atual nos seis mercados.
3. Compare os 29 artigos; no maximo uma pauta util com duas fontes primarias.
4. Se pronta, ledger/ENPTES/checks/QA/PR/CI/merge/Ready/SHA/publico.
5. Salve/sincronize; pule sem apuracao. Nao alterar contas/custos/cadencia.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
