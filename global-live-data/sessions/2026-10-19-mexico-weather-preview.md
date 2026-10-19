---
tipo: sessao
projeto: global-live-data
resumo: "Previa mexicana EN/PT/ES com MET real, sete datas, testes e bloqueio na Vercel."
tags: [global-live-data, sessao, previsao]
data: "2026-10-19"
atualizado: "2026-10-19"
ia: codex
maquina: local
---

# Sessao 19/10: previsao mexicana

## Objetivo
Implementar a prioridade escolhida a partir do relatorio, apenas em previa local.

## Estado
- Branch codex/mexico-weather-preview, commit local 3ad3bf7c06093d0e3b5ff2539d01102b308e3ea1, arvore limpa. Sem push do projeto, PR, merge ou deploy.
- Main/origin-main permanecem 02be71dcf881212ca4bcc29d1641179a9c0196f4. Publicacao anterior preservada.
- Previa em http://127.0.0.1:3101/es/lab/weather/mexico-city (PT/EN tambem). Servidor local de revisao ativo em 3101 com GLD_ENABLE_LAB=1; parar antes de reconstruir .next.
- Contrato, fontes, observacao real e verificacoes: docs/WEATHER-MEXICO-PREVIEW.md e [[met-forecast]].

## Decisoes e limites
- [[2026-10-19-mexico-weather-first]] registra escolha e limite de publicacao; nenhuma ampliacao do catalogo de 42 cidades ou nova API.
- Fonte exibida em 12:58 UTC, sete datas 19-25/10, periodos 1h/6h distintos; apenas uma observacao, sem promessa de monitoramento.
- Finais: check: 90 unidades/lint/types/build/HTTP e 25 Chromium passaram. Mobile 390/desktop 1280, idiomas, teclado, refresh, tabela rolavel e console verificados. Fontes de datas ampliadas para 12px.
- Gate local/VERCEL e noindex verificados. Nao executados Python (sem alteracao de historico), telefone fisico/Safari, carga, CI remoto ou deploy.

## Opcoes em aberto
Revisar previa, depois decidir release ou validacao geografica de Monclova. FIRMS permanece pesquisa documental sem prova de ingestao.

## Evitar
Nao iniciar build no mesmo .next enquanto a previa estiver ativa. Nao usar fixture como dado real nem somar periodos de chuva sobrepostos. Uma verificacao de Prettier pediu quebra de linha em smoke.mjs; corrigida, sem falha pendente. FAQ NASA 403 nao foi contornada.

## Proximo passo
Aguardar avaliacao local; manter esta branch/commit e respeitar limite de publicacao. Se servidor parar, Node24: `GLD_ENABLE_LAB=1 npm run start -- --hostname 127.0.0.1 --port 3101`.

## Prompt inicial
Retome a previa de previsao mexicana: 1. Sincronize/leia o cerebro e Git. 2. Abra docs/WEATHER-MEXICO-PREVIEW.md e valide o pedido atual contra o escopo local. 3. Inspecione a previa 3101 sem reconstruir com servidor ativo. 4. Aplique apenas o feedback autorizado; nao publique nem amplie geografia sem nova instrucao.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[2026-10-19-mexico-weather-first]] - Limite autorizado.
- [[met-forecast]] - Contrato.
- [[curated-geography]] - Catalogo preservado.
- [[api-data-adequacy]] - Evolucao da prioridade de dados.
