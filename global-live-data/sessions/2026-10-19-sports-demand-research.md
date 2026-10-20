---
tipo: sessao
projeto: global-live-data
resumo: "Pesquisa de demanda para Brasileirao, NBA e outras ligas, sem nova publicacao."
tags: [global-live-data, sessao, esportes, demanda]
atualizado: "2026-10-19"
data: "2026-10-19"
ia: codex
maquina: macos
---

# Sessao 19 outubro: demanda esportiva

## Objetivo
Conferir ausencia de Brasileirao/NBA e pesquisar nivel de busca para orientar proximas ligas.

## Estado
Main/origin limpos 3c6a9fef83b1962f0d2b85b4fe676b3622eb1647. App inalterado; nenhum PR/deploy. Relatorio/evidence.json em qa-artifacts/sports-demand-2026-10-19 (ignorados). Cerebro retomado com pull ff-only sem divergencia.

## Decisoes e motivos
Registrar proposta baseada em assuntos comparaveis no Trends e limites reais das APIs. Prioridade proposta Brasileirao/NBA/PremierLeague, depois LaLiga; [[sports-demand-priorities]] guarda valores, URLs e criterios. Nenhuma nova conta, chave, plano ou medicao de visitantes autorizada por esta pesquisa.

## Opcoes em aberto
Uso comercial gratuito/retencao football-data.org precisa esclarecimento. NBA requer conta/chave gratuita e prova de cobertura atual/anterior; classificacao nao faz parte do gratuito. Dominio/Google continuam pendentes, sem compra. Licenca documentada nao equivale a probe funcional.

## O que evitar
Grafico BR deu erro; nao inventar comparacao regional. Nao usar termos ambiguos/edicao antiga como assunto da liga; selecao final foi conferida. Indice0-100 nao e volume mensal ou receita. RSS10recentes nao e top10volume. Nao criar gastos ou considerar termos de2015 necessariamente vigentes. Nao anunciar novas ligas publicadas.

## Proximo passo concreto
Retomar relatorio e escolher piloto viavel com acesso e direitos resolvidos; validar temporada anterior antes de prometer historico. Executar checks/CI/Ready apenas quando houver implementacao autorizada, preservando gates e main.

## Prompt inicial para proxima sessao
1. Sincronize cerebro e confira Git. 2. Leia [[sports-demand-priorities]] e qa-artifacts/sports-demand-2026-10-19/README.md. 3. Resolva acesso e uso permitido da fonte escolhida, sem assinar planos implicitamente. 4. Teste dados reais/retencao e implemente somente o escopo autorizado. 5. Registre evidencia e sincronize cerebro.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[sports-demand-priorities]] - Pesquisa e fontes.
