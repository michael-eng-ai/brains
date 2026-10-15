---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Estado remoto pode mudar enquanto testes e memoria estao em andamento."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-15"
---

# Mudanca concorrente no GitHub

Observado: PR #2 estava aberta no inicio, mas foi integrada fora desta sessao enquanto os testes/memoria estavam em andamento. O push documental posterior para sua branch nao entrou no merge fechado e nao iniciou CI por si: o workflow roda em PRs e main.

Solucao executada: confirmar merge/SHA/CI, preservar commits sem reescrita, criar codex/continuation-handoff e PR #3 em rascunho com somente documentacao. Atualizar fontes e cerebro antes de sincronizar.

Revalidar o remoto antes e depois das mutacoes. Nao tratar mudanca externa como autorizacao para publicacao nem tentar desfazer o trabalho de outro contexto.

## Conexoes
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
