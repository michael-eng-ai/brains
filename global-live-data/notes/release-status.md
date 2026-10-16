---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Evidencias de merge, CI e publicacao Vercel."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-16"
---

# Estado da entrega

## Historico: hoquei, xadrez e resultados eleitorais

PR #6 integrada em 2026-10-16T13:32:09Z: https://github.com/michael-eng-ai/global-live-data/pull/6. Main local/remota 8b40a43719265fb4fea763c19ebde97640e59b0b; arvore limpa e identica ao head validado 503c54e22d91f2a616190bcc720e621fcb6ceb1d. CI PR 38908358359 e main 38908594194 passaram ambos os jobs. Main CI: https://github.com/michael-eng-ai/global-live-data/actions/runs/38908594194.

Vercel Production Ready observado no commit exato, build 32s, deployment dpl_Boy7rTWbc3SdpqqqN3w3GJqJH1VF. Dashboard: https://vercel.com/michael-eng-ais-projects/global-live-data/Boy7rTWbc3SdpqqqN3w3GJqJH1VF. URL unica: https://global-live-data-gy3obhw80-michael-eng-ais-projects.vercel.app. Alias https://global-live-data.vercel.app/pt conferido por data-dpl-id. Nenhuma mudanca de conta, plano, permissao ou variavel.

Probe anonimo concluido em 2026-10-16T13:34 UTC: 33 paginas EN/PT/ES, CSP, licenca parlamentar na metodologia, inputs invalidos 400, lab 404 e no-store passaram. Sete conjuntos novos ready: DEL 21 jogos, CHL 40, xadrez 77 rodadas; quatro distritos eleitorais com 15/7/7/6 grupos de partidos e datas 2026-10-08 ou 2024-07-04. Repeticao de DEL preservou checkedAt. Contagens sao snapshots, nao garantias nem certificacao independente dos resultados.

QA hospedado: cartao eleitoral ativado por teclado; selecao de outro distrito exibiu corretamente uma data de 2024. Filtro de xadrez em andamento retornou sete rodadas; CHL encerrados retornou 24 jogos, com expansao de 12 para 24. Viewport real 390px sem overflow ou erro de aplicacao. Capturas fora do Git: /tmp/global-live-data-review/elections-published-desktop.png e hockey-published-mobile.png. Desktop 1280 e mobile 320/390 tambem revisados localmente. Sem teste de aparelho fisico/Safari/carga, nem auditoria de logs runtime/custo/distribuicao de requests. Pesquisa/limites em [[sports-election-feeds]].

## Historico: Trends e TV

PR #5 integrada em 2026-10-16T01:16:04Z (15 de outubro local): https://github.com/michael-eng-ai/global-live-data/pull/5. Main remoto/local 95613fb35377257816d57f0670e341a492acac70; arvore identica ao head revisado 1c1e13448dff4d2df1827c3c1a8689b9825969fb. CI PR 38833787757 e main 38834190160 passaram ambos os jobs. Main CI: https://github.com/michael-eng-ai/global-live-data/actions/runs/38834190160.

Vercel Production Ready observado para main 95613fb, build 29s, deployment dpl_3u9wM5DPsQAYqYpAECs18bv555gr. Dashboard: https://vercel.com/michael-eng-ais-projects/global-live-data/3u9wM5DPsQAYqYpAECs18bv555gr. URL unica: https://global-live-data-2jemv0ytn-michael-eng-ais-projects.vercel.app. Alias https://global-live-data.vercel.app/pt retornou HTTP 200 com data-dpl-id correspondente. Nenhuma mudanca de conta, permissao, plano ou variavel.

Probe HTTP anonimo completo em 2026-10-16T01:17:21Z: 24 paginas EN/PT/ES, cabecalhos e limites de entrada passaram; Trends ready nos seis paises com dez entradas cada. TV ready nas seis combinacoes; hoje/amanha GLOBAL 63/18, US 116/40, GB 28/13, datas 2026-10-16/17. Consulta repetida Trends preservou checkedAt. Contagens sao snapshots, nao garantias. Futebol/FX e natureza tambem renderizaram na home; USGS sinalizado stale, sem ocultar idade.

