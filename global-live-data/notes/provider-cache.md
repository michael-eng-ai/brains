---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Cache do framework, cache por processo e timestamps diferentes."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-19"
---

# Cache e timestamps

Atual desde PR17: USGS usa fetch no-store sem next.revalidate e aguarda upstream quando o cache de processo expira. MET continua force-cache/revalidate3600. Cache por processo guarda dados, promessas em voo e backoff; nao e quota global nem coordenacao entre regioes/instancias. A politica anterior USGS force-cache60 foi substituida apos reproduzir retorno SWR expirado.

Limites do servico: USGS freshness ate 5min da publicacao e descarte apos 6h; MET freshness ate 12h e descarte apos 24h. Expires pode antecipar obsolescencia; refreshAfter respeita o provedor mesmo se o limite de idade tornar o dado stale.

MET inicia no maximo quatro consultas por segundo por processo. Escala multiplica trafego; validar comportamento real de cache na hospedagem antes de ampliar catalogo ou promover publico.

providerUpdatedAt e a publicacao; fetchedAt e consulta original preservada em cache; expiresAt delimita frescor; generatedAt monta o envelope. ready/stale/error/not_configured devem continuar explicitos. Falha sem dado anterior retorna null, nao lista vazia.

## Feeds de descoberta

Os limites de Trends/TV e a estimativa de trafego da PR #5 ficam em [[trends-tv-discovery]]. Reuso observado de timestamps nao substitui medicao distribuida de upstream/custo.

## Persistencia separada

Historicos nao usam TTL do cache. Fonte duravel e artefato somente leitura descritos em [[historical-editions]]; trocar temporada nao apaga uma edicao arquivada.

## Janela local e auditoria de feeds

A entrega [[2026-10-16-consolidation-release]] aplica earthquakesInWindow tambem ao portal, e um relogio local atualiza as fronteiras no dashboard/portal sem refetch. Pausa em aba oculta e recomputa ao retornar. Precisao depende do relogio do dispositivo; timestamps da fonte nao sao renovados artificialmente. npm run ops:check avalia os envelopes existentes e datas, sem logar dados de visitantes ou corpos de fornecedores. HTTP 200 nao prova ready. Contrato e budgets atuais: docs/OPERATIONS.md.

## Correcao de 19 outubro

A 13:50:53UTC, USGS direto publicou13:50:44 e expirava13:51:44; o site devolveu13:32:34/expiracao13:33:34, ainda repetido em13:51:33. Codigo Next instalado confirma que route handlers recebem valor stale enquanto revalidam ao fundo; o processo reteria esse valor por mais um minuto. A UI consultava a cada cinco minutos. Evidencia/contrato: docs/USGS-REFRESH.md.

USGS agora aguarda resposta atual, com deadline8s/body5MiB e chave fixa por processo. Sucessos espacados pelo inicio da tentativa para nao somar latencia e perder a proxima rodada; erros mantem backoff desde conclusao/Retry-After. Minimo60s, maximo1440tentativas/dia/processo sob carga continua; Expires longo/backoff reduz. Cold starts/replicas/regioes/previews multiplicam trafego, sem limite global nem custo medido. MET continua com cache Next/condicionais/identidade.

Portal/dashboard consultam natureza a cada60s visiveis; demais feeds do portal a cada300s. Browser passa de12 para60 leituras/hora, sem transformar cada leitura em upstream dentro do processo quente. Sem cron/background oculto. Fonte expirada permanece stale; limites5min/6h USGS inalterados. Testes e probes em [[validation-workflow]]/[[release-status]].

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[usgs-earthquakes]] - Fonte USGS limitada a janela movel de 24 horas.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[consolidation-audit]] - Auditoria atual, evidencia e limites de consolidacao.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
- [[sports-fx-depth]] - Contrato aprofundado de esportes/FX.
- [[2026-10-19-usgs-refresh-release]] - Handoff da correcao.
- [[2026-10-19-repair-usgs-refresh]] - Autorizacao e tradeoff.
- [[current]] - Estado atual.
- [[validation-workflow]] - Regressoes.
- [[release-status]] - Recibos remotos.
