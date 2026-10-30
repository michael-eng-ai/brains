---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Checks locais e CI sem confundir fixtures com dados reais."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-30"
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

## Correcao USGS, 19 outubro

PR17: check completo92 testes Node/lint/tipos/build/HTTP, Python11 e Chromium29 passaram. Dois novos cenarios de servidor falharam antes da correcao: SWR apos18min/20visitantes e latencia adiando a proxima rodada. Fixtures tambem preservam corpo realmente expirado/stale, falha/retencao, Retry-After e MET condicional/zero request sem identidade. Novos fluxos Chromium provam minuto portal/natureza, cinco minutos futebol/FX e pausa/resume em aba oculta.

Primeira suite browser28/29: seletor de texto exato nao incluia sufixo acessivel do evento. Nome semantico na regiao de terremotos corrigiu teste, sem remover conteudo para leitor de tela. Check/Python/browser completos repetidos apos ultimo ajuste de cache e passaram. Dados reais separados dos fixtures; duas observacoes locais65s apartadas e duas publicas registraram fontes mais novas. UI mobile/desktop PT/EN/ES sem overflow/console errors, filtros/refresh e navegacao conferidos. Nao testados aparelho fisico/Safari mobile/carga distribuida ou disponibilidade sustentada.

## WebKit/carga, 19 outubro

PR18 adiciona npm run test:e2e:webkit com descriptor iPhone13; Chromium continua padrao/CI. Node24.22.0/npm11.21.1, Next16.4.1, Playwright1.64.1/WebKit27.2 revision2370, macOS27.0.1/M3Pro/18GiB. Xcode ausente e list_sims falhou por simctl indisponivel; NAO e Safari iOS nativo/aparelho fisico. Plugin Browser separado ausente; Playwright do repositorio para suite, CUA para UI manual. Binario WebKit correspondente foi obtido do provedor oficial; nenhuma dependencia/lockfile mudou.

Inicial27/29: dois cenarios geraram erros de access-control ao cancelar prefetch RSC durante navegacao. Todos os destinos esperados renderizaram, mas guards de erro falharam. Historico reproduziu o erro sem interceptacao de rede do browser. Correcao: prefetch=false em header/footer, BrazilElectionAccess e HistoryAccess. Navegacao continua NextLink; reduz requisicoes especulativas, com possivel espera ao abrir destino antes aquecido. Nao mudou CSP/headers/dependencias nem ignorou erros. Contexto primario: https://github.com/microsoft/playwright/issues/42823 e https://playwright.dev/docs/browsers ; nao atribuir todo access-control a CORS nem dizer que WebKit e Safari nativo.

Final: check92 unidades/lint/tipos/build/HTTP, Python11, Chromium29 e WebKit29 passaram; mais3 controles temporarios sem interceptacao passaram. Dois erros temporarios do controlador eram formato localizado de1000 (virgula/ponto/sem separador); ajustado seletor numerico, sem alterar produto. UI manual390/1280, governadorSP, PT/EN e navegacao interna sem overflow/warn/error; captura real de WebKit /tmp/global-live-data-webkit-mobile.png inspecionada.

Carga final local: 3.164 requests em~76s, etapas1/5/15/1 clientes, think100ms, limite2000/etapa. P95 respectivamente46.56/42.59/39.52/47.94ms, pico127.47req/s na etapa15, zero erro; cold144.90ms. Dez URLs: HTML localizado, comparacao SQL, exportbr2022 e APIdata. USGS fixture1000eventos/transporte100ms, MET desativado; fetch externo bloqueado. Durante carga, apenas2 fetches simulados USGS, espacados60.297s; nenhum externo. Havia o mesmo host para cliente/servidor, um processo; NAO mede capacidade Vercel/CDN, usuarios reais, multirregiao, coldstarts em escala, banda/CPU limitada ou vazao real das APIs. Baseline anterior1591requests tambem passou. Scripts/relatorios temporarios /tmp/gld-load-final*; nao incorporar fixtures ao runtime publicado.

Producao/CI remotas: [[release-status]]. Cotacao e migracao de dominio/Google: [[launch-readiness]].

## Edicao Getafe-Rayo, 19 outubro

