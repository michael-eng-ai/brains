---
tipo: sessao
projeto: global-live-data
resumo: "Refresh TSE bloqueado em dois recortes PB; historico e producao preservados."
tags: [global-live-data, sessao, eleicoes, qualidade]
atualizado: "2026-10-22"
data: "2026-10-22"
ia: codex
maquina: local
---

# Sessao 22 outubro 2026: TSE bloqueado

## Objetivo
Uma conferencia oficial autorizada, preservando edicoes anteriores e todos os recortes validos.

## Estado
- Main/origin 77b578053ee05974b1ad006658566e61af53c175 limpos e atualizados; branch temporaria removida.
- Refresh executado uma vez, exit 1 e status blocked; evidencia/limites em [[brazil-election-comparison]].
- Sete hashes canonicos e datas preservados; sem commit, PR ou deploy. Lock da chamada removido normalmente.

## Investigacao e validacao
Gate de retencao exige conservar todos os recortes publicados. Nao relaxado. Candidato ignorado e anterior a esta rodada; nao usar como evidencia atual.
11 testes de importacao e history:build das 6 edicoes passaram. Check completo/e2e/UI/Production nao rodados: nenhum produto/dado alterado.

## Opcoes em aberto
Nova captura somente na proxima execucao agendada. Diagnostico detalhado dos valores nao esta disponivel no relatorio de erro atual; nao inventar a causa.
Pendencia Ready da PR29 e teste de nomes sao independentes e continuam preservados no estado atual.

## O que evitar
Nao repetir download nesta rodada, tratar blocked como changed=false, apagar recortes, permitir PB em quarentena, preencher com zero ou redesplegar versao inalterada.
Diretorios ignorados tse-refresh-Xr0frx/BzOWDT datam de 16 outubro; nao foram criados nem removidos nesta chamada.

## Proximo passo
Proxima rodada: main limpo, branch codex/, Node 24/Python 3.11+, uma chamada --apply e relatorio atual. Se regressao persistir, manter snapshot e registrar resultado significativo.

## Prompt de retomada
1. Sincronize cerebro e leia docs/TSE-REFRESH.md e brazil-election-comparison.
2. Confira Git e nao sobreponha trabalho; uma captura no ciclo autorizado.
3. Respeite falha de retencao e separe candidato anterior de erro atual.
4. Somente mudanca valida segue testes/QA/PR/CI/Production e comparacao JSON publica.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Fatos e limites da falha.
- [[refresh-tse-elections]] - Procedimento e candidato anterior.
