---
tipo: sessao
projeto: global-live-data
resumo: "PR67 publicou guia Mexico GP em tres idiomas com horarios verificados e Ready completo."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-30"
atualizado: "2026-10-30"
ia: codex
maquina: macos
---

# Sessao: guia de horarios Mexico GP

## Objetivo e estado
- Executar heartbeat editorial20:12UTC, ate uma pauta apurada e publicacao autorizada.
- Main/origin limpos 0c8be70b01719617744382f4c7bd84b11030b534; PR67 integrada e anexada. CI PR/main,Production Ready/SHA/publico confirmados em [[release-status]].

## Decisoes e limites
- Uma pesquisa seis mercados/60leads; ES gran premio de méxico. Comparados44artigos; catalogo45/Motorsport2. [[editorial-publishing]].
- Quatro fontes primarias e16conversoes Python/Node; guia de agenda e diferenca US, sem resultados/cronometragem/transmissao. Ledger docs/editorial/2026-10-30-mexico-gp-times.md.
- CTA usa previsao Mexico existente, nao medicao do autódromo. Apoio de IA/ausencia de revisao humana explicitos.
- Check101,Python11,Chromium36 e QA local/publico passaram; WebKit/nativeSafari/carga nao repetidos. [[validation-workflow]].
- Ops unico exit1: METLisboa segue stale, oito feeds ready; condicao anterior preservada, nao falha de deploy.

## O que evitar
- Nao usar trafego RSS como volume mensal, garantir views ou inferir resultado esportivo.
- Nao reconstruir URL incomum F1, tratar previsao urbana como circuito ou repetir offset de sabado no domingo US.
- QA: label select nao exato; heading da cidade e Ciudad de México; esperar scroll antes da captura. Nao mudar produto para acomodar assert incorreto.
- Nao repetir conectorVercel403, alterar seguranca ou afirmar marcador por query de script vazia; HTML bruto confirmou recibo.

## Opcoes e proximo passo
- Proximo heartbeat: comparar45artigos e pesquisar no maximo uma pauta original util, com fontes atuais; pode pular se apuracao insuficiente.
- METLisboa permanece pendencia separada; nenhuma rotina/conta/chave/custo/dependencia/provider/historico mudou.
- Temporarios /tmp/gld-mexico-*; servidor3102 encerrado,piloto3147 preservado.

## Prompt inicial
1. Sincronize cerebro e confirme Git/branch/CI/host sem sobrescrever trabalho.
2. Leia docs/EDITORIAL.md e catalogo atual; execute uma pesquisa Node24 nos mercados suportados.
3. Se houver pauta nova com duas fontes primarias relevantes, confira fatos/datas,escreva EN/PT/ES e complete gates/QA.
4. So declare publicacao apos PR anexada,CI aprovado,main exata,Production Ready e paginas publicas; salve e sincronize cerebro.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Pauta,fontes e limites.
- [[release-status]] - Commits,CI e Production.
- [[validation-workflow]] - Testes e limites.