QA hospedado: portal -> TV, Apple TV reduziu 63 para dois episodios; detalhes mostraram temporada/episodio/duracao; troca para amanha limpou o filtro e retornou 18 episodios. Navegacao TV -> Trends e troca Brasil -> Japao retornaram dez entradas com texto original. Mobile 390px sem overflow ou erro de aplicacao. Capturas temporarias discovery-published-portal.jpg e discovery-published-tv-mobile.jpg em /tmp/global-live-data-review, fora do Git. Safari, dispositivos fisicos, carga e medicao distribuida nao executados. Escopo e provedores: [[trends-tv-discovery]].

## Historico: portal com futebol e cambio

PR #4 integrada com autorizacao em 2026-10-15T23:50:13Z: https://github.com/michael-eng-ai/global-live-data/pull/4. Main remoto e local: 84aab6e02c244818e76e0f3622af354855a37c0d, arvore limpa. A arvore corresponde exatamente ao head revisado b51dda988d2118171f592d8f04ae4a643ff2c70c. CI da PR 38825723767 e CI main 38825941909 passaram ambos os jobs. CI main: https://github.com/michael-eng-ai/global-live-data/actions/runs/38825941909.

Vercel Production Ready observado no deployment dpl_EKrcT2YiZy8qJEKpgzMVUg8L8TM1, fonte main 84aab6e02c244818e76e0f3622af354855a37c0d, duracao exibida 32s, projeto global-live-data/time existente michael-eng-ais-projects. Dashboard: https://vercel.com/michael-eng-ais-projects/global-live-data/EKrcT2YiZy8qJEKpgzMVUg8L8TM1. URL unica: https://global-live-data-mbspqojmp-michael-eng-ais-projects.vercel.app. Publico: https://global-live-data.vercel.app/pt. Nenhuma mudanca de conta, permissao, custo contratado ou variavel.

HTTP anonimo em 2026-10-15T23:51:45Z: 18 paginas EN/PT/ES passaram; data-dpl-id do alias corresponde ao deployment acima; CSP, no-store, entradas invalidas e 404 do lab passaram. Futebol ready: 27 partidas Bundesliga e 54 Champions League. Cinco bases FX ready, quatro taxas por base, referencias 2026-10-15. Repeticao e troca de base mantiveram o timestamp do futebol; USD manteve timestamp FX. Valores privados ausentes do JSON. Natureza: USGS ready com 191 registros e MET stale com 90 pontos, sinalizado como dado anterior. Sao snapshots observados, sem garantia continua.

QA hospedado no navegador do aplicativo: portal -> futebol -> Champions League/encerrados -> portal -> cambio; EUR 250 para USD 279.93; troca PT/ES preservou pagina de cambio. Nenhum link externo no conteudo das paginas novas; metodologia interna conserva creditos. Desktop e mobile 390px sem overflow/overlay/erros de aplicacao. 320px local tambem aprovado. Nao foram feitos teste fisico/Safari/carga ou medicao global de requests. Detalhes do cache em [[football-fx-pilot]].

## Historico da publicacao inicial

Repositorio: https://github.com/michael-eng-ai/global-live-data

PRs #1/#2 integradas previamente (fff8ff8 e 897f3f3). PR #3: https://github.com/michael-eng-ai/global-live-data/pull/3, merge autorizado em 2026-10-15T21:38:45Z, SHA 1bb5c669bcb612784c5960b85d28e4eb38c1dfa7. CI do merge: https://github.com/michael-eng-ai/global-live-data/actions/runs/38811443939, ambos os jobs success.

Na entrega inicial, a aplicacao permanecia no ancestral funcional 97df008347f97873d7574b070c827cb4fbe45ec6. Recibo documental enviado a main como b6bbd5fb756cb44e896b53d6fc45f4c755a98b91; CI/deploy final registrados na sessao.

