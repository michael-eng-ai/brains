---
tipo: sessao
projeto: global-live-data
resumo: "Mesmo bloqueio RO confirmado; arquivos, datas e exports publicados preservados."
tags: [global-live-data, sessao, eleicoes, qualidade]
atualizado: "2026-10-24"
data: "2026-10-24"
ia: codex
maquina: macos
---

# Sessao: rechecagem da retencao RO

## Objetivo e estado
- Uma captura oficial autorizada, sem alterar gates ou edicoes validas.
- Main/origin limpos em 099028fb635992a74919df250b1033857e38bea7; branch temporaria vazia removida.
- Exit 1/status blocked em 06:40:18.989 UTC, mesmo bloqueio RO federal/estadual turno 1.
- Sete arquivos e datas intactos; nenhum commit, PR ou deploy do produto.

## Evidencias e limites
- Detalhes e recibos em [[brazil-election-comparison]].
- Exports publicos 2026/2022 HTTP 200 e iguais aos canonicos; candidato ignorado e antigo.
- Codigo/dados TSE identicos aos da falha anterior. Testes e UI nao repetidos; nada declarado aprovado nesta rodada alem das comparacoes executadas.
- Bloqueio ja comunicado e sem nova acao necessaria: nao repetir notificacao.

## O que evitar
Nao recapturar neste ciclo, retirar RO publicado, reutilizar candidato antigo como novo, relaxar gates, preencher ausencias com zero ou chamar blocked de no-op. Nao inferir causa ou disponibilidade de todo o segundo turno a partir deste erro.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current, esta sessao, AGENTS.md e docs/TSE-REFRESH.md; confira Git.
2. Na proxima rodada, main limpa, branch codex/, Node 24/Python 3.11+ e uma unica chamada --apply.
3. Publique somente mudanca material que passe por testes/QA/PR/CI/Ready/publico; preserve toda edicao valida.
4. Atualize o registro significativo e avise apenas novidade acionavel. PR36, USD e demais frentes permanecem conforme current.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Fatos, recibos e diagnostico.
