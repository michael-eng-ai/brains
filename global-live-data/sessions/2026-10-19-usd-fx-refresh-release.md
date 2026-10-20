---
tipo: sessao
projeto: global-live-data
resumo: "PR20 publicada; refresh USD automatico, fonte recuperada antes da correcao."
tags: [global-live-data, sessao, cambio, atualizacao]
atualizado: "2026-10-19"
data: "2026-10-19"
ia: codex
maquina: macos
---

# Sessao 19 outubro: atualizacao USD

## Objetivo
Investigar indisponibilidade USD, corrigir atualizacao, testar, integrar e publicar sob [[2026-10-19-repair-usd-fx-refresh]].

## Estado
- PR20 integrada, main/origin limpos 3c6a9fef83b1962f0d2b85b4fe676b3622eb1647; CI PR/main dois jobs e Production Ready exatos em [[release-status]].
- Fonte/publico latest/history ja recuperados antes de editar. Defeito confirmado era pagina sem reconsulta automatica; causa upstream anterior nao confirmada. [[football-fx-pilot]].
- Check 92/Python 11/Chromium 33/WebKit 33; QA real 390/1280 e PT/EN/ES aprovados. [[validation-workflow]].

## Decisoes e motivos
Respeitar nextRefreshAt e cache de 1h existente; esperar 60s apos envelope expirado para SWR; prazo de 20s, pausa em aba oculta e cleanup. Nao remover cache/forcar fonte/rebaixar validacao para fazer uma checagem passar. Sem novos servicos ou mudanca das rotinas TSE/editorial.

## Opcoes em aberto
Dominio/Google pendentes em [[launch-readiness]]. Safari nativo iOS nao verificado; WebKit e emulacao. Sem SLA de disponibilidade Frankfurter; causa do primeiro incidente nao recuperavel pelo envelope anterior.

## O que evitar
Nao atribuir recuperacao da fonte a este patch. O teste novo falhou antes da correcao; fixture inicial de visibilidade errada foi ajustada antes das suites completas. Conector Vercel 403 e CLI ausente: usar dashboard existente, sem credenciais/relaxamento. No probe historico a resposta e feed direto, nao campo feed. Verificador HTTP temporario assumia lang como primeiro atributo de html; corrigido para ignorar ordem apos observar data-dpl-id antes de lang, sem alterar produto. Manter fontes/datas variadas por par, nunca zerar ausencias.

## Proximo passo concreto
Acompanhar relatos de recuperacao/refresh na pagina publicada; se houver novo incidente, ler docs/FX-REFRESH.md e docs/OPERATIONS.md, comparar metadata com a fonte respeitando nextRefreshAt e limites. Nao repetir suites se nenhuma mudanca/falha justificar. Continuar dominio somente apos escolha/autorizacao da transacao.

## Prompt inicial para proxima sessao
1. Sincronize cerebro/main e confira Git. 2. Leia [[football-fx-pilot]] e docs/FX-REFRESH.md para distinguir fonte/browser/cache. 3. Reproduza uma falha atual antes de editar, preserve backoff/datas; se precisar corrigir, complete checks/PR/CI/Ready. 4. Salve e sincronize resultado significativo.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-19-repair-usd-fx-refresh]] - Autorizacao.
- [[football-fx-pilot]] - Diagnostico e contrato.
- [[validation-workflow]] - QA.
- [[release-status]] - Recibos.
- [[launch-readiness]] - Dominio pendente.
