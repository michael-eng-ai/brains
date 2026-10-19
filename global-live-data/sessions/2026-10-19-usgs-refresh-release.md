---
tipo: sessao
projeto: global-live-data
resumo: "PR17 corrigiu atualizacao USGS; CI e Production exatas verificadas."
tags: [global-live-data, sessao, usgs, cache]
atualizado: "2026-10-19"
data: "2026-10-19"
ia: codex
maquina: local
---

# Sessao 19/10: correcao USGS publicada

## Objetivo
Investigar e corrigir dados USGS desatualizados e publicar com evidencia verificavel.

## Estado
- PR17 integrada; main local/origin limpas em 5f482f533492f9064e7af5240dd19401f3ea3908; dois jobs CI PR/main passaram.
- Production Ready exata e EN/PT/ES verificadas; recibos em [[release-status]].
- Contrato/diagnostico em docs/USGS-REFRESH.md e [[provider-cache]]. Cache Next SWR retornava dado expirado; o cache interno e timer de cinco minutos amplificavam o atraso.
- Check 92 unidades/lint/tipos/build/HTTP, 11 Python e 29 Chromium passaram; [[validation-workflow]].
- USGS real avancou em duas consultas locais separadas por 65s e em duas publicas; [[usgs-earthquakes]]. Nao houve renovacao artificial de timestamps ou relaxamento de expiry.
- Servidor QA encerrado, viewport restaurado; pagina publica PT entregue. Nenhuma automacao/conta/chave/dependencia alterada.

## Decisoes e limites
[[2026-10-19-repair-usgs-refresh]] autoriza esta correcao. USGS aguarda resposta upstream apos expirar cache local, com single-flight, intervalo minimo, backoff e descarte preservados. Limite agora por processo; medir trafego agregado antes de promover/escalar. MET mantem Next cache e identidade existentes.

## Opcoes em aberto
Observar comportamento sustentado e trafego real apenas dentro de acompanhamento autorizado. Telefone fisico/Safari mobile/carga distribuida nao testados. Nao prometer ausencia permanente de stale ou monitoramento de emergencia.

## Evitar
Nao reintroduzir SWR USGS sem demonstrar entrega de dados atuais. Nao ampliar validade para deixar status verde. Nao repetir deploy manual ou conector sem acesso. Primeiro teste browser precisava nome acessivel completo do link; corrigido. MET local inicialmente tinha copia expirada de 16/10 e recuperou depois sem mudanca de seu transporte.

## Proximo passo
Recolher feedback e manter as rotinas existentes. Para investigar novo atraso, comparar metadata.generated/Date/Expires e estado do site; conferir intervalo/instancias antes de alterar cache ou fazer varias sondagens.

## Prompt inicial
1. Sincronize/leia cerebro e Git. 2. Leia docs/USGS-REFRESH.md e docs/OPERATIONS.md. 3. Investigue apenas o problema atual autorizado com metadados e sondagens limitadas. 4. Preserve timestamp/falha/limites, execute gates relevantes e registre a revisao exata de qualquer publicacao.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-19-repair-usgs-refresh]] - Autorizacao.
- [[provider-cache]] - Cache e trafego.
- [[usgs-earthquakes]] - Fonte.
- [[release-status]] - Recibos.
- [[validation-workflow]] - Validacao.
