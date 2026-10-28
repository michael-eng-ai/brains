---
tipo: sessao
projeto: global-live-data
resumo: "Rechecagem TSE repete bloqueio de granularidade; dados publicados preservados."
tags: [global-live-data, sessao, eleicoes, qualidade, bloqueio]
data: "2026-10-28"
atualizado: "2026-10-28"
ia: codex
maquina: macos
---

# Sessao: rechecagem da granularidade TSE

## Objetivo e estado
- Uma captura oficial autorizada, preservando dados validos e edicoes anteriores.
- Main/origin limpos em ab9fd8eb51a8fca5255d8e184714a75bd01a56a4.
- --apply executado uma vez; exit 1, status blocked em 00:54:06.176Z.
- Duplicate party grain or missing contest continua em import-tse-history.py:108.
- Branch vazia removida; nenhum commit de produto, PR ou deploy.

## Decisoes e limites
- Duplicacao OU falta do total correspondente; relatorio nao distingue o ramo.
- Nenhuma conclusao sobre UF/cargo/turno ou disponibilidade real do segundo turno.
- Sete JSONs mantiveram bytes e mtime; 136 recortes e ambos RO preservados.
- Candidato anterior de 27out12:55Z nao foi reutilizado como nova evidencia.
- Lock/staging desta rodada limpos; duas pastas de 16out preservadas.
- Sem nova aquisicao, deduplicacao silenciosa, zeros inventados ou gates relaxados.
- Contexto em [[brazil-election-comparison]] e [[refresh-tse-elections]].

## Validacao
- Node 24.22.1/Python 3.12.4; 11 testes history-import passaram.
- Exports publicos 2026/2022 HTTP 200 e iguais ao canonico em 00:55:19.504Z.
- Check completo/e2e/UI/CI nao repetidos: nenhum dado ou codigo mudou.
- Recibos locais /tmp/gld-tse-20261028-0053-*.

## Proxima tarefa
1. Sincronize cerebro; leia current, esta sessao e docs/TSE-REFRESH.md.
2. Confira main atualizada e arvore livre; na proxima rodada use branch codex/.
3. Execute --apply uma unica vez; inspecione exit code e relatorio atual.
4. Preserve os dados se falhar; nao interpretar candidato antigo como novo.
5. Se mudanca valida: diff, testes/QA, PR/CI, merge, Ready/SHA/publico.
6. Salve/sincronize resultado significativo; no-op nao exige publicacao.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Evidencias da rodada.
- [[refresh-tse-elections]] - Procedimento e diagnostico.
