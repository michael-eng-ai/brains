---
tipo: sessao
projeto: global-live-data
resumo: "Refresh TSE bloqueado por regressao RO; dados publicados e historicos preservados."
tags: [global-live-data, sessao, eleicoes, qualidade]
atualizado: "2026-10-24"
data: "2026-10-24"
ia: codex
maquina: macos
---

# Sessao: retencao RO bloqueia atualizacao TSE

## Objetivo
Executar uma captura oficial autorizada e preservar todas as edicoes/selecoes validas.

## Estado
- Main/origin limpos em 28d226858d57a5c548624794ddd20ea549cf1973; branch temporaria vazia removida.
- Uma chamada --apply terminou exit 1/status blocked em 00:36:40.851 UTC: RO federal/estadual, turno 1.
- Sete JSON canonicos e datas intactos; sem commit/PR/deploy do produto.
- Dados/fatos e limites do diagnostico ficam em [[brazil-election-comparison]].

## Investigacao e validacao
- 11 testes Python e 3 TypeScript passaram; nenhuma protecao foi afrouxada.
- Exportacoes publicas 2026/2022 iguais aos arquivos canonicos; RO segue legivel nos tres idiomas em mobile/desktop.
- Roteiro inicial de QA corrigido para reselecionar RO apos mudar cargo; nenhuma mudanca de produto.
- Check/build/e2e completos, WebKit/iOS/carga/CI nao repetidos por ausencia de alteracao.

## Opcoes em aberto
Proxima rodada fara nova captura unica. Relatorio atual nao informa diferencas numericas nem causa upstream; candidato ignorado e anterior. Incidente USD continua separado e nao foi rechecado nesta rotina.

## O que evitar
Nao recapturar neste ciclo, retirar RO ja publicado, voltar silenciosamente a quarentena, usar candidato antigo ou numeros da quarentena de outubro16 como evidencia nova, preencher ausencias com zero ou chamar falha de no-op.

## Proximo passo concreto
Main limpa, branch codex/, Node 24/Python 3.11+ e uma chamada --apply no proximo ciclo. Se validada mudanca material, seguir gates completos de teste/PR/CI/Ready/publico. Caso a mesma falha persista sem novidade, conservar snapshot e evitar notificacao repetida.

## Prompt de retomada
1. Sincronize cerebro e leia current, esta sessao, AGENTS.md e docs/TSE-REFRESH.md.
2. Confira Git e relatorio atual; nao sobreponha trabalho nem reutilize candidato anterior como atual.
3. Preserve todo recorte validado; capture uma unica vez e distinga no-op de blocked.
4. Registre resultado significativo e publique somente apos validacao integral.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Fatos e evidencia.
- [[refresh-tse-elections]] - Procedimento e limites.
