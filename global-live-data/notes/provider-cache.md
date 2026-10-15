---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Cache do framework, cache por processo e timestamps diferentes."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Cache e timestamps

Confirmado: fetch do Next usa force-cache com revalidate 60s para USGS e 3600s para MET. Cache de processo guarda dados, promessas em voo e backoff; nao e quota global nem coordenacao entre regioes/instancias.

Limites do servico: USGS freshness ate 5min da publicacao e descarte apos 6h; MET freshness ate 12h e descarte apos 24h. Expires pode antecipar obsolescencia; refreshAfter respeita o provedor mesmo se o limite de idade tornar o dado stale.

MET inicia no maximo quatro consultas por segundo por processo. Escala multiplica trafego; validar comportamento real de cache na hospedagem antes de ampliar catalogo ou promover publico.

providerUpdatedAt e a publicacao; fetchedAt e consulta original preservada em cache; expiresAt delimita frescor; generatedAt monta o envelope. ready/stale/error/not_configured devem continuar explicitos. Falha sem dado anterior retorna null, nao lista vazia.

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[usgs-earthquakes]] - Fonte USGS limitada a janela movel de 24 horas.
