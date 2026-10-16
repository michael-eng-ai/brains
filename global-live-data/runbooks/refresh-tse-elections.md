---
tipo: procedimento
projeto: global-live-data
resumo: "Heartbeat local e comando limitado para reconciliar e publicar atualizacoes TSE."
tags: [global-live-data, eleicoes, automacao, dados]
atualizado: "2026-10-16"
---

# Atualizar dados TSE

Contrato completo: docs/TSE-REFRESH.md no repositorio. Comando verificado: npm run history:refresh:tse -- --apply, Node 24 e Python 3.11+. Sem flag, somente staging.

- Automacao atualizar-elei-es-tse-do-global-live-data, nome Atualizar eleicoes TSE do Global Live Data, ACTIVE, heartbeat a cada seis horas, thread 01a14170-736d-7c82-8551-f3834ff8787c. Configuracao em ~/.codex/automations/atualizar-elei-es-tse-do-global-live-data/automation.toml. Criada e conferida; nenhuma futura execucao autonoma observada. Depende do ambiente local disponivel; nao e cron da Vercel.
- Editorial permanece outra automacao. Nao duplicar nem alterar sua frequencia. Manutencao de agenda usa automation_update, nunca edicao manual do TOML.
- Retomar cerebro/Git, respeitar arvore ocupada, main atualizada, branch codex/. Uma captura por ciclo com --apply. changed=false nao gera commit, PR, deploy nem novo timestamp de captura no site. Silencio quando sem mudanca acionavel.
- Falha de identidade/cobertura/reconciliacao/retencao bloqueia o lote e conserva a versao publicada. Verificar exit code e relatorio atual; erro nao e dataset vazio. Investigar sem relaxar gates; avisar falha relevante ou decisao necessaria.
- Se material, revisar diff/proveniencia, rodar test:history-import, check e test:e2e, conferir UI, criar/anexar PR, ambos CI verdes, merge, observar Production Ready e SHA, comparar JSON hospedado com canonico, atualizar/sincronizar cerebro. Publicacao autorizada para esse escopo.
- .data/tse-refresh-last.json guarda decisao/metadados e .data/tse-refresh-candidate.json o ultimo candidato publico. Ignorados; ZIPs temporarios removidos ao concluir. Hashes/datas reais; regeneracao do ZIP sem mudanca de fatos e no-op.
- Dois URLs TSE fixos, TLS verificado, sem redirects, limites de tempo/tamanho, sem retries dentro da rodada. Python macOS sem CA propria usa /etc/ssl/cert.pem; nunca desabilitar TLS.
- .data/tse-refresh.lock impede concorrencia local. Se processo morrer, conferir PID antes de remover lock. Nao e lock distribuido. Arquivo/manifest renomeados separadamente; crash entre passos pode deixar mismatch que bloqueia build. Comparar Git e restaurar/reaplicar o par antes de publicar.

Primeiras execucoes reais e recibos em [[release-status]]. Nenhum segundo turno real ou futuro disparo autonomo verificado.

## Conexoes
- [[index]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-auto-tse]] - Atualizacao TSE autorizada e verificavel.
- [[brazil-election-comparison]] - Atualizacao TSE autorizada e verificavel.
- [[historical-editions]] - Atualizacao TSE autorizada e verificavel.
- [[validation-workflow]] - Atualizacao TSE autorizada e verificavel.
- [[release-status]] - Atualizacao TSE autorizada e verificavel.
- [[current]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[consolidation-audit]] - Auditoria atual, evidencia e limites de consolidacao.