Node 24.22.0/npm 11.21.1: check com lint/tipos, 92 testes unitarios, build e smoke HTTP; 11 testes Python; suite final Chromium 30/30. Lint/tipos repetidos depois do ajuste do teste passaram. Primeira suite 29/30: seletor novo omitiu prefixo acessivel Keep exploring; corrigido para nome completo, sem relaxar produto, CSP ou guards. Chamadas live/depth do novo fluxo sao interceptadas com erro sintetico, sem depender de APIs no CI.

CUA manual: indice PT -> filtro Futebol -> leitura -> indice/fontes internas -> ES -> leitura relacionada; larguras 390/1280, sem overflow/overlay/warn/error e paginas legiveis. Seletor manual com exact=true nao correspondia ao texto do label que inclui options; usar label sem exact, como no teste. Browser plugin ausente; Playwright do repositorio + CUA. Safari iOS nativo e carga nao foram repetidos nesta mudanca editorial. Nao inferir indexacao, views, revisao humana ou saude das APIs desses checks.

Python urllib inicial nao encontrou CA confiavel; leitura HTTPS posterior usou /etc/ssl/cert.pem com verificacao TLS preservada. Conteudo/fuso ancorados nas fontes atuais, nao no snippet isolado. Resultados remotos desta edicao em [[release-status]].

## Correcao do refresh USD, 19 outubro local

Node 24.22.0: check com 92 testes unitarios/lint/tipos/build/smoke HTTP, Python 11, Chromium 33/33 e WebKit 33/33 passaram. Regressoes: error->ready apos prazo incluindo uma resposta SWR antiga, sem tentativa antecipada, pausa em aba oculta/retomada, valor preservado, timeout de 20s e isolamento de resposta atrasada. Teste de recuperacao falhou contra o codigo original (uma requisicao em vez de duas) e passou com correcao. Primeira suite focada 2/3: fixture de visibilidade tentava preencher conversor que nao existe sem taxa; corrigida para iniciar com dado valido. Nao enfraquecidos guards.

CUA real em 390x844/1280x900: cache local antigo mostrou erro e passou automaticamente a quatro taxas USD, consultadas 00:38 UTC; conversao de 250 USD para JPY, consulta manual, 90 dias e PT/EN/ES funcionaram. Reuso preservou checkedAt/retrievedAt. Sem blank/overlay/overflow/warn/error. Browser plugin ausente; Playwright do repositorio e CUA. Safari iOS nativo e carga nao executados nesta correcao. Nao repetir equivalencia entre WebKit e iPhone fisico. Consulta do conector Vercel 403 sem acesso ao escopo; CLI ausente, dashboard autenticado confirmou Production, sem alterar acesso. Recibos remotos em [[release-status]].

## Edicao WNBA, 19 outubro local

Node24.22.0/npm11.21.1: check com lint/tipos,92 testes unitarios,build/smoke HTTP;11 Python; Chromium final33/33 passaram. Primeiro check detectou icone ausente para novo topico; CircleDot foi adicionado ao mapa tipado. Primeira suite32/33 esperava na home um artigo que saiu do recorte das duas leituras mais recentes; locator atualizado para WNBA, mantendo assercoes de navegacao/overflow/console. Suite completa repetida passou; nenhum gate relaxado.

CUA local390x844/1280x900: filtro Basquete, leituraPT/EN/ES, indice/fontes, idioma e retorno interno, sem overflow/warn/error. Publico mobile390: leitura, PT->EN e retorno ao indice confirmados sem overflow/warn/error. Nove paginas HTTP, Article JSON-LD/quatro fontes, canonical/hreflang/disclosure e sitemap75 passaram. WebKit, Safari iOS nativo e carga nao repetidos para este artigo. ServidorQA proprio e abas temporarias encerrados; viewport restaurado. Sem fixtures publicadas ou dependencias novas. Recibos e ops pontual em [[release-status]].

## Edicao Espanha, 20 outubro 2026