CI 38812450760 passou ambos os jobs no SHA b6bbd5fb756cb44e896b53d6fc45f4c755a98b91; Vercel Production Ready no deployment dpl_3wnNHy7oBrGJEUMpEtRZgRr6nnef, confirmado no dashboard. URL unica: https://global-live-data-h38593lfs-michael-eng-ais-projects.vercel.app; alias publico continua https://global-live-data.vercel.app. CI: https://github.com/michael-eng-ai/global-live-data/actions/runs/38812450760. Deployment: https://vercel.com/michael-eng-ais-projects/global-live-data/3wnNHy7oBrGJEUMpEtRZgRr6nnef.

Initial Production Ready: dpl_EVu8s2C7pPQ6GqMM1KARj7ipuWGR no SHA 1bb5c66. Dashboard https://vercel.com/michael-eng-ais-projects/global-live-data/EVu8s2C7pPQ6GqMM1KARj7ipuWGR. URL publica observada: https://global-live-data.vercel.app. URL unica inicial: https://global-live-data-ifut6nrel-michael-eng-ais-projects.vercel.app.

Time Pro existente michael-eng-ais-projects, projeto global-live-data, main, raiz ./, Next.js, Node 24 configurado, npm ci --ignore-scripts e npm run build. Variaveis MET_USER_AGENT (sensivel) e GLD_PUBLIC_CONTACT_EMAIL submetidas em Production/Preview. Forecast real e contato localizado hospedados confirmados; valores omitidos.

HTTP anonimo em 21:44:32Z: nove paginas EN/PT/ES, redirect, locale/cidade invalidos, parametros extra/duplicados, CSP, nosniff e no-store passaram. Identificador MET ausente do HTML; ambos os valores ausentes do JSON API. Contato publico aparece somente onde intencional.

Tres snapshots Lisbon: USGS stale, 188 eventos, source/retrieval 21:40:46Z e expiry 21:41:46Z; MET ready, 90 pontos, source 19:17:55Z, retrieval 21:41:05Z e expiry 22:12:15Z (todos em 2026-10-15). Retrieval do clima permaneceu igual e precipitacao de maior periodo separada. Nao prova controle distribuido.

Browser EN/PT/ES: magnitude 4.5+ reduziu 188 para 13; busca Sao Paulo e idioma preservaram cidade; clima real e aviso stale renderizados. Sem erro de aplicacao observado. Override mobile nao funcionou, viewport continuou 1920px; nao declarar visual mobile hospedado aprovado. CI/local cobriram 390x844 com fixtures.

Vercel overview mostrou Ready e 0% function error rate no momento inspecionado. Auditoria detalhada de runtime logs, teste de carga/falha e metrica de requests upstream nao realizados. Conector continua sem equipes; browser autenticado resolveu a operacao sem ampliar permissoes. Main agora publica automaticamente.

Verificacao final anonima em 2026-10-15T21:49:11Z: pagina PT HTTP 200 com data-dpl-id dpl_3wnNHy7oBrGJEUMpEtRZgRr6nnef; API 200, MET ready/90 pontos, USGS stale/190 eventos. Source/retrieval USGS avancou para 21:46:46Z; retrieval MET permaneceu 21:41:05Z. Confirma alias atualizado e dados evoluindo, nao disponibilidade continua.

## Verificacao mobile posterior

Em 2026-10-15, a emulacao hospedada foi aplicada e as larguras reais 320/390/430px foram confirmadas. Fluxos e resultados em [[validation-workflow]]. Isto supera somente a limitacao mobile acima; a sessao de lancamento permanece evidencia historica. Naquela etapa, o experimento de categorias permaneceu local. A entrega atual acima supera esse estado.

## Historico: entrega editorial

PR #7 https://github.com/michael-eng-ai/global-live-data/pull/7 integrada em 2026-10-16T14:04:44Z. Head 9a2ad62f6e09f900f10565eb4a5e22b5198b4cb6; main dba29fdd2ff944c5934116b6c6dd42cc898e5fc8; arvores identicas e limpas. CI PR https://github.com/michael-eng-ai/global-live-data/actions/runs/38912597274 e main https://github.com/michael-eng-ai/global-live-data/actions/runs/38912871587 passaram ambos os jobs.

