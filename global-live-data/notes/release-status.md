---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Evidencias de merge, CI e publicacao Vercel."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-16"
---

# Estado da entrega

## Entrega atual: hoquei, xadrez e resultados eleitorais

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

## Entrega editorial atual

PR #7 https://github.com/michael-eng-ai/global-live-data/pull/7 integrada em 2026-10-16T14:04:44Z. Head 9a2ad62f6e09f900f10565eb4a5e22b5198b4cb6; main dba29fdd2ff944c5934116b6c6dd42cc898e5fc8; arvores identicas e limpas. CI PR https://github.com/michael-eng-ai/global-live-data/actions/runs/38912597274 e main https://github.com/michael-eng-ai/global-live-data/actions/runs/38912871587 passaram ambos os jobs.

Production Ready dpl_ERkThavNiqMiouSRrAQ4Ux2zS36X, commit main exato. Dashboard https://vercel.com/michael-eng-ais-projects/global-live-data/ERkThavNiqMiouSRrAQ4Ux2zS36X; URL unica https://global-live-data-q7ydhlfzx-michael-eng-ais-projects.vercel.app. Alias https://global-live-data.vercel.app/pt/trending respondeu com a revisao do deploy. Conferidas 39 rotas EN/PT/ES, sitemap/robots, metadata/artigos e 404 desconhecido. QA publicado desktop/mobile sem erro de aplicacao; imagens fora do Git: /tmp/global-live-data-editorial/editorial-published-desktop.png e editorial-published-mobile.png.

Heartbeat editorial ACTIVE confirmado em app/arquivo; nenhuma execucao futura ainda confirmada. Sem novos servicos pagos ou chaves. Ver [[editorial-publishing]].

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