Node 24.22.0: check passou com lint/types, 92 testes unitarios, build e HTTP smoke; Python ingestion 11/11. Primeiro Chromium 32/33: timeout no beforeEach de depth.spec.ts:86, antes de assercao de produto. Causa nao estabelecida. Suite completa repetida sem alterar codigo, assercoes ou timeouts: 33/33 em 26,3s. Logs temporarios: /tmp/gld-clock-checks.log e /tmp/gld-clock-e2e-rerun.log; podem expirar.

CUA local 390x844/1280x900: leitura EN/PT/ES, filtro Fusos horarios, indice/fontes, idioma e retorno interno, sem overflow ou warn/error. Publico 390px: leitura PT, idioma ES e retorno/filtro mostraram uma leitura, sem overflow ou warn/error. Nove paginas anonimas passaram com deployment correto, CSP, Article JSON-LD/tres fontes, canonical/hreflang/disclosure; sitemap 78 URLs. Um ops:check em 07:59:48Z retornou oito feeds representativos ready; amostra pontual, nao garantia continua. WebKit, Safari iOS nativo e carga nao repetidos. Servidor e abas proprias encerrados; viewport restaurado. CI/recibos e verificacao direta Ready pendente em [[release-status]].

## Edicao India-Zimbabue feminino, 20 outubro 2026

Node24.22.0/npm11.21.1: check com lint/tipos,92 unitarios,build/smoke HTTP;11 Python;33 Chromium passaram na primeira execucao completa, sem falhas de teste. Contagem de catalogo atualizada para8 e locator da home para artigo Espanha ainda presente no recorte latest-two. Nenhuma assercao/timeout/error-check enfraquecida. Log temporario /tmp/gld-cricket-checks.log.

CUA local390x844/1280x900: filtro Criquete, leituraPT/EN/ES, indice/fontes, idioma e retorno interno, sem overflow ou warn/error. Publico390px: leituraPT, idiomaEN e retorno ao indice confirmados sem overflow/warn/error. Nove paginas anonimas, JSON-LD/quatro fontes, canonical/hreflang/disclosure e sitemap81 passaram. WebKit/Safari iOS nativo/carga nao repetidos para esta mudanca editorial. Servidor QA e abas proprias encerrados, viewport restaurado. Um ops:check com oito feeds prontos e ambos CI PR/main em [[release-status]].

A pendencia direta Ready da PR22 foi resolvida nesta rodada pelo dashboard Chrome autenticado; o novo deployment PR23 tambem foi inspecionado nesse canal, sem copiar credenciais ou alterar acesso.

## Brasileirao e NBA preparada - 20 outubro

Node 24.22.0: check com 101 testes unitarios, lint, tipos, build e HTTP smoke; Python 11; Chromium 35; WebKit 35. Todos passaram apos o ajuste final de sincronizacao do clube na URL. O primeiro browser falhou em uma assercao antiga de zero links externos; ela foi corrigida para verificar exatamente o credito SportScore exigido pela licenca. Todas as jornadas interceptam /api/americas para manter CI sem consultas externas.

QA real local e publica em 390/1280 px confirmou tabela com 20 clubes, filtro de resultados, idioma preservando clube e aviso de indisponibilidade do Gremio, sem overflow ou erros de console. CUA representou botoes aria-pressed como checkbox na arvore nativa; no locator Playwright usar role=button. WebKit emula iPhone 13; nao e teste em aparelho iOS. Nesta entrega nao houve teste de carga, Safari nativo ou probe autenticado NBA. Uma verificacao HTTP em Python falhou por CA local; repetida com Node e TLS validado, passou. Evidencias remotas em [[release-status]].

## Edicao League Pass, 20 outubro 2026

Node 24.22.0/npm 11.21.1: check com lint/tipos, 101 unitarios,history/Next build e smoke HTTP ; 11 Python; 35 Chromium passaram na primeira execucao completa. Contagem de catalogo mudou de 8 para 9 e locator da home segue o novo artigo no recorte latest-two. Nenhuma assercao enfraquecida. Log temporario /tmp/gld-editorial-nba-validation.log.