Production Ready dpl_ERkThavNiqMiouSRrAQ4Ux2zS36X, commit main exato. Dashboard https://vercel.com/michael-eng-ais-projects/global-live-data/ERkThavNiqMiouSRrAQ4Ux2zS36X; URL unica https://global-live-data-q7ydhlfzx-michael-eng-ais-projects.vercel.app. Alias https://global-live-data.vercel.app/pt/trending respondeu com a revisao do deploy. Conferidas 39 rotas EN/PT/ES, sitemap/robots, metadata/artigos e 404 desconhecido. QA publicado desktop/mobile sem erro de aplicacao; imagens fora do Git: /tmp/global-live-data-editorial/editorial-published-desktop.png e editorial-published-mobile.png.

Heartbeat editorial ACTIVE confirmado em app/arquivo; nenhuma execucao futura ainda confirmada. Sem novos servicos pagos ou chaves. Ver [[editorial-publishing]].

## Entrega atual: edicoes historicas

PR #8 https://github.com/michael-eng-ai/global-live-data/pull/8 integrada em 2026-10-16T14:38:08Z. Main 56d255d6880ce1b727a3586cd06eac57fdbe2332; head f5b1aac1e81eaf8d04d1ef15e8102c46b0592d7d com arvore identica. CI PR https://github.com/michael-eng-ai/global-live-data/actions/runs/38917077081 e main https://github.com/michael-eng-ai/global-live-data/actions/runs/38917361071 passaram ambos os jobs.

Vercel Production Ready observado no SHA exato, 29s, dpl_DtJKczY9hNpyJDH2Vxwn1MNmffiQ. Dashboard https://vercel.com/michael-eng-ais-projects/global-live-data/DtJKczY9hNpyJDH2Vxwn1MNmffiQ; URL unica https://global-live-data-1is85za1y-michael-eng-ais-projects.vercel.app. A previa Ready tambem leu SQLite no runtime antes do merge.

Probe anonimo em 2026-10-16T14:39:48.820Z conferiu 54 paginas localizadas com deployment id, seis cargos, cinco exports integralmente iguais aos fatos/hashes locais, limites de entrada, sitemap e lab 404. Publico https://global-live-data.vercel.app/pt/history/br-2022.

IAB publicado 1280/390: troca para ZZ/segundo turno exibiu 298.169 votos validos; largura 390 sem overflow e logs de aplicacao vazios. Capturas /tmp/global-live-data-history/history-published-desktop.png e history-published-mobile.png fora do Git. Sem auditoria completa de runtime logs, carga, Safari ou dispositivos fisicos. Limites e fonte persistente em [[historical-editions]].

## Comparacao Brasil 2026/2022 (16/10/2026)

PR #9 https://github.com/michael-eng-ai/global-live-data/pull/9 integrada em 2026-10-16T15:31:30Z. Head revisada 8c5a3c8b9003afe0ae278df6db04f7643e5fdee7; merge/main dcac132e4bdb495322797aa7fc6c964f504244f0, mesma arvore. Main local/remota limpa e 0/0 apos merge.

