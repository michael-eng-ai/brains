---
tipo: conceito
projeto: global-live-data
resumo: "Artigos originais por tendencias e rotina editorial a cada seis horas."
tags: [global-live-data, conceito, editorial]
atualizado: "2026-10-20"
---

# Publicacao editorial

O proprietario pediu substituir a exibicao de Google Trends por artigos e escolheu publicacao automatica frequente. A home e /[lang]/trending exibem artigos com paginas internas, busca/filtro, indice, referencias de fontes, troca de idioma preservando artigo e leituras relacionadas. Primeira edicao: OBMEP 2026 e diferenca watch/warning nos EUA, com fontes oficiais consultadas e observacao RSS datada. A terceira leitura e tour-de-france-2027-route-reveal, selecionada do mercado ES; quatro fontes primarias, calendario masculino/feminino e horarios convertidos, sem rumores. O filtro Ciclismo e editorial, sem novo feed de resultados. Evidencia factual em docs/editorial/2026-10-16-tour-route.md no repositorio. Nao ha atribuicao ficticia de autoria humana; apoio de IA e ausencia de revisao humana ficam visiveis.

Implementacao e protocolo: docs/EDITORIAL.md no repositorio, lib/editorial/catalog.ts e lib/i18n.ts. Corpos renderizados no servidor, sem requisicao do visitante a Trends, metadata/canonical/hreflang/Article JSON-LD e sitemap/robots. O adapter RSS continua limitado para pesquisa: npm run editorial:research -- US BR GB, ate seis paises e dez entradas cada. Resultado e pauta, nao fato confirmado. Sem runtime LLM, CMS, banco, novas chaves ou endpoints de publicacao.

Automacao Codex `publicar-artigos-do-global-live-data`, heartbeat desta conversa, criada ACTIVE e confirmada em automation.toml e no cartao do app em 2026-10-16. Frequencia: seis horas; no maximo uma pauta nova por rodada, sem obrigacao de publicar. Depende do agendador/executor do Codex e limites da conta; nao e cron Vercel nem promessa de funcionamento 24/7. Primeira rodada autonoma observada em 16/10/2026: disparo 19:57 UTC, pesquisa seis mercados e terceira leitura publicada; recibos em [[release-status]]. A frequencia e o escopo nao foram alterados.

Cada rodada retoma o cerebro e o Git, evita trabalho sujo/em andamento, identifica novidade sem duplicatas, le duas fontes primarias relevantes, confere afirmacoes e datas, escreve EN/PT/ES e preserva direitos autorais. Assuntos sensiveis/alegacoes nao confirmadas ficam para revisao humana. Sem novas contas, servicos pagos, imagens copiadas, anuncios ou analytics. Seguir check/e2e/QA/PR/CI/merge/Production Ready/verificacao anonima antes de declarar publicacao. Atualizar cerebro e avisar apenas publicacao/correcao/falha/decisao.

Riscos: verificacao por agente nao substitui revisao editorial humana; Google recomenda revisao manual. Nao prometer views, indexacao, ranking ou cobertura universal. Artigo datado nao prova que o termo continua em alta. Aumentar volume nao e o objetivo se faltar valor/apuracao. Evoluir testes de catalogo/fixtures ao incluir novos artigos; nao enfraquecer checks.

## Edicao de 19 outubro

Quarta leitura: asian-para-games-2026-schedule-guide, EN/PT/ES, escolhida da consulta indiana ao Trends as 12:34 UTC. Guia de datas, referencia para programacao oficial e conversao de JST com virada de dia; tres fontes primarias (Comite Paralimpico Japones, cidade de Nagoya e NICT). Evidencia factual em docs/editorial/2026-10-19-asian-para-games.md, com snapshot exato no catalogo. Paradesporto e apenas filtro editorial, sem API/painel de resultados. Fontes/apoio de IA/ausencia de revisao humana e navegacao interna preservados.

