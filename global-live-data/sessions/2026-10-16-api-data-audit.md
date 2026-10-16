---
tipo: sessao
projeto: global-live-data
resumo: "Auditoria de APIs e proposta para aprofundar categorias existentes."
tags: [global-live-data, sessao, dados, qualidade]
atualizado: "2026-10-16"
data: "2026-10-16"
ia: codex
maquina: local
---

# Sessao: auditoria dos dados

## Objetivo
Avaliar se os dados disponiveis atendem o publico e o que as APIs atuais podem melhorar.

## Estado
Main limpa, local/remota 5c7c8907c518947bc8ae5c05105016887d1dce8c. Site mantido na publicacao anterior. Relatorio e notebook executado em qa-artifacts/data-audit-2026-10-16, ignorados pelo Git. Achados e limites em [[api-data-adequacy]].

## Conclusao e opcoes
Fontes atuais permitem mais profundidade; priorizar calendarios/time e classificacao Bundesliga, historico FX e previsao7dias. Recomendacoes nao implementadas nem aprovadas como nova publicacao. Amostras limitadas nao medem views. Manter protocolos historicos e de licenca.

## O que evitar
Nao confundir filtro3rodadas com falha de importacao, campos ausentes com zero, stale pontual com pane, calendario cadastrado com temporada completa ou propostas com trabalho entregue. Round/PGN Lichess nao sao comprovadamente anonimos. Caminho inicial de schema retornou404; listagem oficial resolveu.

## Proximo passo
Retomar a prioridade escolhida pelo usuario com os criterios de [[api-data-adequacy]]. Para reproduzir contagens offline: python3 qa-artifacts/data-audit-2026-10-16/profile.py. Probes fazem rede e devem ser limitados. Nenhuma suite de codigo/build rodou nesta auditoria; nenhuma conta ou infraestrutura foi alterada.

## Prompt inicial
Aprofundar os dados existentes conforme escopo confirmado pelo usuario: 1. retomar cerebro e verificar Git; 2. ler api-data-adequacy e relatorio; 3. escolher uma entrega com criterios de dados verificaveis; 4. implementar/testar sem ampliar fontes/contas ou publicar sem autorizacao aplicavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[api-data-adequacy]] - Evidencia e prioridades.
