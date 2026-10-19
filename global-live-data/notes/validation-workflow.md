---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Checks locais e CI sem confundir fixtures com dados reais."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-19"
---

# Validacao

Confirmado nesta sessao sobre 1e93c1f: npm run check passou lint, typecheck, 30 testes unitarios, build e smoke HTTP de nove rotas. npm run test:e2e passou quatro casos Chromium sobre build de producao.

Cobertura browser: magnitude/cidade/idioma/voltar, viewport mobile 390x844, Escape/foco do picker, fontes/privacidade localizadas, vazio versus falha e limites da API. Desktop 1280x720. Screenshots sinteticos inspecionados; sem overlay de framework e com mapa/controles responsivos. Assercoes de erros de hidratacao/CSP passaram.

Operador/MET zerados, GLD_LIVE_SMOKE=0. Sem nova consulta real. Browser plugin ausente; suite Playwright existente usada com Chromium compativel. Warnings de terminal apenas de precedencia NO_COLOR/FORCE_COLOR.

CI em .github/workflows/ci.yml: dois jobs, Node 24, actions oficiais fixadas por SHA, permissoes de leitura, sem segredos ou deploy. Artefatos de fixtures retidos sete dias.

Nao executar builds paralelos na mesma .next; browser suite faz seu proprio build. Problemas de IPC do ambiente antigo sao historicos e nao bloquearam esta execucao local.

## Validacao posterior: mobile publicado e lab (2026-10-15)

No commit local 5726aad, npm run check passou lint/tipos/33 unidades/build/HTTP smoke; quatro casos Chromium passaram novamente. Testes rotineiros offline, MET/contact vazios e GLD_LIVE_SMOKE=0. Sem dependencias alteradas.

Produção observada em Chromium: 320x740 EN, 390x844 PT, 430x932 ES, larguras reais conferidas no DOM. Dashboard, busca Lisboa/Tokyo, magnitude M6.0+ vazio e reset, idioma preservando cidade, Escape/foco e seis paginas fontes/privacidade a 320px passaram. Sem overflow horizontal ou erro de aplicacao; erros de extensao foram distinguidos. Nenhum defeito mobile exigiu patch. O override falho da sessao anterior nao e bloqueio atual.

Previa: categorias, pais JP preservado ao alternar categorias, idiomas, disclosures, layouts 320/390/1280px sem overflow/erros. HTTP confirmou 404 por padrao e na Vercel, 200/noindex nos tres idiomas habilitados e estado indisponivel sem snapshot. Capturas reais sao pesquisa manual separada dos fixtures.

Screenshots temporarios fora do Git: /tmp/global-live-data-review/mobile-production-430.jpg, preview-mobile-390.jpg e preview-desktop.jpg. Emulacao nao comprova dispositivos fisicos, Safari, teclado virtual ou rede lenta; estes nao foram testados.

## Piloto real de futebol e cambio (2026-10-15)

Commit b16718c: npm run check passou lint sem warning, tipos, 43 unidades, build e smoke; quatro e2e Chromium passaram. Probes reais separados verificaram ambas as competicoes e taxas diarias. Gates pagina/API retornam 404 por padrao e na Vercel; cinco queries invalidas retornaram 400; respostas habilitadas noindex/no-store. Cache preservou timestamps em repeticao.

QA interativo 1280px desktop e 390/320px mobile, EN/PT/ES: filtro/competicao, resultados mais recentes, expandir 36 e recolher, bases USD/EUR/BRL, alvos USD/JPY, zero/campo vazio, conversao decimal e consulta manual. Sem erro de aplicacao, overlay ou overflow final. Arredondamento observado 279.92 foi corrigido e verificado como 279.93. Evidencias temporarias /tmp/global-live-data-review/pilot-fx-desktop.jpg e pilot-football-mobile.jpg. Nao houve teste de partida em andamento, dispositivo fisico, Safari ou carga.