O site do organizador respondeu 403 ao leitor de pesquisa; snippets e calendario antigo de fevereiro nao fundamentaram a publicacao. As fontes publicadas foram lidas diretamente. Nao incluir placares, medalhas ou direitos de transmissao sem apuracao nova. Proxima rodada compara as quatro leituras, pesquisa no maximo seis mercados e seleciona ate uma pauta; pode pular se faltar valor ou verificacao. Sem alteracao de frequencia, contas, custos, ads ou analytics. Recibos em [[release-status]].

## Edicao de 19 outubro, 18:37 UTC

Quinta leitura: getafe-rayo-2026-october-match-guide, EN/PT/ES. Uma pesquisa de seis mercados saiu com todos ready; consulta selecionada `getafe - rayo vallecano`, ES, observada 18:37:25.743Z. O guia confirma rodada/temporada/data e converte o inicio programado, sem alegar placar ou jogo encerrado. Duas fontes primarias lidas: ficha LALIGA e PDF de designacao RFEF. SportsEvent publico da LALIGA registra 2026-10-19T19:00:00+00:00; conversoes IANA verificadas, incluindo dia 20 na India/Japao. Livro de fatos: docs/editorial/2026-10-19-getafe-rayo.md.

Novo filtro de leitura Futebol e CTA para a pagina existente; cobertura limitada a Bundesliga/Champions League permanece explicita, sem feed LaLiga. Nota de apoio de IA e ausencia de revisao humana preservada. Nenhum resultado, transmissao, jogador, causa da tendencia, foto copiada ou autor ficticio. Rayo agenda sem evento na pagina aberta e estatisticas inconsistentes da previa nao fundamentam o artigo. A cadencia/escopo das duas automacoes nao mudou. Recibos em [[release-status]].

## Edicao de 19 outubro local, 20 outubro 00:54 UTC

Sexta leitura: wnba-finals-2026-games-3-4-guide, EN/PT/ES. Pesquisa unica US/BR/GB/ES/JP/IN retornou seis mercados ready; consulta escolhida `valkyries game`, US, observada 2026-10-20T00:54:54.694Z. Guia usa revisao da WNBA de 13 outubro, corroborada pela arena: jogo3 em21 outubro20hET e jogo4 em24 outubro13hET. O FAQ ainda exibia calendario antigo; apenas seu formato melhor-de-sete/2-2-1-1-1 foi utilizado. Quarta referencia do time confirma mandos e jogos condicionais. Ledger no repositorio: docs/editorial/2026-10-19-wnba-finals.md.

Conversoes IANA por data para Brasil/Mexico/Londres/Madri incluem virada de dia no jogo3. Sem placar, resultado, direitos de transmissao, rumor, imagens ou autoria ficticia. Basketball/Basquete/Baloncesto e filtro editorial, sem API/painel NBA/WNBA. CTA permanece no indice interno, apoio de IA e ausencia de revisao humana visiveis. O artigo usa data local19out e checagem efetiva20out00:56:08Z; nao mudar timestamps por simples refresh. Nenhuma mudanca de cadencia/escopo das automacoes. Proxima rodada compara as seis leituras; recibos em [[release-status]].

## Edicao de 20 outubro, 07:04 UTC

Setima leitura: spain-clock-change-october-2026, EN/PT/ES. Pesquisa unica US/BR/GB/ES/JP/IN retornou seis mercados ready; consulta ES `cambio de hora españa`, observada 07:05:00.987Z. Tres referencias primarias lidas: ordem BOE de 2022, pagina da Comissao Europeia e calendario 2027-2031 publicado em 18 marco 2026. Ledger: docs/editorial/2026-10-20-spain-clock-change.md. Checagem efetiva 07:05:41Z; publicacao datada 20 outubro.

