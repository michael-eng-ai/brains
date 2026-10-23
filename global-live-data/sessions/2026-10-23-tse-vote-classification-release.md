---
tipo: sessao
projeto: global-live-data
resumo: "PR32 publica revisao TSE reconciliada; PB recuperado e historia preservada."
tags: [global-live-data, sessao, eleicoes, release]
data: "2026-10-23"
atualizado: "2026-10-23"
ia: codex
maquina: macos
---

# Sessao: revisao nominal e legenda TSE

## Objetivo da sessao
Executar uma captura oficial e publicar apenas revisao que preserve todos os recortes validos.

## Estado
- PR32 integrada; main/origin limpos em 43c9dd3d84b7fb8b9d5fec608b7cd0a084d8463e.
- Ambos jobs CI da PR/main aprovados; Production Ready e publico/export conferidos em [[release-status]].
- PB voltou a reconciliar; novo split UNIÃO/MS preserva total. Proveniencia e escopo exatos em [[brazil-election-comparison]].
- Sem turno2, nenhuma regressao RO/2022/esportes. Editorial15artigos e piloto de nomes preservados.

## Decisoes tomadas e motivos
- Publicar mudanca material nominal/legenda, mesmo com soma inalterada; nenhum motivo juridico inferido.
- Encerrar o bloqueio PB apenas com a captura reconciliada, sem relaxar gates ou esconder divergencias.

## Opcoes em aberto
- Proxima captura pode incluir nova revisao ou turno2 quando fontes/identidades/data realmente permitirem.

## O que evitar
- Nao usar candidato antigo de rodada bloqueada nem repetir captura no mesmo ciclo.
- Timestamp EN usa en-GB; nao impor formato US ou hora identica a todos os idiomas nas verificacoes.
- Nao tratar testes Chromium como WebKit/iOSnativo/carga, nem probe pontual como SLA.

## Proximo passo concreto
Na proxima rodada, main limpa/atualizada e uma unica chamada npm run history:refresh:tse -- --apply com Node24/Python3.11+. changed=false nao publica; falha preserva snapshot; mudanca valida exige gates completos.

## Prompt inicial para a proxima sessao
1. Sincronize cerebro e leia current/esta sessao, AGENTS.md e docs/TSE-REFRESH.md.
2. Confira Git/lock, execute captura unica em branch codex/ se livre e inspecione relatorio/diff/proveniencia.
3. Para revisao valida, testes/QA/PR/CI/merge/Ready/publico/export e cerebro; nao alterar editorial, cadencia ou infraestrutura.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Dados e limites.
- [[refresh-tse-elections]] - Procedimento.
- [[release-status]] - Recibos.
