---
tipo: conceito
projeto: global-live-data
resumo: "Auditoria de consolidacao: contador 24h, documentacao, operacao e custos medidos."
tags: [global-live-data, auditoria, operacao]
atualizado: "2026-10-16"
---

# Auditoria de consolidacao

Auditoria somente leitura de 16/10/2026 sobre a revisao publicada registrada em [[release-status]]. Relatorio detalhado local: /Users/michaelsantos/Documents/GitHub/global-live-data/qa-artifacts/consolidation-audit-2026-10-16.md. Artefatos locais ignorados nao sao backup portatil; fatos decisivos estao abaixo.

## Cinco prioridades verificadas

1. Defeito: components/portal.tsx:95 e :253 contam todo events.length como 24h; nao filtram ocorrencia. API em 20:41:08 UTC retornou 191 registros, dois fora das ultimas 24h; browser mostrava 191. Natureza usa filtro temporal no retorno de cada consulta. Corrigir selecao comum do contador/ultimo evento e testar fronteira, futuro, null/vazio/stale sem aumentar upstream.
2. Defeito documental: README anuncia Trends cru e contagens antigas; ROADMAP fala eleicoes somente pesquisa; HISTORY mistura schema 1/cinco arquivos com schema 2/seis; DEPLOYMENT conserva pendencias resolvidas. Resumo atual unico e arquivo de recibos historicos propostos, ainda nao implementados.
3. Risco de operacao: falhas de fornecedor podem virar HTTP 200 com feed stale/error. Futebol/hoquei compartilham origem OpenLigaDB mas nao backoff comum; mapas locais nao coordenam regioes/instancias. Medir estado/idade e pico agregado antes de escala, sem presumir novo servico pago.
4. Defeito informativo/lacuna: privacidade publica diz hospedagem desconhecida apesar de Vercel confirmada. Identidade legal e retencao efetiva continuam pendentes. Nao inventar dados nem afirmar conformidade.
5. Melhoria: faltam aparelhos reais/Safari/rede lenta e metricas de visitas uteis/retorno. Sem prova de audiencia/receita. HTML inicial de uma categoria e candidato futuro, nao alteracao aprovada agora.

## Cache observado

Sondagens limitadas 20:39:46-20:41:08 UTC: futebol stale de 20:05 passou a ready verificado 20:39:47; duas leituras simultaneas repetiram timestamps. FX ready manteve consulta 20:04:59 e data de taxa 16/10. Hoquei/UK ready; xadrez stale passou a ready. USGS avancou publicacao 20:07:08 para 20:39:08, permanecendo stale ante expiry 20:40:08. MET ficou stale com expiry 20:37:06 durante a janela; recuperacao posterior nao comprovada.

No-store/MISS no envelope nao desativa cache upstream. Next revalida sob demanda; proximo check e elegibilidade, nao execucao garantida. Idiomas usam chaves de dados comuns. Categorias futebol/FX atualizam por selecao/manual; portal a cada cinco minutos visivel. 304 ou metadata sem mudanca podem renovar checkedAt preservando retrievedAt. Controles existentes em [[provider-cache]].

## Consumo e confiabilidade medidos