- CI PR: https://github.com/michael-eng-ai/global-live-data/actions/runs/38924209050, ambos os jobs success na head exata.
- CI main: https://github.com/michael-eng-ai/global-live-data/actions/runs/38924646108, ambos success no merge exato.
- Vercel Preview Ready: dpl_2Ur4DBb2sCL1RtjHNpDp1hknVQ9v, head 8c5a3c8, 30s. URL global-live-data-ir0afnk0x-michael-eng-ais-projects.vercel.app; leitura real do SQLite/DF verificada antes do merge.
- Vercel Production Ready: dpl_EPXUDSjnt8N6BPuG8b7MZWwrKKzu, main dcac132, 30s, observado no dashboard autenticado. URL unica https://global-live-data-9xmhdv171-michael-eng-ais-projects.vercel.app; dashboard https://vercel.com/michael-eng-ais-projects/global-live-data/EPXUDSjnt8N6BPuG8b7MZWwrKKzu.
- Publico: https://global-live-data.vercel.app/pt/elections/brazil. Probe anonimo 2026-10-16T15:32:13.373Z: 60 paginas EN/PT/ES com deployment ID correto, seis exports completos iguais ao JSON canonico, todos os seis cargos, duas quarentenas RO, ZZ/turno2 sem valores 2026, oito limites/404 do lab e sitemap passaram.
- QA IAB publicado: desktop 1280 e mobile 390, selecao federal/RO mostrou aviso e preservou 2022; scrollWidth 375 <= innerWidth 390, console sem erros. Capturas /tmp/global-live-data-2026/published-comparison-desktop.png e published-comparison-mobile.png, fora do Git. Override restaurado e comparacao PT deixada aberta.

Nao executados: auditoria completa de logs runtime, carga, Safari/aparelhos fisicos e refresh automatico. Estado/licencas/limites da captura em [[brazil-election-comparison]], protocolo de testes em [[validation-workflow]].

## Atualizacao TSE automatizada (16/10/2026)

PR #10 https://github.com/michael-eng-ai/global-live-data/pull/10 integrada em 2026-10-16T19:08:25Z. Head revisada 6adc096f5bb7c8481a78a2e6ef74453dcf3b5961; merge/main 2935a247684a3a9d9bc0bf716a0968b035502c69, mesma arvore. Main local/remota limpa e 0/0 apos merge.

- CI PR https://github.com/michael-eng-ai/global-live-data/actions/runs/38952180378 e CI main https://github.com/michael-eng-ai/global-live-data/actions/runs/38952692539: ambos os jobs success em cada revisao exata.
- Preview Ready: dpl_AhXirCYdZSVSQSPLx6i3o24eoArp, head 6adc096, 34s; https://global-live-data-j9vs0edyp-michael-eng-ais-projects.vercel.app. Comparacao ZZ/turno2, captura anterior e cobertura SQLite conferidas.
- Production Ready: dpl_EB14J34Wz8EQnxMfAuRE5z7v8YoY, main 2935a24, 35s. https://vercel.com/michael-eng-ais-projects/global-live-data/EB14J34Wz8EQnxMfAuRE5z7v8YoY. URL unica https://global-live-data-q3btfkxwr-michael-eng-ais-projects.vercel.app.
- Publico https://global-live-data.vercel.app/pt/elections/brazil. Probe anonimo 2026-10-16T19:09:39.715Z: 60 paginas EN/PT/ES com deployment ID correto, seis exports integrais iguais ao canonico, seis cargos, duas quarentenas RO, ZZ/turno2 ausente com 2022 preservado, oito limites/404 do lab e sitemap passaram.
- IAB publicado 390px/1280px: cobertura por turno, link interno RO e aviso, preservacao de 2022, ausencia do segundo turno, sem overflow ou erros de aplicacao. Capturas /tmp/global-live-data-tse-refresh/published-coverage.png e published-mobile.png fora do Git. Override restaurado, comparacao PT mantida aberta; servidor local proprio encerrado.

Execucoes reais: 18:59:24 UTC (staging) e 19:02:16 UTC (--apply), ambas changed=false: 134 recortes, duas quarentenas RO, somente turno 1, nenhum arquivo canonico alterado. Hash ZIP partidos 3008ceb12aeea1646b2bf42a1bfe24bdf5e1732714d6bc2aeef6a1d162014461; totais e084964a7e0240f9c4fe824cae4300cb2945df9fd254505350bbecc94689a146. Capturas publicadas continuam 15:11 UTC porque fatos nao mudaram.

Heartbeat ACTIVE verificado em [[refresh-tse-elections]]. Futuro disparo autonomo e segundo turno real nao observados; Safari, aparelhos fisicos, carga e auditoria completa de runtime logs nao executados.