CUA local 390x844/1280x900: leitura PT/EN/ES, filtro Basquete, indice/fontes, idioma e retorno interno, sem overflow ou warn/error. Publico 390px: leitura PT, idioma EN, retorno ao indice e filtro Basketball com duas leituras, sem overflow/warn/error. Uma tentativa de inspecao usou capability viewport no tab e outra usou opcao level nao suportada no locator CUA; corrigidas usando capability do browser e heading por nome, sem alterar o produto. Nove paginas anonimas, deployment correto, CSP, JSON-LD/tres fontes, canonical/hreflang/disclosure e inclusao no sitemap passaram. WebKit, Safari iOS nativo e carga nao repetidos nesta mudanca editorial. Servidor QA e abas proprias encerrados; viewport restaurado. Capturas temporarias /tmp/gld-league-pass-published-mobile.png e /tmp/gld-league-pass-desktop.png. CI e amostra ops em [[release-status]].

## Edicao Orionids, 21 outubro 2026

Node 24.22.0/npm 11.21.1: check com lint/tipos, 101 unitarios, history/Next build e smoke HTTP; 11 Python; 35 Chromium aprovados. Apos ajuste final de clareza em tres frases, check e Chromium completos repetidos com sucesso. Nenhum teste falhou; catalogo ajustado de nove para dez. Logs temporarios /tmp/gld-orionids-validation.log e /tmp/gld-orionids-final-validation.log.

CUA local 390x844/1280x900: leitura PT/EN/ES, idiomas, filtro Ceu noturno com um resultado, indice/fontes, CTA Natureza e retorno, sem overflow ou warn/error. Um locator CUA por label exato e selecao por texto nao localizaram o controle; selecao pelo valor sky e leitura do DOM confirmaram o comportamento sem alterar o produto. AX nativo ficou atrasado em relacao ao filtro; o DOM confirmou um resultado. Capturas temporarias /tmp/gld-orionids-local-mobile.png e /tmp/gld-orionids-local-desktop.png. QA publico e nove paginas anonimas verificadas conforme [[release-status]]. WebKit, iOS Safari nativo e carga nao repetidos para esta mudanca editorial. Servidor local/abas proprias encerrados e viewport restaurado.

## Edicao CPI britanico, 21 outubro 2026

Node 24.22.0/npm 11.21.1: 11 testes Python; check com lint/tipos, 101 unitarios, history/Next build e smoke HTTP; 35 Chromium aprovados na primeira execucao completa. Catalogo 10 para 11 e locator da home ajustado ao artigo atual do latest-two, sem enfraquecer assertions. Log /tmp/gld-uk-cpi-validation.log. Aritmetica Decimal: 240 vezes 1.05 = 252; 252 vezes 1.02 = 257.04; (5 menos 4)/4 = 0.25.

CUA local 390x844/1280x900 confirmou leitura PT/EN/ES, idiomas, Economy com um resultado, indice/fontes, CTA FX e retorno ao indice, sem overflow ou warn/error. Uma tentativa rapida de voltar/trocar idioma permaneceu na pagina de cambio; a retomada pela URL observada restaurou o guia antes de testar idiomas. Nao foi identificado defeito de produto. Capturas /tmp/gld-uk-cpi-local-mobile.png e /tmp/gld-uk-cpi-local-desktop.png. QA publico mobile e nove paginas anonimas conforme [[release-status]]. WebKit, iOS Safari nativo e carga nao repetidos para esta edicao. Servidor QA/abas proprias encerrados e viewport restaurado.

## Edicao Wawrinka, 21 outubro 2026

Node24.22.0/npm11.21.1: 11 Python, check com lint/tipos/101 unitarios/history e Next build/smoke HTTP, 35 Chromium aprovados. Log /tmp/gld-wawrinka-validation.log. Expectativa do catalogo mudou de11 para12; nenhuma assercao enfraquecida. Dias26/27 confirmados segunda/terca por datetime.

Browser plugin ausente; Playwright do repositorio e CUA usados. QA local390x844/1280x900: leitura PT/EN/ES, Tennis com um resultado, sumario/fonteFAQ, idioma preservando slug e CTA retornando ao indice. Sem overflow/console warn/error. Locator CUA por label nao encontrou controle; combobox semantico observado funcionou sem alteracao do produto. Capturas /tmp/gld-wawrinka-local-mobile.png e /tmp/gld-wawrinka-local-desktop.png. WebKit, Safari iOS nativo e carga nao repetidos. QA publico/recibos em [[release-status]]. Servidor e abas proprias encerrados; viewport restaurado.

