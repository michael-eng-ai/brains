---
tipo: sessao
projeto: global-live-data
resumo: "Guia de registros sismicos publicado; Production Ready e paginas verificadas."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-22"
atualizado: "2026-10-22"
ia: codex
maquina: macos
---

# Sessao: leitura de registros sismicos

## Objetivo da sessao
Apurar ate uma pauta do Trends e publicar texto original PT/EN/ES pelo fluxo autorizado.

## Estado
- PR31 integrada; main/origin limpos em 843294bc37895b86f165b8e21c8b19c783f45137.
- Ambos jobs CI da PR aprovados; Production Ready e publico conferidos. CI main tem agregado aprovado e Chromium pendente na instalacao de dependencias as19:39:42UTC; recibos em [[release-status]].
- Quinze artigos. Fontes, selecao e limites em [[editorial-publishing]].
- Bloqueio TSE PB e piloto de nomes sem respostas reais preservados.

## Decisoes tomadas e motivos
- Publicar explicacao de medidas/revisoes; a busca por magnitude nao prova terremoto atual ou causa da tendencia.
- Novo filtro editorial earthquakes; CTA Natureza existente, sem fonte JMA nem alertas/previsoes novos.

## Opcoes em aberto
- Manter selecao editorial por utilidade e verificacao; nenhum minimo de publicacoes nem promessa de audiencia.

## O que evitar
- FAQ USGS expirou: nao usar o snippet como fonte. Paginas primarias abertas sustentam a versao publicada.
- Nao converter intensidade JMA em magnitude nem inventar um evento para ilustrar o texto.
- Nao alegar WebKit/iOS/carga novos; nao repetidos nesta entrega.

## Proximo passo concreto
Conferir a conclusao do CI main39840761870 e atualizar recibo; depois, nova pesquisa de seis mercados na cadencia existente, evitando duplicatas.

## Prompt inicial para a proxima sessao
1. Sincronize cerebro, leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; verifique Git e recibos.
2. Execute editorial:research com Node24 para ate seis mercados e selecione no maximo uma pauta verificavel.
3. Cumpra checks/UI/PR/CI/Ready/publico para entrega pronta; preserve TSE, teste de nomes e automacoes.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Retomada.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao e escopo.
- [[release-status]] - Evidencias de entrega.
