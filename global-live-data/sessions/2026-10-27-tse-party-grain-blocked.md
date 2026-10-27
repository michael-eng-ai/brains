---
tipo: sessao
projeto: global-live-data
resumo: "TSE bloqueado por granularidade partidaria; canonicos e publico preservados."
tags: [global-live-data, sessao, eleicoes, qualidade, bloqueio]
data: "2026-10-27"
atualizado: "2026-10-27"
ia: codex
maquina: macos
---

# Sessao: bloqueio TSE de granularidade partidaria

## Objetivo e estado
- Uma captura oficial TSE autorizada, com retencao de 2022 e edicoes anteriores.
- Main/origin limpos 77859c1adc140e4c802d550c12b628df12c43271.
- --apply executado uma vez; exit 1, status blocked em 18:53:16.166Z.
- Erro Duplicate party grain or missing contest, import-tse-history.py:108.
- Branch vazia removida; nenhuma PR, commit no produto ou deploy.

## Decisoes e limites
- Preservados bytes/mtime dos sete JSONs; nada fabricado ou deduplicado.
- Mensagem ambigua: duplicacao OU falta de contest; UF/cargo/turno desconhecidos.
- Nao afirmar descoberta/ausencia de turno 2 com esta captura falha.
- Candidato anterior de 12:55Z nao e evidencia desta rodada; ZIPs foram limpos.
- Detalhes e proxima acao em [[brazil-election-comparison]], [[refresh-tse-elections]].
- Ready no painel da PR51 continua pendente de desbloqueio do Mac.
- Nenhuma mudanca de rotina editorial, frequencia, servico ou acesso.

## Validacao
- Node 24.22.1, Python 3.12.4; 11 testes history-import passaram.
- Dois probes sinteticos reproduzem as duas causas da mensagem.
- Publico 2026/2022 HTTP 200 e igual ao canonico em 18:53:55.868Z.
- Canonico mantem 136 recortes, ambos RO, turno 1 e nenhuma quarentena.
- Check completo, e2e, CI e UI nao repetidos: nenhum dado/codigo mudou.
- Lock removido; logs/recibos /tmp/gld-tse-20261027-1852-*.

## Retomada
1. Sincronize cerebro; leia current, esta sessao e docs/TSE-REFRESH.md.
2. Confira Git livre/main atualizada; na proxima rodada use branch codex/.
3. Execute --apply uma unica vez; inspecione exit code/relatorio atual.
4. Se falhar, preserve e investigue sem relaxar gates ou reutilizar candidato velho.
5. Se material e valido, revise diff, testes/QA/PR/CI/merge/Ready/SHA/publico.
6. Salve/sincronize resultado significativo; no-op fica silencioso.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Evidencias e limites.
- [[refresh-tse-elections]] - Procedimento e mensagem ambigua.