## Edicao Champions League, 21 outubro 2026

Node24.22.0/npm11.21.1: check com101 unitarios/lint/tipos/history e Next build/smoke HTTP,11 Python e35 Chromium aprovados. Logs /tmp/gld-ucl-final.log e /tmp/gld-ucl-python.log. Primeira suite34/35: locator CPI saiu dos dois artigos recentes. Agora teste verifica articles[0].id preservando prova de navegacao com provider atrasado. Import ausente no ajuste foi capturado pelo build intermediario e corrigido antes da suite completa. Formatter npx aninhado falhou; executado binario instalado, sem novas dependencias.

Browser plugin ausente; Playwright do repositorio usado. QA390x844/1280x900 emPT/EN/ES: identidade, leitura, duas opcoes Futebol, entrada via teclado, idioma mantendo slug, sumario/fontes, CTA Futebol e retorno indice. Sem overflow, overlay ou console warn/error. Script temporario inicialmente esperava barra antes do hash; assercao corrigida, produto intacto e percurso final aprovado. Capturas /tmp/gld-ucl-local-mobile.png e desktop.png; recibo /tmp/gld-ucl-local-qa.json. WebKit, iOS Safari nativo e carga nao repetidos. QA publico e limite Ready em [[release-status]].

## Reincidencia do teste FX na PR42

CI da PR42, run 40200350272, tentativa 1: agregado passou, Chromium34/35; falha fx-refresh.spec.ts:51, conversao sintetica 512.00 ausente. Trace tem apenas duas respostas mock e clockRunFor(59999) comeca 0.742 ms apos o segundo fulfill. Padrao semelhante ao PR38; suspeita de sincronizacao entre resposta e relogio simulado, nao causa estabelecida nem incidente real do provedor. Um unico rerun do job no mesmo SHA passou sem mudar codigo/assertions. Artefatos e analise em /tmp/gld-usgp-pr42-artifacts e /tmp/gld-usgp-ci-triage.json. Uma investigacao focada futura deve sincronizar a aplicacao da resposta antes de avancar o relogio, preservando as verificacoes de prazo, recuperacao e numero de chamadas; nao esconder a falha com retries ilimitados. Recibos em [[release-status]].

## WebKit e carga, 30 outubro

Pedido direto do proprietario apos PR63. Codigo funcional 58e83db27dd8b1535467bd3b9fb8d034a38227a2: 36/36 WebKit iPhone-profile passaram na primeira execucao, Node 24.22.1, Playwright 1.64.1/WebKit 27.2 revision 2370, macOS 27.0.1/Mac15,6/18 GiB. Plugin Browser ausente; suite do repositorio e controlador temporario usando biblioteca instalada. CLI isolado esperou revision 2368 ausente e nao iniciou; nao instalar outra dependencia nem forcar binario divergente. Biblioteca do repositorio usou revision 2370 compativel.

Publico EN/PT/ES em 390 CSS px: artigo, idiomas, sumario/fontes, filtro Rugby league, retorno e vista inicial da comparacao Brasil passaram; tres screenshots inspecionados, zero overflow/overlay/erros/avisos. Nao e Safari nativo: simctl indisponivel. iPhone fisico, teclado/browser chrome nativos, banda/CPU limitadas continuam pendentes.

Carga local isolada final 15:38:29Z: 4.805 requests em etapas 1/5/15/30/1, mais 30 concorrentes frios e 1 checagem de recuperacao =4.836 HTTP. Pausa 100 ms, teto 2.000/etapa, 64.2 s. P95 por etapa 41.89/42.53/62.75/132.20/46.38 ms; pico 169.15 req/s; P95 frio 175.01 ms. Zero falha final. Trinta cold callers compartilharam 1 operacao upstream; duas no total, 60.877 s apartadas. Somente USGS sintetico com 1.000 eventos/transporte 100 ms; MET/config privada vazios, fetch externo bloqueado, zero chamada externa.

