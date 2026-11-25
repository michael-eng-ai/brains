---
tipo: sessao
projeto: global-live-data
resumo: "Captura TSE expirou; 2026/2022 publicados preservados e conferidos."
tags: [global-live-data, sessao, eleicoes, qualidade, operacao]
atualizado: "2026-11-25"
data: "2026-11-25"
ia: codex
maquina: macos
---

# Timeout da captura TSE sem alteração publicada

## Objetivo e estado
Uma captura oficial em main atualizada, branch codex/tse-refresh-20261125-0101, Node v24.22.1/Python 3.12.4. Início 2026-11-25T01:03:11.229579+00:00, término 2026-11-25T01:18:43.148284+00:00. Saída 1, relatório blocked às 2026-11-25T01:18:43.135Z, razão spawnSync python3 ETIMEDOUT. Main/origin limpas 6a7a03d60717f3cb2b1db7226851aba6de5c70e3; branch vazia removida.

## Evidência e limites
Wrapper configura 480000 ms e rejeita erro do subprocesso antes de validar/aplicar candidato. Logs não estabelecem etapa ou causa do atraso. Falha diferente do bloqueio AP anterior; não comprova que AP reconciliou nem que a divergência se repetiu. Não é changed=false.
Sete JSON históricos e candidato antigo mantiveram hashes/mtimes. Lock/staging próprios removidos; duas pastas antigas preservadas. Sem processo refresh-tse.py restante ou novo temporário gld-tse identificado no diretório temporário consultado. [[brazil-election-comparison]].
Em 2026-11-25T02:47:41.806209+00:00, curl com TLS válido retornou exports 2026/2022 HTTP200, semanticamente iguais aos canônicos incluindo proveniência/datas. Preservados 170/176 recortes, ambos turnos, RO/AP publicados e 2022. Comparação normaliza apenas ordem de recortes/partidos.

## Decisões e validação
Não repetir aquisição nesta rodada, aumentar timeouts ou flexibilizar gates. Nenhuma alteração de produto, PR, deploy, conta, credencial, gasto ou frequência. Suites/UI/CI/Ready não repetidos porque código e dados não mudaram. PR94 editorial continua separada.
Recibos /tmp/gld-tse-20261125-0101-before.json, -run.json, -refresh.log, -verification.json e -public.json. O próximo passo é a captura única da cadência já autorizada; investigar se timeout persistir, sem atribuir causa com este relatório.

## Prompt inicial
1. Sincronize o cérebro, confira Git e leia AGENTS.md/docs/TSE-REFRESH.md.
2. Em main limpa/atualizada, use codex/, Node 24/Python 3.11+ e execute --apply uma vez.
3. Preserve publicado em falha; não confunda candidato antigo com captura nova. Mudanças válidas exigem todos os testes, PR/CI e publicação verificada.
4. Atualize o cérebro; mantenha frequência, gates e editorial separados.

## Rechecagem posterior, 25 novembro 07:53 UTC
A próxima captura autorizada chegou ao guard_candidate e terminou às 08:09 UTC com o bloqueio AP conhecido; ETIMEDOUT não se repetiu no relatório. Isso não estabelece a causa do timeout nem valida uma atualização. Versão publicada preservada e conferida às 08:32:02 UTC; detalhes em [[brazil-election-comparison]].

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[brazil-election-comparison]] - Evidência da retenção e comparação pública.
