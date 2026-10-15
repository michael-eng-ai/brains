---
tipo: "estado"
projeto: "global-live-data"
resumo: "Portal com futebol/cambio publicado e verificado; main e CI sincronizados."
tags: ["global-live-data", "estado"]
atualizado: "2026-10-15"
---

# Estado atual

Ultimo handoff: [[2026-10-15-portal-release]].

- Site: https://global-live-data.vercel.app/pt. Main remoto/local 84aab6e02c244818e76e0f3622af354855a37c0d; arvore limpa. PR #4 integrada; ambos os jobs da main CI 38825941909 passaram. Deployment Production Ready e probes em [[release-status]].
- Home em cards com dados reais; futebol, cambio e natureza tem paginas internas. Links brutos retirados de resultados futebol/FX; creditos/metodologia preservados. Pedido de design e publicacao em [[2026-10-15-publish-portal]].
- Futebol: duas competicoes europeias 2026/27. Cambio: cinco moedas, referencias diarias. Escopo global de audiencia, cobertura explicita. Cache compartilhado, datas e estados em [[football-fx-pilot]].
- Validacao final local: 45 unidades, 18 rotas HTTP, sete e2e; QA desktop/mobile e dados reais hospedados passaram. Sem falha final pendente nos checks executados.
- Nao testados: Safari, aparelhos fisicos, carga/request rate distribuido. Proximo passo proposto: medir cache/custos e recolher avaliacao do portal antes de ampliar categorias. Nenhum monitor agendado.
- Outras categorias e Trends automatico continuam locais/planejados; nao ativar novas fontes, contas ou gastos sem escopo apropriado. Pendencias anteriores de identidade legal/retencao e auditoria dev-only continuam registradas; nao foram objeto desta entrega.

## Conexoes
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[index]] - Estado para retomada.
- [[release-status]] - Estado para retomada.
- [[football-fx-pilot]] - Estado para retomada.
- [[validation-workflow]] - Estado para retomada.
- [[2026-10-15-publish-portal]] - Estado para retomada.
