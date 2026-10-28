---
tipo: procedimento
projeto: global-live-data
resumo: "Heartbeat local e comando limitado para reconciliar e publicar atualizacoes TSE."
tags: [global-live-data, eleicoes, automacao, dados]
atualizado: "2026-10-28"
---

# Atualizar dados TSE

Contrato completo: docs/TSE-REFRESH.md no repositorio. Comando verificado: npm run history:refresh:tse -- --apply, Node 24 e Python 3.11+. Sem flag, somente staging.

- Automacao atualizar-elei-es-tse-do-global-live-data, nome Atualizar eleicoes TSE do Global Live Data, ACTIVE, heartbeat a cada seis horas, thread 01a14170-736d-7c82-8551-f3834ff8787c. Configuracao em ~/.codex/automations/atualizar-elei-es-tse-do-global-live-data/automation.toml. Criada e conferida; primeiro heartbeat material observado em 19/10/2026, recibos abaixo. Depende do ambiente local disponivel; nao e cron da Vercel.
- Editorial permanece outra automacao. Nao duplicar nem alterar sua frequencia. Manutencao de agenda usa automation_update, nunca edicao manual do TOML.
- Retomar cerebro/Git, respeitar arvore ocupada, main atualizada, branch codex/. Uma captura por ciclo com --apply. changed=false nao gera commit, PR, deploy nem novo timestamp de captura no site. Silencio quando sem mudanca acionavel.
- Falha de identidade/cobertura/reconciliacao/retencao bloqueia o lote e conserva a versao publicada. Verificar exit code e relatorio atual; erro nao e dataset vazio. Investigar sem relaxar gates; avisar falha relevante ou decisao necessaria.
- Se material, revisar diff/proveniencia, rodar test:history-import, check e test:e2e, conferir UI, criar/anexar PR, ambos CI verdes, merge, observar Production Ready e SHA, comparar JSON hospedado com canonico, atualizar/sincronizar cerebro. Publicacao autorizada para esse escopo.
- .data/tse-refresh-last.json guarda decisao/metadados e .data/tse-refresh-candidate.json o ultimo candidato publico. Ignorados; ZIPs temporarios removidos ao concluir. Hashes/datas reais; regeneracao do ZIP sem mudanca de fatos e no-op.
- Dois URLs TSE fixos, TLS verificado, sem redirects, limites de tempo/tamanho, sem retries dentro da rodada. Python macOS sem CA propria usa /etc/ssl/cert.pem; nunca desabilitar TLS.
- .data/tse-refresh.lock impede concorrencia local. Se processo morrer, conferir PID antes de remover lock. Nao e lock distribuido. Arquivo/manifest renomeados separadamente; crash entre passos pode deixar mismatch que bloqueia build. Comparar Git e restaurar/reaplicar o par antes de publicar.

Primeiras execucoes reais e recibos em [[release-status]]. Segundo turno real verificado e publicado na PR54 em 28/10; cobertura e limites em [[brazil-election-comparison]]. A descoberta continua baseada nos dois arquivos, sem IDs presumidos.

## Primeiro heartbeat com mudanca material

Em 19/10/2026, a execucao autonoma capturou e liberou os dois recortes RO e concluiu o fluxo de testes/PR14/CI/Production. Evidencia em [[release-status]] e dados em [[brazil-election-comparison]]. Turno 2 segue ausente; somente publicar quando fontes/identidades/data/cobertura passarem pelos mesmos gates. Proxima rodada: main atualizada, arvore livre e uma unica chamada --apply. Se changed=false, nao gerar commit/PR/deploy nem modificar datas publicadas.

## Diagnostico de falha e candidato anterior

Uma falha em build_candidate pode ocorrer antes de gravar report/candidate do Python. O wrapper grava novo .data/tse-refresh-last.json com status blocked e motivo, mas .data/tse-refresh-candidate.json pode continuar sendo o candidato de uma rodada anterior. Conferir checkedAt/exit code e mtime; nunca apresentar o candidato antigo como dados da captura que falhou. O contexto temporario remove ZIPs mesmo na excecao, e os hashes de aquisicao novos nao ficam no relatorio de erro atual. Nao deduzir totais ou causa detalhada apenas da lista de chaves ausentes na retencao. Primeiro caso observado de PB em [[brazil-election-comparison]]. Uma nova aquisicao fica para a proxima rodada, sem repetir download ou afrouxar gates.

## Mensagem ambigua de granularidade partidaria

Em 27out 18:53Z, aggregate falhou com Duplicate party grain or missing contest. Em scripts/import-tse-history.py:107-108, a mensagem cobre duas condicoes: chave partidaria duplicada OU cargo/UF/turno sem contest nos totais. O relatorio atual nao identifica a linha/UF/turno e nao permite escolher entre elas. Nao afirmar que houve duplicacao real, que um estado sumiu ou que o segundo turno foi descoberto apenas por essa mensagem. Ambos os ramos foram reproduzidos offline; contexto em [[brazil-election-comparison]].

Preservar canonico/manifest e candidato anterior sem o tratar como novo. Conferir bytes/mtime, exit code, checkedAt, lock e exportacao publica. Nao repetir o download na mesma rodada, nao deduplicar silenciosamente, nao preencher totais ausentes nem afrouxar validacoes. A proxima captura segue a rotina existente; eventual melhoria de diagnostico deve manter todos os gates e passar pelo fluxo normal de mudanca.

## Rechecagem de 28 outubro, 00:54 UTC

A mesma mensagem ambigua foi observada novamente em uma unica captura. Canonicos/datas e exports publicos preservados; lock e staging desta rodada limpos. Candidato de 27out12:55Z e duas pastas de staging de 16out sao anteriores, nao evidencia desta captura. Nao repetir download, escolher uma das causas sem evidencia ou enfraquecer gates. Detalhes em [[brazil-election-comparison]].

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
- [[2026-10-19-tse-ro-release]] - Handoff da liberacao de Rondonia.
- [[2026-10-22-tse-pb-refresh-blocked]] - Falha de retencao investigada.
- [[2026-10-22-tse-pb-retention-recheck]] - Confirmacao do gate na rodada seguinte.
- [[2026-10-23-tse-vote-classification-release]] - Revisao material apos recuperacao da fonte.
- [[2026-10-24-tse-ro-retention-blocked]] - Handoff da falha de retencao RO.
- [[2026-10-25-tse-rn-retention-blocked]] - Aplicacao do gate em RN.
- [[2026-10-27-tse-party-grain-blocked]] - Handoff do bloqueio de granularidade TSE.
- [[2026-10-28-tse-party-grain-recheck]] - Handoff da rechecagem TSE.
- [[2026-10-28-tse-second-round-release]] - Execucao verificada.