Harness inicial exigia ready universalmente e falhou em uma resposta stale. Date HTTP tem precisao de segundos; validade 60 s pode terminar antes do retry minimo 60 s contado do inicio da operacao. Inspecao de ProviderCache/responseTiming confirmou comportamento intencional. Harness final validou expiry/status, fonte preservada, transicao menor que 1 s e recuperacao com fonte nova: uma resposta stale 394 ms apos expirar, depois ready. Nenhum guard de produto, fonte, timeout ou cache foi alterado. Sem defeito funcional; PR64 somente consolida docs/OPERATIONS.md e HANDOFF.md.

Gerador e servidor no mesmo host, um processo: nao prova capacidade Vercel/CDN, usuarios simultaneos reais, multirregiao ou vazao das APIs. Sete JSON historicos bytes/mtime preservados. Isolamento/fixtures nao foram ao Git/deploy. Scripts/metricas/capturas /tmp/gld-mobile-20261030-*; servidor 3102 e browsers encerrados. Recibos em [[release-status]].

## Safari nativo e sincronizacao FX, 30 outubro

Xcode 27.2 (27B52) e iOS 27.2 arm64 (24B8117) instalados da Apple, apos autorizacoes explicitas do contrato e da limpeza somente dos caches de download npm/pip/uv/Homebrew. Dispositivo dedicado Global Live Data - iPhone 13, 390x844 e paisagem, Safari nativo via DeviceHub. Nao e telefone fisico. O runtime adicional 24B91016s falhou no Streaming Extractor; o 24B8117 funcional dispensa retry. Disco chegou a 296 MiB livres e recuperou cerca de 2.4 GiB; verificar antes de instalar mais. Nao apagar outros arquivos por inferencia.

Defeito reproduzido em 3e0025d: input de 13 px no seletor de cidade dispara zoom de foco e corta a borda esquerda, persistindo apos fechar teclado. Correcao em app/globals.css: input/select de 16 px em tela estreita/ponteiro coarse; filtros empilhados abaixo de 360 px, pinch zoom preservado. Regressao existente verifica foco, tres fontes >=16 px, bounds 320/390/844, pesquisa Sao e Escape. Safari nativo confirmou teclado/pesquisa/selecao sem recorte local e publicado em 8200227; rechecagem do teclado/pesquisa sem recorte tambem em a5ce629. Captura final /tmp/gld-ios-native-20261030-picker-final.jpg.

Fluxos nativos amostrados: portal/Brasileirao/Flamengo; FX com teclado numerico, 250 USD, 30/90 dias e tabela; DEL rodada 1 e time interno; Mexico ES, dia 5 novembro, periodos de 6 h, scroll horizontal e rotacao; comparacao governador/RN/turno 2 com 2022 ausente; filtro Rugby league, artigo EN/PT/ES e ancora de fontes. Sao evidencias de UI, nao reconciliacao de fonte nem cobertura exaustiva.

Node 24.22.1: check com 101 unidades/lint/tipos/build/HTTP e 11 Python passaram; 36 Chromium e 36 WebKit passaram apos CSS final. CI da PR65 passou; main encontrou corrida preexistente no teste FX: contador da rota avancava antes de a resposta ser consumida. Trace registra clockRunFor 59999 antes do fim da segunda resposta, acionando timeout artificial de 20 s. Follow-up altera somente fixture/assert: checkedAt distinto e espera do texto renderizado antes de avancar; prazos/contagens/recuperacao preservados. Dez repeticoes em cada engine (20/20), check 101 e suite integral 72/72 passaram. Primeiro locator assumiu en-US, depois pontuacao Chromium; ajustado a en-GB e comma/at dos dois engines, com mesma data/hora exata. Nenhum retry/timeout do produto alterado.

Local 320/1280 visualmente inspecionado, sem overflow/erro de console. Publico EN/PT/ES preservou Sao Paulo ao trocar idioma; erro de extensao Chrome identificado fora do site, nenhum erro da aplicacao observado. Console Safari nativo, telefone fisico, banda/CPU restritos e capacidade distribuida nao medidos. Carga de 4.836 HTTP da PR64 mantida como evidencia separada, nao repetida para CSS. Logs/capturas temporarios /tmp/gld-ios-native-20261030-*; CI/Ready em [[release-status]].

