---
tipo: decisao
projeto: global-live-data
resumo: "Corrigir o frescor USGS, testar, integrar e publicar por autorizacao explicita."
tags: [global-live-data, decisao, usgs, cache]
atualizado: "2026-10-19"
---

# Corrigir a atualizacao USGS

Em 19/10/2026 o proprietario pediu investigar os dados USGS desatualizados, corrigir a atualizacao, executar testes, integrar main, publicar e atualizar o cerebro.

A correcao de implementacao remove apenas a camada Next SWR do USGS, mantem cache/coalescencia por processo e politicas de falha/frescor, e passa a atualizar natureza a cada minuto visivel. Futebol/FX continuam a cada cinco minutos. A latencia de transporte deixa de adiar o proximo intervalo de sucesso. O tradeoff de trafego por processo e registrado em docs/USGS-REFRESH.md; nao equivale a quota global ou economia medida.

Sem conta, fonte, cidade, dependencia, credencial, infraestrutura, gasto contratado ou automacao nova. A autorizacao vale para esta correcao, nao para expansao de produto.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[provider-cache]] - Decisao tecnica e limites.
- [[usgs-earthquakes]] - Fonte e semantica.
- [[2026-10-19-usgs-refresh-release]] - Handoff.
