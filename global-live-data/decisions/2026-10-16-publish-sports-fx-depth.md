---
tipo: decisao
projeto: global-live-data
resumo: "Aprofundar futebol, hoquei e historico FX; testar, integrar e publicar."
tags: [global-live-data, dados, entrega]
atualizado: "2026-10-16"
---

# Escopo autorizado em 16/10/2026

O proprietario aprovou explicitamente melhorias de futebol/hoquei e historico cambial primeiro, com testes, integracao a main, publicacao e atualizacao do cerebro. Aprovacao sucede a auditoria [[api-data-adequacy]]. Nao abrange novas categorias/fontes, contas, chaves, custos, analytics ou alteracao de automacoes. Previsao7dias ficou fora desta entrega.

Decisao implementada: calendarios completos cadastrados, rodada/time, ultimos cinco resultados, tabela Bundesliga independente e FX30/90dias com dados reais. Calendario nao garante fases futuras; cache FX nao equivale a warehouse permanente. Manter resumos do portal evita ampliar payload em cada visita, mas acrescenta chaves/custo de chamadas documentado.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado de execucao.
- [[sports-fx-depth]] - Contratos e limites.
- [[api-data-adequacy]] - Auditoria que motivou a prioridade.
- [[2026-10-16-sports-fx-depth-release]] - Evidencia da entrega.