Continuacao tecnica: Xcode 27 usa /Applications/Xcode.app/Contents/Applications/DeviceHub.app; Simulator.app antigo ausente. AX nativo mostra barras/teclado, nao DOM web; confirmar screenshot apos transicao antes de clicar. Para Node 24 usar binario verificado, nao confiar no symlink Homebrew node@24 (reportou 25.8.0). Python HTTPS requer bundle /etc/ssl/cert.pem neste ambiente, mantendo verificacao TLS.

## Guia Mexico GP, 30 outubro 20:12 UTC

Node24.22.1/Python3.12.4: check completo com101 unitarios, lint/types, history build, Next build e HTTPsmoke; Python11 e Chromium36 passaram. Dezesseis conversoes conferidas independentemente com zoneinfo/Intl. Seis fluxos locais EN/PT/ES em390/1280px passaram filtro Motorsport2, teclado, idiomas, sumario/fontes, metadata, CTA para previsao e retorno; espanhol legivel sem JavaScript. Capturas locais/publicas inspecionadas, sem overflow/overlay/erros/avisos finais ou fetch Trends. Browser skill indisponivel; Playwright do repo para QA, CUA para painel autenticado.

Harness temporario inicial usou label exato do select e presumiu heading traduzido; labels reais/curadoria corrigiram apenas asserts, sem patch no produto. Screenshot inicial apos click capturou antes do smooth-scroll; captura refeita com scrollIntoViewIfNeeded/toBeInViewport. Scripts temporarios nao entram no repo. WebKit, Safari iOS nativo e carga nao repetidos para esta edicao; resultados anteriores nao sao novas execucoes.

Publico20:25:10.740Z: PT390/EN1280/ES390, HTTP200,16 conversoes, quatro fontes, AI disclosure, canonical/hreflang/ArticleJSONLD, filtro/teclado/locale/ancora e sitemap passaram. CTA publico validado por href; abertura local com MET desativado nao comprova tempo real mexicano. Capturas publicas PTtopo/ENleitura inspecionadas. Extracao de marcador em query de scripts retornou vazio; verificacao do HTML bruto em20:26:19.075Z confirmou marcador exato/CSP nos tres idiomas. Recibos em [[release-status]]. Servidor proprio3102 encerrado; piloto3147 preservado. Temporarios /tmp/gld-mexico-*.

## Conexoes
- [[2026-10-30-mexico-gp-editorial-release]] - Guia Mexico GP e recibos desta rodada.
- [[2026-10-30-native-safari-fix]] - Safari nativo, correcao e recibos finais.
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
- [[2026-10-19-usgs-refresh-release]] - Handoff verificado.
- [[provider-cache]] - Politica testada.
- [[2026-10-19-mobile-load-launch]] - Handoff mobile/carga.
- [[2026-10-19-mobile-load-and-domain-research]] - Escopo autorizado.
- [[launch-readiness]] - Limites antes da promocao.
- [[2026-10-19-getafe-editorial-release]] - Verificacao editorial.
- [[2026-10-19-usd-fx-refresh-release]] - QA do refresh USD.
- [[2026-10-19-wnba-editorial-release]] - QA da sexta leitura.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
- [[2026-10-20-cricket-editorial-release]] - Handoff da oitava leitura e verificacao completa.

- [[brasileirao-nba-feeds]] - Contratos testados.

- [[2026-10-20-brasileirao-release]] - Handoff.
- [[2026-10-20-league-pass-editorial-release]] - Handoff da nona leitura e limite de verificacao.
- [[2026-10-21-orionids-editorial-release]] - Handoff da decima leitura e verificacao.
- [[2026-10-21-uk-cpi-editorial-release]] - Handoff da decima primeira leitura e recibos.
- [[2026-10-21-wawrinka-editorial-release]] - Handoff da decima segunda leitura.
- [[2026-10-21-champions-editorial-release]] - Handoff da decima terceira leitura.
- [[2026-10-25-us-gp-grid-editorial-release]] - Reincidencia FX na PR42.
- [[2026-10-30-mobile-load-validation]] - Rechecagem WebKit/carga e limites concretos.