## Portal publicado (2026-10-15)

Revisao final b51dda9, integrada como 84aab6e02c244818e76e0f3622af354855a37c0d: lint/tipos, 45 unidades, build, smoke com 18 paginas e sete e2e Chromium passaram. Os testes cobrem cards de dados, ativacao por teclado, paginas internas, fontes sem links externos nos resultados novos, lingua, cidade antiga redirecionada, zero/ausencia/falha e conversor decimal. Ajustes de locators e contagem de paineis apos a separacao foram corrigidos; nenhum check final falhou.

CI da PR 38825723767 e main 38825941909 passaram ambos os jobs. Probes reais locais e hospedados sao separados dos fixtures; resultados em [[release-status]]. Screenshot inicial portal-before.jpg e evidencias publicadas portal-published-desktop.jpg / portal-published-fx-mobile.jpg em /tmp/global-live-data-review, fora do Git. Nenhum screenshot de conta/contato ou corpo bruto de fornecedor foi incluido aqui.

Limites: Safari, dispositivos fisicos, partidas em andamento e carga distribuida nao testados; auditoria de dependencias nao repetida. Logs do navegador da aplicacao nao mostraram erro relevante. Conector Vercel retornou 403 no escopo correto; sem CLI instalada, dashboard autenticado confirmou o deploy. Nao repetir o mesmo conector sem mudanca de acesso.

## Trends e TV publicados (2026-10-15 local)

Revisao 1c1e134 integrada como 95613fb: Node 24.22.0/npm 11.21.1; npm run check passou lint/tipos, 53 unidades, build e smoke de 24 paginas. Nove testes Chromium passaram, com keyboard/cards, filtros, expansao, zero/ausencia/erro e viewports 320/390/820/1280px. Fixtures permanecem offline; nenhum fornecedor consultado pela CI. Ambos os jobs PR/main passaram; recibos em [[release-status]].

Probes reais locais e hospedados verificaram seis paises Trends e seis combinacoes TV, timestamps e entradas invalidas. Primeiro e2e precisou nomes acessiveis explicitos nos selects; corrigido, suite final passou. Ajuste de normalizacao de cabecalho no script temporario de probe nao foi falha do app. Primeiro start via npm exec aninhado falhou; comando direto node node_modules/next/dist/bin/next start funcionou. Navegacao IAB pode retornar snapshot antes do commit da rota; esperar estado atual antes de reutilizar indice AX.

Browser real confirmou filtros de canal, expansao de episodio, proximo dia e navegação interna em desktop/mobile. Nenhum erro final pendente nos checks executados. Nao testados Safari/aparelho fisico/carga/quota distribuida; auditoria de dependencias nao repetida, sem dependencias alteradas.

## Esportes e eleicoes (2026-10-16)

Head 503c54e, merge 8b40a43: npm run check e npm run test:e2e finais passaram com Node 24.22.0/npm 11.21.1: lint, tipos, 61 unidades offline, build, 33 rotas HTTP e 12 casos Chromium. CI PR/main passou; provas remotas em [[release-status]]. Nenhuma dependencia mudou.

Probes reais locais e hospedados verificaram os sete seletores, dados e cache. Primeiro probe revelou URL de last-change sem rodada (404), corrigida e coberta por regressao; fixture nao comprova contrato remoto. Labels de select ficaram explicitos e expectativa de data do teste passou a usar a localizacao inglesa real. Script temporario hospedado inicialmente assumiu ordem de atributos html; corrigido para aceitar data-dpl-id antes de lang, sem mudanca no app. Nenhuma falha final pendente.

Browser real: 1280/390/320px local, 390px hospedado; cards, teclado, ligas/estado/busca, selecao eleitoral e expansao de jogos. Zero overflow/erros de aplicacao observados. Captura publicada em [[release-status]]. Nao testados aparelhos fisicos, Safari, carga, quota distribuida nem custos reais; nenhum monitor foi criado.

