---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Origin do HMR e restricoes antigas nao devem alterar CSP de producao."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-15"
---

# Browser sobre producao

Historico documentado: host/origin do HMR em desenvolvimento causou HTTP 403 e adiou hidratacao; sandbox anterior tambem bloqueou IPC. A correcao consolidada usa build/start de producao com a mesma origin 127.0.0.1:3000.

Nao enfraquecer CSP para o teste nem remover texto de leitor de tela para simplificar locators. Usar locators semanticos/escopados. Esta sessao executou quatro testes Chromium localmente com sucesso; nao perpetuar o bloqueio antigo como atual.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[validation-workflow]] - Checks locais e CI sem confundir fixtures com dados reais.
