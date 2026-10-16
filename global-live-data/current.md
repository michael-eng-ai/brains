---
tipo: "estado"
projeto: "global-live-data"
resumo: "Trends e TV publicados; cinco categorias, CI e probes hospedados verificados."
tags: ["global-live-data", "estado"]
atualizado: "2026-10-15"
---

# Estado atual

Ultimo handoff: [[2026-10-15-discovery-release]].

- Site: https://global-live-data.vercel.app/pt. Main remoto/local 95613fb35377257816d57f0670e341a492acac70; PR #5 integrada, arvore limpa. CI PR/main passou; Production Ready e probes em [[release-status]].
- Cinco categorias com cards atuais e paginas internas EN/PT/ES: futebol, cambio diario, buscas em alta, TV/streaming e natureza. Nova autorizacao para publicar e avaliar depois em [[2026-10-15-publish-discovery]].
- Escopo e direitos das novas fontes em [[trends-tv-discovery]]; cobertura global nao implica todos os paises/eventos. API publica sem chave, nenhuma nova conta/cobranca, anuncios ou analytics.
- Validacao: 53 unidades, nove e2e Chromium, 24 rotas HTTP; seis paises Trends e seis combinacoes TV ready em probe hospedado. Mobile 390px com filtros/detalhes/pais e sem overflow/erro. Detalhes em [[validation-workflow]].
- Nao testados: Safari, aparelhos fisicos, carga e quota distribuida. Proximo passo: recolher avaliacao do portal e medir reuso/custo das fontes antes de ampliar alcance. Nenhum monitor agendado.
- F1 comercial, eleicoes, ligas adicionais, ticketing e financas intradiarias dependem de acesso/licenca. Pendencias anteriores de identidade legal/retencao e auditoria dev-only continuam registradas e nao foram objeto desta entrega.

## Conexoes
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[index]] - Estado para retomada.
- [[release-status]] - Estado para retomada.
- [[football-fx-pilot]] - Estado para retomada.
- [[validation-workflow]] - Estado para retomada.
- [[2026-10-15-publish-portal]] - Estado para retomada.
- [[2026-10-15-discovery-release]] - Estado da expansao publicada.
- [[2026-10-15-publish-discovery]] - Estado da expansao publicada.
- [[trends-tv-discovery]] - Estado da expansao publicada.
