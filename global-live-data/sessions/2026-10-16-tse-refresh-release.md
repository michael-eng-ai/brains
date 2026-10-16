---
tipo: sessao
projeto: global-live-data
resumo: "PR 10 publicada e heartbeat TSE ativo; dados atuais preservados com RO pendente."
tags: [global-live-data, sessao, eleicoes, automacao]
atualizado: "2026-10-16"
data: "2026-10-16"
ia: codex
maquina: desktop-local
---

# Sessao 2026-10-16: atualizacao TSE

## Objetivo
Automatizar TSE, liberar RO consistente e incluir turno 2 quando oficial, publicar e sincronizar cerebro; [[2026-10-16-auto-tse]].

## Estado
- PR #10 integrada; main 2935a247684a3a9d9bc0bf716a0968b035502c69 limpa/local=remota. CI e Production Ready em [[release-status]].
- Site https://global-live-data.vercel.app/pt/elections/brazil. Contrato em [[brazil-election-comparison]], procedimento em [[refresh-tse-elections]].
- Automacao criada/ativa; execucoes manuais reais verificaram no-op. Nenhum futuro disparo autonomo observado.

## Decisoes e limites
- Publicar apenas fatos alterados e reconciliados; preservar captura se ZIP apenas regenerou.
- Descobrir turno 2 por identidades concordantes e calendario, nunca IDs supostos. Nacional exige 28 regioes.
- Regressao de selecao ja publicada bloqueia lote. 2022/esportes intactos; sem conta/custo/credencial nova.
- Ainda existem duas lacunas RO; nenhum segundo turno real foi importado.

## O que evitar
- Relaxar gates, ou considerar heartbeat local um cron 24/7 da Vercel.
- Desabilitar TLS para contornar CA Python macOS; usar bundle do sistema.
- Sobrescrever trabalho em andamento, builds simultaneos ou publicar sem observar SHA/host exatos.
- Screenshot IAB com fullPage+clip deslocado distorceu a captura; viewport normal apos End mostrou layout correto e foi salvo.

## Proximo passo
Deixar o heartbeat executar o runbook e verificar a primeira mudanca real. Fonte igual: silencio, sem redeploy ou timestamp artificial.

## Prompt inicial
1. Sincronize/leia cerebro, Git e docs/TSE-REFRESH.md. 2. Capture uma vez com --apply e Node 24/Python. 3. Em no-op, encerre sem publicar. 4. Se material e valido, execute suites, revise/anexe PR, CI, merge e Production/JSON. 5. Atualize/sincronize cerebro; relate somente resultado significativo ou falha.

## Conexoes
- [[index]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[current]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[historico]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-16-auto-tse]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[refresh-tse-elections]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[brazil-election-comparison]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[historical-editions]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[validation-workflow]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[release-status]] - Handoff, procedimento e evidencia da atualizacao TSE.