## Artigos editoriais (2026-10-16)

Node 24/npm 11: check final passou lint/tipos/63 unidades/build/39 rotas e sitemap/robots/404. Treze e2e Chromium passaram, incluindo busca/filtro/reset/teclado/fontes/idioma, canonical/JSON-LD, sem JS e larguras 320/820/1280. Portal deixou de requisitar Trends. Pesquisa real separada retornou dez pautas por US/BR/GB com status ready. QA IAB 1280/390px, navegacao interna, mobile e troca de idioma passaram. Recibos hospedados em [[release-status]].

Sem falha final de teste. Python urllib local teve erro de CA; Node fetch com TLS normal resolveu. Locator Playwright do IAB falhou para select visivel; AX setValue funcionou e fixtures Chromium passaram. Nao testados Safari/aparelhos fisicos/carga, indexacao, views ou execucao futura do heartbeat.

## Arquivo historico validado

69 unidades Node + 3 testes Python separados; 15 Chromium; 54 rotas HTTP. TSE real reconciliado separadamente, SQLite reaberto somente leitura, rollback/duplicatas/SQL bound/retencao testados. E2E cobre seis cargos, ZZ, idioma/filtros, paginacao, vazio e sem JS. IAB local 1280/390 e hosted 1280/390 sem overflow/erro. Planos reais usam indices; fixtures minimas podem escolher scan. Recibo em [[release-status]].

## Comparacao eleitoral 2026/2022

Node 24.22.0/npm 11.21.1: check final passou lint/tipos/71 unidades/build/60 paginas HTTP; 5 testes Python separados e 17 Chromium passaram. Casos novos verificam duas escolhas Senado versus pessoas, ausencia versus zero, sigla/numero sem fusoes, quarentena/reconciliacao, cobertura presidencial completa, exportacao v1/v2, todos os cargos, idiomas, turno2 ausente, 320/390/820/1280 e leitura sem JavaScript. Traces de comparison/elections/history/API incluem SQLite. Captura oficial separada dos testes offline. Datas de captura visiveis no topo. Evidencias remotas em [[release-status]].

A primeira importacao falhou por divergencia real nos recortes RO e levou a quarentena explicita, nao ao relaxamento geral da reconciliacao. Chamadas npx dentro de npx --call deram EUSAGE antes de executar checks; usar node node_modules/prettier/bin/prettier.cjs no ambiente Node24 selecionado. Checks finais completos passaram. Parar servidor proprio antes de rebuild para nao misturar chunks.

## Atualizacao TSE automatizada

PR #10: 74 testes Node, 11 Python, 17 Chromium, lint/tipos/build e 60 rotas HTTP passaram. CI inclui Python offline, sem download TSE ou permissoes de escrita. Gates sinteticos cobrem perda de cobertura, RO resolvido, ID/data/tipo, turno 2 parcial, transporte e integridade do par arquivo/manifest. Exportacao hospedada comparada integralmente ao canonico; testes UI aceitam futuras atualizacoes validas.

CA Python macOS ausente foi resolvido usando bundle do sistema, mantendo TLS verificado. Caminho Prettier .ts para componente .tsx corrigido antes dos checks. Nenhuma falha final pendente. Probes reais e recibos em [[release-status]].

## Primeiro heartbeat editorial

PR #11: Node 24/npm 11, lint/tipos, 74 unidades, build e 63 paginas HTTP passaram; 18 casos Chromium passaram. Novo caso exercita filtro Ciclismo, teclado, PT/ES/EN, referencias/disclosure e 320/390/1280px. Testes existentes de leitura sem JavaScript, ausencia de chamadas Trends e metadados preservados. Python sem alteracao nao foi rerodado localmente; ambos os jobs CI PR/main, incluindo Python, passaram. Nenhuma falha final de aplicacao.

