---
tipo: sessao
projeto: global-live-data
resumo: "TSE bloqueado nos recortes AP; versão publicada preservada e conferida."
tags: [global-live-data, sessao, eleicoes, qualidade, retencao]
atualizado: "2026-11-19"
data: "2026-11-17"
ia: codex
maquina: macos
---

# Retenção do Amapá bloqueia atualização TSE

## Objetivo e estado
Uma captura oficial autorizada, sem sobrepor trabalho. Exit 1/status blocked em 2026-11-17T18:28:30.473Z: deputado federal/estadual AP, turno 1, ausentes ou inconsistentes após agregação. Main/origin limpas ee273211437890de7552d6df1f5e13aba28e7370; branch temporária vazia removida. Nenhuma mudança de produto, PR ou deploy.

## Evidências e limites
Sete JSON históricos com hashes/mtimes e proveniência preservados. Relatório atual é falha; candidato ignorado de 11 novembro não é captura atual. Não há totais novos/hashes/identidades no relatório de erro. A mensagem cobre seleção ausente ou removida por divergência de soma; causa não estabelecida. [[brazil-election-comparison]].

Às 2026-11-17T18:29:20.730Z, exports públicos 2026/2022 HTTP 200, iguais aos canônicos; 170/176 recortes respectivamente. Ambos turnos, RO e dados válidos continuam publicados. 11 testes Python e três TypeScript passaram. Suites completas, UI, CI, Safari e carga não repetidos porque não houve mudança.

## Decisão e o que evitar
Preservar a versão validada e todos os gates. Não repetir download nesta rodada, retirar AP já publicado, preencher ausências com zero, inventar IDs ou atribuir causa eleitoral. Não chamar falha de changed=false. Não confundir candidato de 11 novembro com nova captura.

## Próximo passo
Na próxima execução prevista, repetir uma única captura com main limpa e os mesmos gates. Falha idêntica sem novidade pode permanecer silenciosa; registrar recuperação ou mudança material. PR85 editorial e demais frentes permanecem separadas. [[refresh-tse-elections]].

## Prompt inicial
1. Sincronize cérebro e confira Git; leia AGENTS/docs/TSE-REFRESH e esta sessão.
2. Main limpa, branch codex/, Node 24/Python 3.11+; uma única chamada --apply.
3. Em blocked preserve publicado; em changed=false não crie release; dados novos válidos exigem diff, testes, QA, PR/CI, Ready/SHA e JSON público.
4. Salve/sincronize resultado significativo; não altere cadências ou escopo.

## Rechecagem posterior
Em 18 novembro, 00:24 UTC, mesma falha AP, saída 1, sete JSON/datas preservados e exports 2026/2022 iguais aos canônicos. Main limpa d49b9daf3e8c612f30ca7d01a110bd1ce683efb7; sem novo release. Evidência e limites em [[brazil-election-comparison]].

Rechecagem de 18 novembro, 06:29 UTC: uma chamada, mesma falha e saída 1, sete JSON/datas intactos, lock liberado, exports 2026/2022 HTTP 200 e iguais aos canônicos. Main/origin continuam limpas no mesmo SHA; sem release ou repetição de testes. Recibos e limites em [[brazil-election-comparison]].

Rechecagem de 18 novembro, 12:24 UTC: única chamada, saída 1 e motivo AP idêntico. Sete JSON/datas preservados, lock liberado, exports 2026/2022 iguais aos canônicos às 12:25:04 UTC. Main/origin limpas 3b354e5e61e1fd33e7aa6d0750006ebc8a3cd9ba após remover branch vazia; sem commit/PR/deploy do produto ou repetição de testes. [[brazil-election-comparison]].

Rechecagem de 18 novembro, 18:28 UTC: uma chamada, mesma falha AP/saída 1, sete JSON/datas e candidato antigo intactos. Lock/staging da rodada limpos; exports 2026/2022 iguais aos canônicos às 18:29:05 UTC. Main/origin limpas 91f7f77146c609591466798194fb75330eb9a422, branch vazia removida. Nenhum commit/PR/deploy ou repetição de testes; sem novidade acionável. [[brazil-election-comparison]].

Rechecagem de 19 novembro, 00:27 UTC: uma chamada, saída 1 e mesmo blocked AP. Sete JSON/datas e candidato antigo intactos; lock/staging limpos. Exports públicos 2026/2022 iguais aos canônicos às 00:28:28 UTC. Main/origin limpas 0bc539352a6da3c106210d8c014d9e105dc1d19c, branch vazia removida. Sem release, testes repetidos ou novo download; nenhum fato acionável novo. [[brazil-election-comparison]].

Rechecagem de 19 novembro, 06:32 UTC: uma chamada, saída 1 e mesmo blocked AP. Sete JSON/datas e candidato antigo intactos, lock/staging da rodada limpos; exports 2026/2022 iguais aos canônicos às 06:33:49 UTC. Main/origin limpas b1cdace9dcecd70589f406942d0db498cb0dc8b7, branch vazia removida. Sem release, suites repetidas ou nova captura. Nenhum fato acionável novo; [[brazil-election-comparison]].

## Conexoes
- [[2026-11-17-las-vegas-security-release]] - Guia Las Vegas e patch Next publicados com CI e Production verificados.
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[brazil-election-comparison]] - Evidências e limites.
- [[refresh-tse-elections]] - Procedimento.