Guia pratico explica atraso dos relogios em 25 outubro, diferenca das Canarias, exemplos hipoteticos Madri/Brasilia/Cidade do Mexico e hora repetida com offset UTC. Calculos datetime/zoneinfo verificados; sem inventar eventos nem alegar fim da mudanca em 2026. `time` e somente filtro editorial. Tres idiomas, fontes, apoio de IA, ausencia de revisao humana e retorno interno preservados. Nenhuma conta, chave, custo, dependencia, provider ou automacao alterada. Recibos e limite de verificacao Vercel em [[release-status]].

## Edicao de 20 outubro, 13:06 UTC

Oitava leitura: india-zimbabwe-women-october-2026-guide, EN/PT/ES. Pesquisa unica US/BR/GB/ES/JP/IN retornou seis mercados ready; consulta IN `india vs zimbabwe`, observada 13:07:24.319Z. Quatro referencias primarias BCCI/ICC lidas e concordantes; checagem efetiva 13:08:21Z. Ledger no repositorio: docs/editorial/2026-10-20-india-zimbabwe-women.md. O termo de busca nao prova que as pessoas buscavam essa serie; o titulo identifica explicitamente as selecoes femininas.

Guia distingue terceiro T20I de 20 outubro/Raipur e ODIs de 23/25/28 outubro/Vadodara, com conversoes IANA por data e ajuste europeu entre partidas. Sem placares, resultados, jogadores, direitos de transmissao, imagens copiadas ou causa inventada da tendencia. `cricket` e apenas filtro de leitura; nao foi adicionado provider de criquete. Referencias, nota IA/sem revisao humana e retorno interno preservados. Catalogo agora tem oito artigos. Cadencia/escopo das automacoes e infraestrutura inalterados. Recibos em [[release-status]].

## Edicao de 20 outubro, 19:09 UTC

Nona leitura: nba-league-pass-availability-guide, EN/PT/ES. Pesquisa unica US/BR/GB/ES/JP/IN retornou seis mercados ready. Consulta escolhida US `nba league pass`, observada 19:10:19.993Z; fontes conferidas 19:11:20Z. Tres referencias primarias NBA sobre disponibilidade global, bloqueios e Tap to Watch. Ledger: docs/editorial/2026-10-20-nba-league-pass.md. O RSS e uma pauta datada, nao prova causa ou demanda futura.

Guia separa territorio, acesso ao vivo e reprise; exemplo de viagem e checklist sao orientacoes originais, sem prometer direitos de assinatura. Sem precos, placares, imagens copiadas, canais inventados ou contorno de bloqueios. Basketball permanece filtro existente; o adapter NBA nao foi ativado, conforme escolha do proprietario. Apoio de IA, ausencia de revisao humana, fontes e retorno interno preservados. Catalogo com nove artigos. Nenhuma alteracao em contas, chaves, custos, dependencias, providers ou automacoes. Recibos e limite de leitura direta Ready em [[release-status]].

## Conexoes
- [[index]] - Entrada.
- [[current]] - Retomada.
- [[2026-10-16-auto-editorial]] - Escolha do proprietario.
- [[release-status]] - Publicacao observada.
- [[validation-workflow]] - Checks e limites.
- [[trends-tv-discovery]] - RSS mantido como pesquisa.
- [[architecture]] - Renderizacao e fronteiras.
- [[project]] - Direcao do produto.
- [[AGENTS]] - Regras duraveis.
- [[2026-10-16-editorial-release]] - Handoff.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
- [[2026-10-19-asian-para-editorial-release]] - Handoff da edicao editorial dos Jogos Para-Asiaticos.
- [[2026-10-19-getafe-editorial-release]] - Handoff da quinta leitura.
- [[2026-10-19-wnba-editorial-release]] - Handoff da sexta leitura.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
- [[2026-10-20-cricket-editorial-release]] - Handoff da oitava leitura e verificacao completa.
- [[2026-10-20-league-pass-editorial-release]] - Handoff da nona leitura e limite de verificacao.