Fontes atuais lidas separadamente; conversoes do instante anunciado conferidas com Intl/zonas IANA. IAB local e hospedado mostrou leitura e anchors sem overflow/console errors. Probes anonimos e revisoes exatas em [[release-status]]. Safari/aparelhos fisicos, carga, indexacao e crescimento de audiencia nao testados. Scan inicial do cerebro sinalizou pontuacao apos hashes/IDs e nomes ZIP/transcricoes; classificacao revisada confirmou falsos positivos, nenhum segredo encontrado.

## Consolidacao 16 outubro

PR #12, head ee85956439d502f810531fa7dbd86822d7c5cbc7. Check local passou lint/tipos/unidades/build/60 rotas HTTP; rerun final de lint/tipos/unidades passou 79 testes. Python 11 e Chromium 20 passaram. A correcao do comando CLI foi coberta por execucao real e regressao offline; os dois jobs CI finais da PR e da main passaram, conforme [[release-status]]. Nenhum fixture virou dado publicado.

Manual IAB 390/1280px: layout, navegacao, privacidade PT/ES, retorno e console sem erro. Safari nativo macOS: portal-natureza, filtro 6h, idioma PT/EN, renderizacao visual. Dados locais velhos exibiram stale/indisponivel corretamente; consulta limitada posterior confirmou recuperacao MET, sem ocultar USGS stale. Chromium cobre leitura EN/PT/ES com resposta de dados atrasada, nao banda/CPU completa. Telefone fisico/Safari mobile, carga/multirregiao, indice Google e audiencia continuam nao verificados.

Publico: Nove paginas home/privacy/nature EN/PT/ES responderam HTTP200 com CSP e deployment ID exato em 2026-10-16T21:10:19Z. As tres paginas de privacidade identificam operador/host e removem o aviso de pre-lancamento. ops:check as 21:10:06Z retornou exit0: oito feeds representativos ready naquele instante. Navegacao mobile portal-natureza-retorno e desktop publicos sem overflow/erro de aplicacao; USGS posteriormente stale permaneceu sinalizado, sem novo timestamp. Capturas /tmp/gld-consolidation/published-mobile.png e published-desktop.png. Servidor local de QA encerrado; viewport restaurado.. Sem reproduzir contatos publicos, tokens ou logs de visitantes em artefatos.

## Validacao de esportes e FX, 16 outubro

PR13: check87 unit + lint/types/build/HTTP, Python11 e Chromium25 passaram. Cinco novos fluxos browser incluem temporadas/rodadas, time/idioma, falha isolada da tabela, lacunas FX e respostas tardias; seletor de moeda segue funcional sem taxa recente. QA real local/publico390/1280 confirmou conteudo, identidade, ausencia de overlay/overflow/erros e interacoes. Mobile320 coberto em Chromium. O plugin Browser separado nao estava listado; CUA nativo fez UI manual e a suite existente Playwright foi executada conforme contrato do repo. Nao usou automacaoUI por shell. Evidencia de producao e ops stale em [[release-status]].

## Heartbeat TSE de 19 outubro

PR14: Node 24.22.0/npm 11.21.1, Python 3.12.4. test:history-import (11 testes), check (87 unidades)/lint/tipos/build/smoke e 25 testes Chromium passaram. Regressao browser agora confere ambos os cargos de RO com totais retidos e estados pendentes separados. Primeiro e2e falhou por seletor novo apontar apenas h2; corrigido para a regiao de resultados, lint e suite completa repetidos com sucesso. Nenhuma falha final pendente.

O plugin Browser separado nao esta listado; suite Playwright existente conforme AGENTS e CUA para UI manual. Fluxo local/publico: selecionar cargo e RO, ler 2026/2022, alternar idioma mantendo a query. Mudar cargo reinicia estado para SP; QA precisa escolher RO novamente (comportamento existente, sem mudanca nesta entrega). Local 390/1280 PT/ES e publico 390/1280 PT/EN sem overlay/overflow/erros no console; screenshots inspecionados no navegador. Dispositivos fisicos/Safari mobile/carga nao testados. Fonte real adquirida uma vez, separada dos fixtures offline. Probes publicos/CI em [[release-status]].

