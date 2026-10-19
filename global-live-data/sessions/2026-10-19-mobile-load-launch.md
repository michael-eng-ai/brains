---
tipo: sessao
projeto: global-live-data
resumo: "PR18 corrigiu WebKit; carga local passou; dominio/Google aguardam escolha."
tags: [global-live-data, sessao, validacao, lancamento]
atualizado: "2026-10-19"
data: "2026-10-19"
ia: codex
maquina: local
---

# Sessao 19/10: mobile, carga e dominio

## Objetivo da sessao
Validar mobile/carga, corrigir problemas e preparar dominio proprio/Google.

## Estado
- PR18 integrada em main dfcd79568a296b804fa04053db52916a93335ae9; CI PR/main e Production Ready exatas verificadas em [[release-status]].
- Check92/Python11/Chromium29/WebKit29 e3 controles passaram; carga3164 requests/15clientes/zeroerros. [[validation-workflow]].
- Xcode/simctl ausentes: Safari iOS nativo permanece pendente. WebKit emulado e evidencia parcial, nao telefone fisico.
- Dominios cotados: globallivedata.com USD11.25/1ano e renovacao11.25, disponivel na consulta. Proprietario pediu opcoes; ainda nao escolheu/comprou. [[launch-readiness]].

## Decisoes tomadas e motivos
[[2026-10-19-mobile-load-and-domain-research]]: testes/correcao e pesquisa de dominios autorizados. Prefetch automatico dos links envolvidos foi removido para evitar cancelamentos com erro no WebKit e reduzir requisicoes especulativas; nenhuma protecao foi relaxada. Sem compra/conta/DNS/analytics/gasto/automacao.

## Opcoes em aberto
Recomendacao globallivedata.com; confirmar nome, termo, limite/preco e renovacao antes de compra. Site ja publico, HTTPS/robots/sitemap69URLs; canonical da home e origin devem ser alinhados na migracao. Google Search Console ainda nao verificado. iPhone real e carga na hospedagem/distribuida/redeCPU limitadas pendentes.

## O que evitar
Nao chamar emulacao de Safari nativo nem tratar benchmark local como capacidade Vercel. Nao desabilitar CSP ou filtrar erros para passar teste. Primeiro comando npx aninhado falhou EUSAGE; usar node node_modules/playwright/cli.js sob Node24. Controles temporarios corrigiram formato localizado de1000. Nao inventar dominio, DNS, precos permanentes ou indexacao.

## Proximo passo concreto
Escolher/autorizar dominio conforme [[launch-readiness]], entao configuracao DNS/HTTPS/origin e propriedade Search Console. Scripts QA temporarios encerrados; instrucoes reproduziveis WebKit no README/playwright.config.ts.

## Prompt inicial para a proxima sessao
1. Sincronize cerebro/Git e leia [[launch-readiness]]. 2. Confira escolha/autorizacao atual de dominio e cotacao sem presumir compra. 3. Prepare ou execute apenas a etapa autorizada e teste origin/canonical/hreflang/sitemap/HTTPS. 4. Registre o estado real e pendencias, sem alegar Safari nativo/indexacao nao observados.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-19-mobile-load-and-domain-research]] - Escopo.
- [[launch-readiness]] - Proximo passo.
- [[validation-workflow]] - Resultados/limites.
- [[release-status]] - Recibos.
