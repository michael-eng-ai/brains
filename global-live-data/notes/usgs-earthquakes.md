---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Fonte USGS limitada a janela movel de 24 horas."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-19"
---

# Terremotos USGS

Confirmado no adapter: all_day.geojson, apenas registros explicitamente classificados earthquake. Explosoes e tipos indefinidos entram em contagem de exclusao. Magnitude nula nao vira zero; coordenadas/URLs invalidas sao rejeitadas.

A janela e de 24h, nao um arquivo historico. Publicacao usa metadata.generated; ocorrencia vem de properties.time. Contagens por hora preservam a hora parcial mais antiga.

Documentacao do projeto registra feed com atualizacao por minuto, possiveis atrasos/revisoes e atribuicao USGS; direitos de terceiros sao separados do dominio publico dos dados produzidos pelo orgao. Nao houve nova revisao dos termos nesta sessao.

Consulta real anterior documentada em docs/HANDOFF.md; o resultado nao garante disponibilidade atual.

## Correcao verificada em 19 outubro

PR17 elimina retencao do corpo Next SWR expirado; [[provider-cache]] registra limites e fluxo. A especificacao primaria https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php foi relida e mantem atualizacao por minuto para past-day. Um feed recente nao representa alerta garantido.

Probes locais13:57:49.854Z e13:58:54.583Z: ready, publicacao13:57:34Z avancou para13:58:34Z, Expires um minuto depois em ambos. MET local recuperou uma copia antiga numa leitura posterior, sem mudanca de cache MET.

Probes publicos: Leituras em 2026-10-19T14:03:31.856Z e 14:06:09.880Z, HTTP200/ready em ambas: publicacao 14:02:34Z (202 eventos, Expires14:03:34Z) avancou para 14:05:34Z (203 eventos, Expires14:06:34Z). Refresh da UI confirmou depois publicacao14:06:34Z, ready. Durante a troca de idiomas houve stale transitorio ao ultrapassar Expires antes da proxima tentativa permitida; o aviso permaneceu visivel e a fonte avancou na atualizacao seguinte. Datas foram conferidas no painel; nao substituidas pelo horario de pagina. Evidencia remota em [[release-status]].

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[api-data-adequacy]] - Auditoria transversal de adequacao dos dados.
- [[2026-10-19-usgs-refresh-release]] - Handoff.
- [[2026-10-19-repair-usgs-refresh]] - Autorizacao.
- [[current]] - Estado atual.
- [[release-status]] - Provas remotas.