## Edicao editorial de 19 outubro

PR15: check passou 87 testes Node, lint/tipos/build/HTTP; importacao offline passou 11 testes Python; suite final passou 25 testes Chromium. Expectativas existentes atualizadas para a quarta leitura e destaque do portal. Nenhuma falha final pendente; verificacao factual corrigiu a referencia a 10 outubro para data de atualizacao, conforme Nagoya. Os gates foram repetidos apos essa edicao. Nao foi adicionada suite redundante para o texto.

Inspecao manual local 390px PT: filtro Paradesporto, leitura, indice e ancora de fonte; desktop1280 ES e troca para EN preservaram artigo/retorno interno. Sem overflow ou console erro. A interrupcao do turno encerrou servidor/abas temporarios; reiniciados para concluir QA, sem falha de produto. Seletores CUA devem usar papel/nome; getByRole nao suporta level nessa ponte, embora Playwright do repositorio suporte. Provas publicas/CI em [[release-status]]. Nao realizados: telefone fisico, Safari mobile, carga distribuida, indexacao/trafego e revisao editorial humana.

## Previsao mexicana publicada, 19 outubro

PR16: Node 24.22.0/npm 11.21.1; check passou 90 unidades/lint/tipos/build/HTTP, importacao offline 11 Python e suite Chromium 27 casos. Novos casos cobrem portal por teclado, EN/PT/ES, refresh/ausencia de fixture em producao, retorno natureza/cidade, 320/1280px, SSR sem JavaScript, metadata/sitemap e rejeicao de labs/cidades nao aprovadas. CI PR/main passou ambos os jobs; [[release-status]].

UI local e publica com dados reais separada dos fixtures: mobile/desktop, selecao de dia/Enter, tabela com rolagem por teclado, refresh mantendo selecao/timestamps, idiomas e retorno. Sem overflow/console warnings/errors. Stale local apos expiry foi preservado; producao recebeu forecast atualizado ready, sem falsificar datas. Nao testados telefone fisico/mobileSafari, carga, quota distribuida ou indexacao. ops:check teve USGS stale; demais sete feeds ready, registrado separadamente do deploy. Artefatos temporarios publicos, sem contatos ou logs de visitantes.

## Conexoes
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[trap-browser-production]] - Origin do HMR e restricoes antigas nao devem alterar CSP de producao.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.
- [[2026-10-15-mobile-category-lab]] - Contexto e evidencia da revisao local.
- [[category-research]] - Contexto e evidencia da revisao local.
- [[current]] - Contexto e evidencia da revisao local.
- [[release-status]] - Estado relacionado e evidencia de verificacao.
- [[football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[2026-10-15-football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[2026-10-15-discovery-release]] - Handoff desta publicacao.
- [[sports-election-feeds]] - Fontes de esportes e resultados eleitorais.
- [[2026-10-16-sports-election-release]] - Handoff da expansao publicada.
- [[editorial-publishing]] - Protocolo editorial e recorrencia.
- [[2026-10-16-editorial-release]] - Handoff editorial.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-history-release]] - Handoff do historico publicado.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
- [[consolidation-audit]] - Auditoria atual, evidencia e limites de consolidacao.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
- [[sports-fx-depth]] - Contrato aprofundado de esportes/FX.
- [[2026-10-16-sports-fx-depth-release]] - Handoff da entrega.
- [[2026-10-19-tse-ro-release]] - Handoff da liberacao de Rondonia.
- [[2026-10-19-asian-para-editorial-release]] - Handoff da edicao editorial dos Jogos Para-Asiaticos.
- [[2026-10-19-mexico-weather-release]] - Handoff verificado.
- [[met-forecast]] - Contrato da previsao.
