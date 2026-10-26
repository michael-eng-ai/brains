---
tipo: sessao
projeto: global-live-data
resumo: "PR44 publica revisoes TSE RN/PE; CI, Production e exports verificados."
tags: [global-live-data, sessao, eleicoes, dados, release]
data: "2026-10-26"
atualizado: "2026-10-26"
ia: codex
maquina: macos
---

# Sessao: revisoes TSE RN/PE

## Objetivo e estado
- Uma captura oficial autorizada; exit 0 changed/applied true em 00:45:20 UTC.
- PR44 integrada; main/origin limpos em e5a4f8fb32d956a905e92f1a27ee638889153174.
- Ambos CI PR/main, Production Ready exato, paginas e exports em [[release-status]].

## Decisoes e limites
- Tres revisoes RN/PE reconciliadas; bloqueio RN anterior resolvido nesta captura.
- Todos os 136 recortes retidos; 1.929 agregados, sem quarentena; ambos RO preservados.
- Sem segundo turno nesta captura; nao inventar IDs ou ampliar o significado da ausencia.
- Duas linhas anteriormente zeradas ausentes; nao recriar como zero.
- 133 demais recortes, 2022 e quatro esportes inalterados; versoes anteriores em Git.
- Valores/digests/aquisicao em [[brazil-election-comparison]]. Nenhuma causa politica inferida.

## Validacao
- 11 Python, 101 unitarios, check e 35 Chromium passaram; QA EN/PT/ES 390/1280.
- Exports 2026/2022 iguais ao canonico; breakdown/REDE/RO e 2022 turno 2 verificados.
- Sem overflow/console; capturas inspecionadas. WebKit/iOS/carga nao repetidos.
- Ops: nove feeds representativos ready, incluindo USD (ops exit 0); disponibilidade USD pontual em [[football-fx-pilot]].
- Nenhuma conta, chave, gasto, gate, permissao CI ou frequencia alterada.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS e docs/TSE-REFRESH.md; confira Git.
2. Main limpa, branch codex/, Node 24/Python 3.11+; uma unica chamada --apply.
3. changed false nao publica nem altera datas; blocked conserva o snapshot e exige diagnostico.
4. Mudanca valida segue diff/proveniencia/testes/QA/PR/ambos CI/Ready/exports e cerebro.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Dados e limites.
- [[historical-editions]] - Retencao.
- [[release-status]] - Publicacao.
- [[football-fx-pilot]] - Observacao USD.
