---
tipo: sessao
projeto: global-live-data
resumo: "TSE bloqueado por retencao RN; dados publicados preservados."
tags: [global-live-data, sessao, eleicoes, qualidade]
atualizado: "2026-10-25"
data: "2026-10-25"
ia: codex
maquina: macos
---

# Sessao: retencao RN bloqueia captura TSE

## Objetivo e estado
- Uma captura oficial autorizada, preservando historico e todos os recortes validos.
- Exit 1/status blocked em 18:49:01 UTC: deputado estadual RN, turno 1.
- Main/origin limpos em 2cae649854052aca8cb059da182fe9b950798250; branch temporaria vazia removida.
- Nenhum commit, PR ou deploy do produto; PR42 editorial preservada.

## Evidencias e limites
- Sete arquivos canonicos, hashes, mtimes e proveniencia intactos.
- Guard de retencao interrompeu o lote; novo candidato nao foi gravado.
- Arquivo candidato ignorado pertence a rodada das 12:43 UTC; nao usar como captura atual.
- Nenhum turno 2 validado/aplicado; nao inferir disponibilidade total a montante.
- Novos valores, hashes e causa upstream nao estao no relatorio de erro.
- 11 Python e 3 TypeScript passaram; exports publicos 2026/2022 iguais aos canonicos.
- RN estadual legivel em PT/EN/ES, 390/1280 pixels; capturas inspecionadas, sem erros/overflow.
- Suites completas, WebKit/iOS/carga/CI nao repetidos por ausencia de alteracao.
- Fatos e diagnostico em [[brazil-election-comparison]].

## Decisao e opcoes
Preservar o snapshot publicado e registrar o novo impedimento. Nenhum gate afrouxado e nenhum segundo download. Proxima captura na cadencia existente; mesma falha sem novidade nao precisa gerar notificacao repetida.

## O que evitar
Nao retirar RN ja publicado, preencher ausencia com zero, chamar falha de no-op, inventar IDs ou atribuir causa eleitoral sem evidencia. USD e falha sintetica FX permanecem assuntos separados.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS.md e docs/TSE-REFRESH.md; confira Git.
2. Na proxima rodada, main limpa, branch codex/, Node 24/Python 3.11+ e uma unica chamada --apply.
3. Se blocked, preserve snapshot e confira relatorio atual; se changed false, nao publique.
4. Mudanca valida exige diff/proveniencia/testes/QA/PR/CI/Ready/publico antes da conclusao.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Evidencias e limites.
- [[refresh-tse-elections]] - Procedimento.
