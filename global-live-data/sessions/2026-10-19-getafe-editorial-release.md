---
tipo: sessao
projeto: global-live-data
resumo: "PR19 publicou guia Getafe-Rayo; cinco artigos, CI/Production verificadas."
tags: [global-live-data, sessao, editorial]
atualizado: "2026-10-19"
data: "2026-10-19"
ia: codex
maquina: local
---

# Sessao 19 outubro: guia Getafe-Rayo

## Objetivo da sessao
Executar uma rodada editorial autorizada e publicar no maximo uma pauta apurada.

## Estado
- PR19 integrada, main/origin limpos em 683aeb76be07a9d7ab5f3c0d765b423f1c772240; ambos CI jobs PR/main e Production Ready conferidos. [[release-status]].
- Cinco artigos EN/PT/ES; guia novo com duas fontes primarias, conversoes datadas e limite LaLiga explicito. [[editorial-publishing]].
- Check 92, Python 11, Chromium final 30/30; QA manual 390/1280. [[validation-workflow]].
- Sondagem operacional encontrou FX USD error; recuperacao nao verificada, proximo prazo 19:47:21 UTC. Sete outros feeds prontos; causa upstream nao confirmada. [[release-status]].

## Decisoes tomadas e motivos
A pauta ES Getafe-Rayo era nova e apareceu em varios mercados; selecao datada sem inventar causa/resultado. Filtro Futebol aponta a cobertura existente, sem novo provedor. Autorizacao recorrente [[2026-10-16-auto-editorial]]; nenhuma expansao de conta, custo, anuncios, analytics ou automacao.

## Opcoes em aberto
Dominio/Google ainda dependem de escolha/autorizacao do proprietario em [[launch-readiness]]. Safari iOS nativo segue pendente. Nao prometer indexacao ou crescimento de trafego.

## O que evitar
A primeira suite falhou no novo seletor de CTA, pois o nome acessivel inclui Keep exploring; teste corrigido, 30/30 finais. Label do filtro inclui options; nao usar exact=true na acao manual. Leitura Python usou CA do sistema depois de falha do bundle padrao. Nao reutilizar snippet de agenda sem fuso nem estatisticas inconsistentes; nao alegar placar deste jogo no portal. Script de insercao parou antes de gravar dicionarios por guard amplo; retomado sem duplicar catalogo.

## Proximo passo concreto
Retomar docs/EDITORIAL.md no proximo heartbeat: pesquisar seis mercados permitidos, comparar as cinco leituras e publicar somente pauta nova suficientemente apurada, mantendo silencio em no-op. Nao transformar o guia datado em resultado ao vivo.

## Prompt inicial para a proxima sessao
1. Sincronize cerebro e main, verifique arvore livre. 2. Leia docs/EDITORIAL.md e [[editorial-publishing]]. 3. Execute uma pesquisa limitada com Node 24, escolha ate uma pauta original ou pule. 4. Para publicacao, complete testes/QA/PR/CI/Ready e verificacao publica antes de salvar e sincronizar.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-16-auto-editorial]] - Autorizacao.
- [[editorial-publishing]] - Conteudo e fontes.
- [[validation-workflow]] - Checks.
- [[release-status]] - Recibos.
- [[launch-readiness]] - Pendencia de dominio/Google.
