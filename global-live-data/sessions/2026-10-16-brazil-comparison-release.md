---
tipo: sessao
projeto: global-live-data
resumo: "PR 9 publicada: Brasil 2026/2022 comparavel com duas divergencias TSE explicitamente retidas."
tags: [global-live-data, sessao, eleicoes]
atualizado: "2026-10-16"
data: "2026-10-16"
ia: codex
maquina: desktop-local
---

# Sessao 2026-10-16: comparacao eleitoral

## Objetivo
Dados oficiais Brasil 2026 e comparacao com 2022 por cargo/estado/turno, publicar e atualizar cerebro, autorizados pelo proprietario.

## Estado
- PR #9 integrada; main dcac132e4bdb495322797aa7fc6c964f504244f0 limpa/local=remota. CI PR/main e Vercel Production Ready observados em [[release-status]].
- Comparacao publica em https://global-live-data.vercel.app/pt/elections/brazil.
- Fonte/semantica/quarentena/procedimento em [[brazil-election-comparison]]; edicoes anteriores preservadas.

## Decisoes e limites
- Publicar apenas selecoes reconciliadas e sinalizar os dois recortes de deputados de RO indisponiveis; 2022 permanece legivel.
- Senado separa duas escolhas de pessoas; nao calcular variacao de votos/percentuais partidarios incompativeis.
- Segundo turno 2026 ausente, sem IDs inventados nem atualizacao automatica prometida. Nenhum servico/conta/gasto novo.

## O que evitar
- ANO_ELEICAO isolado, BRASIL somado aos UFs, convertido somado duas vezes, ausencia convertida em zero.
- Manter exclusao apos correcao da fonte: importador deve falhar e exigir revisao.
- npx dentro de npx --call; executar a ferramenta local com node. Builds nao podem compartilhar .next simultaneamente.

## Proximo passo concreto
Nova carga limitada do TSE para resolver RO ou incluir segundo turno quando publicado, seguindo docs/BRAZIL-COMPARISON.md. Verificar fonte real, identidades e cobertura; nunca substituir 2022.

## Prompt inicial para proxima sessao
Atualize a captura oficial das eleicoes brasileiras com novos dados verificaveis: 1. sincronize/leia cerebro e Git; 2. confira docs/BRAZIL-COMPARISON.md e novas fontes TSE; 3. importe staging/reconcilie e revise quarentenas/turnos; 4. preserve 2022, valide check/e2e e respeite autorizacao vigente antes de publicar; 5. registre evidencia remota e sincronize cerebro. Se a fonte nao mudou ou continua divergente, nao invente valores nem publique alteracao vazia.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado operacional.
- [[historico]] - Linha do tempo.
- [[brazil-election-comparison]] - Contratos e proximo passo.
- [[historical-editions]] - Retencao e recuperacao.
- [[validation-workflow]] - Validacao e limites.
- [[release-status]] - Evidencias remotas.
