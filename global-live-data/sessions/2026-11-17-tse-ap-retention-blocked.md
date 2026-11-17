---
tipo: sessao
projeto: global-live-data
resumo: "TSE bloqueado nos recortes AP; versão publicada preservada e conferida."
tags: [global-live-data, sessao, eleicoes, qualidade, retencao]
atualizado: "2026-11-17"
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

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[brazil-election-comparison]] - Evidências e limites.
- [[refresh-tse-elections]] - Procedimento.
