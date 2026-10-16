---
tipo: sessao
projeto: global-live-data
resumo: "Primeiro heartbeat editorial publicou guia Tour 2027 com fontes e release verificados."
tags: [global-live-data, sessao, editorial, automacao]
atualizado: "2026-10-16"
data: "2026-10-16"
ia: codex
maquina: desktop-local
---

# Sessao 2026-10-16: Tour 2027 editorial

## Objetivo
Executar a rotina editorial autorizada, escolher no maximo uma pauta atual apurada, publicar e sincronizar o cerebro.

## Estado
- PR #11 integrada; main 8b6c43893fd2db9b038cca25abc32b8d21f3b66c limpa/local=remota. Recibos CI/Production/publico em [[release-status]].
- Primeiro disparo editorial autonômo concluido. Terceira leitura EN/PT/ES e protocolo em [[editorial-publishing]].
- Dados TSE/historicos e cadencias das duas automacoes preservados.

## Decisoes e limites
- Selecionar tema Tour de France observado em ES, com quatro fontes primarias e horarios calculados para a data correta.
- Guia da apresentacao futura e abertura britanica; nao publicar rumores de percurso, participantes ou resultados.
- Ciclismo e filtro editorial, nao categoria com novo fornecedor. Sem novas contas/chaves/despesas.
- Checks locais/CI e QA aprovados; limites em [[validation-workflow]]. Nenhuma revisao humana, indexacao ou crescimento comprovado.

## O que evitar
- Repetir esta pauta na proxima rodada ou atualizar datas de verificacao sem reapurar.
- Tratar Trends como prova de evento, como ranking mundial ou como causa confirmada do interesse.
- Sobrescrever trabalho em andamento; publicar sem ambos os jobs de CI e Ready do commit exato.
- Confundir hashes/IDs publicos com segredos por causa de pontuacao no scan; inspecionar contexto sem expor candidatos.

## Proximo passo
No proximo disparo, executar docs/EDITORIAL.md e pesquisar outra pauta util. Se revisar este guia depois do anuncio, conferir fontes oficiais e manter a primeira data de publicacao.

## Prompt inicial
1. Sincronize cerebro e Git. 2. Leia docs/EDITORIAL.md e catalogo atual. 3. Pesquise seis mercados ou subconjunto permitido e evite duplicatas. 4. Publique no maximo uma pauta com fontes suficientes, EN/PT/ES, checks/QA/PR/CI/host. 5. Salve/sincronize o cerebro; silencie sem mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Retomada.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Protocolo e escopo.
- [[release-status]] - Recibos de publicacao.
- [[validation-workflow]] - Checks e limites.
- [[2026-10-16-auto-editorial]] - Autorizacao recorrente.
