---
tipo: conceito
projeto: global-live-data
resumo: "Calendarios/time/classificacao e serie cambial30/90dias com limites verificaveis."
tags: [global-live-data, dados, entrega]
atualizado: "2026-10-16"
---

# Profundidade de esportes e cambio

Implementacao em PR13 https://github.com/michael-eng-ai/global-live-data/pull/13, head b706547e95e68a0088421fd76f2adf11f8b07f6e. Contrato canonico no repo: docs/SPORTS-FX-DEPTH.md; codigo lib/depth, components/sports-explorer.tsx, components/fx-history.tsx e /api/depth.

- Football bl1/ucl e hockey del/CHL: todas as partidas cadastradas2026/27, filtros rodada/nome/status, calendario progressivo, paginas internas por time e forma5finais. Fonte comunitaria; sem resultado inventado por horario, sem placar ao vivo. Hoquei usa placar final cumulativo de prorrogacao/desempate, nao soma parciais nem aplica pontuacao futebol.
- Bundesliga getbltable separado: exige18times unicos ou vazio, valida jogos e saldo; preserva ordenacao/deducoes do fornecedor. Falha nao elimina calendario.
- FX Frankfurter v2 combinado: cinco bases/quatroquotes, janela90dias UTC, grafico30/90, variacao primeiro/ultimo observado, min/max e tabela diaria. Sem preencher lacunas; moeda destino permanece selecionavel com falha da taxa recente. Conversor/historico podem ter datas distintas. Sem novo armazenamento duravel; seis arquivos historicos preservados.
- Normalizacao: liga/ID/temporada fixa, partidas unicas, identidades de times consistentes, placares finais, limites600partidas e360taxas/base. Inputs extras/duplicados rejeitados. Times aceitam somente esporte/liga/ID valido; noindex,follow enquanto existencia depende de dados client-side. Dados ausentes mostram mensagem, sem soft404 indexavel.
- Fontes: https://api.openligadb.de/ (ODbL1.0) e https://frankfurter.dev/ (series combinadas gratuitas comerciais; doc reconferida16/10). Credito interno e JSON adaptado em sources. Sem logos/fotos/PII novos.
- TTL futbol/tabela5min, hockey6h, FX1h; hard24h/36h/7dias. Calendario: current group + groups + ate 3 tokens + full season; seis chamadas frias. Fullrefresh ao menos6h sob demanda descobre correcoes antigas. ETagFX somente mesmajanelaUTC;30/90/quote muda localmente semrequest.
- Cache Next separado de single-flight/processo. Queue/backoff porhost do novo service nao coordena legado/instancias. Cold inventory OpenLiga: 26 legado + 25 novo = 51 chamadas; limite documentado60/min/IP, sem garantia distribuida. Medir antes de promover/expandir.
- Probe real limitado21:38UTC:306BL/144UCL/364DEL/88CHL, finais46/36/64/72; tabela18; FXUSD360rows90dates19jul–16out. Snapshot nao e certificacao nem SLO.

Testes locais Node24: check: 87 unit + lint + types + build + HTTP; Python11; Chromium25. Inspecao real390/1280: time/idioma, tabela, rodadaDEL7jogos, EURJPY90observacoes; semoverflow/consoleerro. Tipografia do grafico ajustada apos screenshot mobile. Falhas iniciais foram locators getByLabel exatos envolvendo select e titulo antigo; corrigidos com role/name acessivel. Sem mobileSafari/telefonefisico/carga distribuida.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[2026-10-16-publish-sports-fx-depth]] - Autorizacao especifica.
- [[2026-10-16-sports-fx-depth-release]] - Handoff.
- [[api-data-adequacy]] - Origem da melhoria.
- [[football-fx-pilot]] - Feeds preservados do portal.
- [[sports-election-feeds]] - Hoquei original.
- [[provider-cache]] - Limites de cache.
- [[release-status]] - Recibo remoto.
- [[validation-workflow]] - Validacao.
