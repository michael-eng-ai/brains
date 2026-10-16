---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Cache do framework, cache por processo e timestamps diferentes."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-16"
---

# Cache e timestamps

Confirmado: fetch do Next usa force-cache com revalidate 60s para USGS e 3600s para MET. Cache de processo guarda dados, promessas em voo e backoff; nao e quota global nem coordenacao entre regioes/instancias.

Limites do servico: USGS freshness ate 5min da publicacao e descarte apos 6h; MET freshness ate 12h e descarte apos 24h. Expires pode antecipar obsolescencia; refreshAfter respeita o provedor mesmo se o limite de idade tornar o dado stale.

MET inicia no maximo quatro consultas por segundo por processo. Escala multiplica trafego; validar comportamento real de cache na hospedagem antes de ampliar catalogo ou promover publico.

providerUpdatedAt e a publicacao; fetchedAt e consulta original preservada em cache; expiresAt delimita frescor; generatedAt monta o envelope. ready/stale/error/not_configured devem continuar explicitos. Falha sem dado anterior retorna null, nao lista vazia.

## Feeds de descoberta

Os limites de Trends/TV e a estimativa de trafego da PR #5 ficam em [[trends-tv-discovery]]. Reuso observado de timestamps nao substitui medicao distribuida de upstream/custo.

## Persistencia separada

Historicos nao usam TTL do cache. Fonte duravel e artefato somente leitura descritos em [[historical-editions]]; trocar temporada nao apaga uma edicao arquivada.

## Janela local e auditoria de feeds

A entrega [[2026-10-16-consolidation-release]] aplica earthquakesInWindow tambem ao portal, e um relogio local atualiza as fronteiras no dashboard/portal sem refetch. Pausa em aba oculta e recomputa ao retornar. Precisao depende do relogio do dispositivo; timestamps da fonte nao sao renovados artificialmente. npm run ops:check avalia os envelopes existentes e datas, sem logar dados de visitantes ou corpos de fornecedores. HTTP 200 nao prova ready. Contrato e budgets atuais: docs/OPERATIONS.md.

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[usgs-earthquakes]] - Fonte USGS limitada a janela movel de 24 horas.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[consolidation-audit]] - Auditoria atual, evidencia e limites de consolidacao.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
