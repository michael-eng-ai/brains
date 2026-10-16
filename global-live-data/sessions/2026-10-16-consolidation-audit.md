---
tipo: sessao
projeto: global-live-data
resumo: "Auditoria sem alterar producao; contador24h incorreto e custos Vercel medidos."
tags: [global-live-data, sessao, auditoria]
data: "2026-10-16"
ia: codex
atualizado: "2026-10-16"
---

# Sessao: auditoria de consolidacao

## Objetivo
Avaliar o estado confirmado, cinco prioridades e proxima entrega pequena conforme novo prompt.

## Estado
Main local/remota8b6c438, limpa; nenhuma mudanca de codigo/deploy/automacao. Relatorio local ignorado em qa-artifacts/consolidation-audit-2026-10-16.md; fatos portateis em [[consolidation-audit]]. ProductionReady e ambosCI conferidos.

## Decisoes e limites
Consolidar antes de expandir conforme [[2026-10-16-consolidate-first]]. Nao tratar auditoria como aprovacao para publicar. Defeito24h demonstrado; nao corrigido nesta rodada. Custo atribuido ao projeto medido, sem estimativa de fatura total ou audiencia.

## Opcoes em aberto
Proposta4-6h: corrigir janela24h e resumo documental vigente. Identidade/retencao requerem fatos do operador. Safari/aparelhos/rede lenta e primeiro heartbeatTSE autonomo seguem nao verificados.

## Evitar
Nao repetir conectorVercel403 sem mudanca de acesso; UI autenticada funciona. Nao confundir HTTP200/errofuncao0 com fornecedor saudavel; nao chamar request de visitante. Nao usar main antiga do anexo. Nao migrar banco ou contratar cache sem problema medido.

## Proximo passo concreto
Apresentar/retomar plano de [[consolidation-audit]]. Se houver escopo de implementacao confirmado: branchcodex, contador em components/portal.tsx e filtro em lib/earthquakes.ts, testes de fronteira e docs vigentes. Validar Node24, check e e2e antes de eventual release autorizado.

## Prompt inicial
1. Retome cerebro e confira main/status; leia [[consolidation-audit]] e direcao de consolidacao.
2. Confirme escopo atual do usuario; a auditoria nao concedeu deploy irrestrito.
3. Trabalhe numa unica entrega: janela24h do portal e documentacao pertinente, preservando contratos e historicos.
4. Rode verificacoes pertinentes; siga fluxo de release apenas com autorizacao aplicavel e salve cerebro.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Foco atual.
- [[historico]] - Linha do tempo.
- [[consolidation-audit]] - Evidencias, resultados e proposta.
- [[2026-10-16-consolidate-first]] - Direcao do proprietario.