Painel Vercel do projeto, ciclo exibido 12/10-12/11, observacao aproximadamente 17:37-17:41 BRT:
- Infraestrutura US$0,32: builds US$0,31 e CPU ativa US$0,01; 3,24K CDN requests, 25MB transferidos, 15MB de origem, 2,22K invocacoes, dois minutos CPU e 0,21GB-h memoria. Armazenamento funcoes/deployments um MB-mes cada, nao tamanho instantaneo.
- Atraso ate uma hora; licenca atribuida ao projeto US$0 nao prova assinatura da equipe gratis. Fatura/base da equipe, impostos, cambio e custo Codex nao verificados. Nenhuma extrapolacao mensal ou receita.
- Production/ultimas12h: ~1,4K invocacoes, 0% erro/timeout de funcao; CPU P75 74ms, TTFB P75 110ms, coldstart10,6%, memoria media227MB/2,05GB, throttleP75 20,4%. P75 duracao API live976ms/events632ms/discover604ms/data581ms. Nao justificar aumento de recursos apenas com throttle.
- External APIs: OpenLiga198 chamadas/1%erro; USGS56+65cache; MET12+34cache; Lichess13; Parlamento7; Frankfurter6/16,7%erro; TV3; Trends2; DataCacheIAD1 225cache. Valores arredondados/janela movel. Detalhe posterior OpenLiga199 total, getcurrentgroup/del11 chamadas/18,2%erro e Timeout; causa Frankfurter nao determinada.
- Logs ultimos30min mostraram zero Warning/Error/Fatal de console e rotas publicas. Nenhum IP/cookie/contato exportado. Retencao e drains nao integralmente inspecionados.

URLs de consulta:
- https://vercel.com/michael-eng-ais-projects/global-live-data/usage
- https://vercel.com/michael-eng-ais-projects/global-live-data/observability/vercel-functions
- https://vercel.com/michael-eng-ais-projects/global-live-data/observability/external-apis
- https://vercel.com/docs/logs/runtime#limits (padrao Pro1dia; Plus30dias, nao prazo efetivo de exclusao confirmado).

Requests incluem QA/prefetch e nao medem pessoas. Analytics/SpeedInsights ausentes na implementacao. Estimativas OpenLiga de futebol ate14calls/5min frio ou8metadata inalterado +hoquei ate12calls/6h sao para um cache efetivo; nao demonstram pico por IP/instancia.

## Operacao editorial e renderizacao

Ambos heartbeats ACTIVE/6h conferidos; primeiro editorial autonomo concluido em [[2026-10-16-tour-editorial-release]]. Primeiro disparo TSE autonomo nao observado; execucoes manuais e fluxo em [[refresh-tse-elections]]. Nada alterado/duplicado.

Artigos/historicos ja entregam HTML; categorias buscam valores no cliente. app/robots.ts bloqueia /api. Google executa JS, mas nao usa recursos bloqueados; nao concluir invisibilidade completa nem indexacao confirmada. Referencia: https://developers.google.com/search/docs/crawling-indexing/javascript/javascript-seo-basics. Avaliar snapshot inicial por beneficio de leitura/latencia, preservando cache.

## Proxima entrega proposta

Janela24h correta + documentos vigentes da atualizacao; estimativa4-6h mais esperaCI/publicacao. Nao e decisao aprovada de implementacao/deploy. Aceite: mesmo recorte temporal no contador e ultimo evento; fronteira/futuro/null/vazio/stale cobertos; timestamps preservados; sem novas chamadas por passagem do relogio; EN/PT/ES e todos historicos mantidos; docs sem contradicoes. Antes de eventual publicacao, check/e2e completos, QA mobile/desktop, dois jobs e fonteReady exata.

Verificacao desta auditoria: 40 testes offline relevantes passaram; auditprod0, auditcompleto5high na cadeia dev braces/ESLint; nenhuma dependencia alterada. Build/lint/typecheck/Python/e2e completos nao rerodados (sem codigo alterado); CI da main conferido. Carga/multirregiao/dispositivos/Safari/rede lenta/indiceGoogle/receita/retencao integral nao validados.

## Conexoes
- [[index]] - Entrada e catalogo.
- [[current]] - Foco vigente.
- [[release-status]] - Revisao e recibos publicados.
- [[provider-cache]] - Contrato das camadas e timestamps.
- [[public-contact]] - Lacunas de identidade e privacidade.
- [[validation-workflow]] - Verificacao e limites.
- [[refresh-tse-elections]] - Rotina separada de dados oficiais.
- [[2026-10-16-tour-editorial-release]] - Primeiro disparo editorial concluido.
- [[2026-10-16-consolidate-first]] - Direcao de consolidacao antes de expandir.
- [[2026-10-16-consolidation-audit]] - Handoff desta auditoria.