## Primeira rodada editorial autonoma (16/10/2026)

PR #11 https://github.com/michael-eng-ai/global-live-data/pull/11 integrada em 2026-10-16T20:06:33Z. Head 7c8e0576a8b46b70f8580d136ab8adf43b41f100; merge/main 8b6c43893fd2db9b038cca25abc32b8d21f3b66c, arvore identica e clone limpo/local=remoto.

- CI PR https://github.com/michael-eng-ai/global-live-data/actions/runs/38959564838 e main https://github.com/michael-eng-ai/global-live-data/actions/runs/38959831619: ambos os jobs success nas revisoes exatas. Python offline permaneceu no job agregado.
- Preview Ready: dpl_CdT43kCaE78hrUtnivHtzoikMqXP, head 7c8e057, 28s. https://global-live-data-o8xpz3ny5-michael-eng-ais-projects.vercel.app; artigo espanhol conferido no browser autenticado.
- Production Ready: dpl_5XJagKFShJwE4ytKg9phGxeCWsPm, main 8b6c438, 28s. https://vercel.com/michael-eng-ais-projects/global-live-data/5XJagKFShJwE4ytKg9phGxeCWsPm. URL unica https://global-live-data-jb5eu7isy-michael-eng-ais-projects.vercel.app.
- Publico https://global-live-data.vercel.app/pt/trending/tour-de-france-2027-route-reveal. Probe anonimo 2026-10-16T20:07:56.097Z: nove paginas home/indice/artigo EN/PT/ES HTTP 200 com deployment ID exato, CSP, canonical/hreflang, Article JSON-LD, quatro referencias, timestamps originais, nove URLs de artigos no sitemap, robots e slug inexistente 404.
- IAB publicado 390px/1280px: leitura, indice, idiomas e retorno PT, sem overflow ou erros de aplicacao. Screenshots /tmp/global-live-data-editorial-heartbeat/published-desktop.png e published-mobile.png. Override restaurado; artigo PT mantido aberto. Servidor local proprio encerrado.

Uma pauta nova, nenhuma mudanca em fontes historicas/TSE, APIs, contas, chaves, dependencias, gastos ou automacoes. Pesquisa real: dez pautas em cada US/BR/GB/ES/JP/IN, todas ready. Checks locais e limites em [[validation-workflow]]; criterio editorial em [[editorial-publishing]].

## Conexoes
- [[index]] - Mapa de conhecimento.
- [[release-status]] - Evidencias verificadas da entrega.
- [[2026-10-15-production-launch]] - Sessao de publicacao autorizada.
- [[current]] - Estado para retomada.
- [[2026-10-15-authorize-publication]] - Decisao do proprietario.
- [[resume-publication]] - Procedimento futuro.
- [[trap-vercel-access]] - Conector e browser sao acessos independentes.

- [[environment]] - Contexto relacionado e evidencia de retomada.

- [[AGENTS]] - Contexto relacionado e evidencia de retomada.

- [[trap-concurrent-github-changes]] - Contexto relacionado e evidencia de retomada.

- [[2026-10-15-defer-publication]] - Contexto relacionado e evidencia de retomada.

- [[repo-handoff-original]] - Contexto relacionado e evidencia de retomada.
- [[validation-workflow]] - Estado relacionado e evidencia de verificacao.

- [[2026-10-15-publish-portal]] - Autorizacao e revisao de navegacao solicitadas antes do merge.
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[project]] - Direcao e implementacao atualizadas.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[2026-10-15-discovery-release]] - Handoff desta publicacao.
- [[sports-election-feeds]] - Fontes de esportes e resultados eleitorais.
- [[2026-10-16-sports-election-release]] - Handoff da expansao publicada.
- [[editorial-publishing]] - Protocolo editorial e recorrencia.
- [[2026-10-16-editorial-release]] - Handoff editorial.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-retain-editions]] - Direcao confirmada de retencao por edicao.
- [[2026-10-16-history-release]] - Handoff do historico publicado.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
