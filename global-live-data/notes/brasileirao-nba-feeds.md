---
tipo: conceito
projeto: global-live-data
resumo: "Brasileirao publicado com SportScore; NBA preparada e desativada sem chave."
tags: [global-live-data, esportes, fornecedores]
atualizado: "2026-10-30"
---

# Brasileirao e NBA

Contrato detalhado no repositorio: docs/BRASILEIRAO-NBA.md. A pagina /[lang]/football/brasileirao tem EN/PT/ES, tabela de 20 clubes, filtros por clube e estado do jogo e selecao preservada na URL e na troca de idioma. Cards no portal e em futebol. Atualizacao sob demanda a cada 15 minutos; consulta nao significa publicacao nova na fonte.

## Fonte e direitos

SportScore disponibiliza API widget sem conta ou chave. Os termos de 23 abril 2026, conferidos em 20 outubro, permitem projetos comerciais iniciais com credito visivel em cada tela: link SSR para https://sportscore.com/, rel=dofollow e title=Sports data by SportScore. Cache e produtos derivados sao permitidos; exportacao bruta em massa ou feed concorrente nao. Nenhum escudo ou imagem foi copiado. Fontes: https://sportscore.com/developers/api/ e https://sportscore.com/developers/terms/ .

A tabela nao informa temporada nem publicacao. A UI explica isso; catalogo CBF de 2026 e reconciliacao aritmetica validam o recorte sem inventar campos da fonte. O adaptador bloqueia fora de 2026 e exige revisao para trocar a edicao. Jogos por clube: ate 30 registros de todas as competicoes antes do filtro para Serie A de 2026; a fonte prioriza partidas futuras e pode omitir recentes. Nao prometer calendario completo ou placar em tempo real.

O probe de 20 outubro, 15:47 UTC, validou a tabela e 19 clubes, com 17 a 28 jogos filtrados por clube. Gremio fica bloqueado: o slug gremio-rs da tabela retorna outra identidade, Gremio RS, e dois jogos antigos de outras competicoes. Nao relaxar a validacao de nomes nem inventar parametro de ID. A tabela permanece acessivel. Datas impossiveis, finais futuros, duplicatas, clubes desconhecidos e tabela inconsistente sao rejeitados; eventual deducao legitima de pontos exige analise do gate.

O feed geral de 50 partidas e truncado e nao tem filtro de liga documentado. Nao serve para concluir que uma liga nao tem jogos. Para NBA, o recorte de Boston retornou somente fevereiro a abril de 2027, e as tabelas testadas nao trouxeram dados utilizaveis.

## NBA preparada

BALLDONTLIE tem jogos e equipes no plano gratuito, mediante conta e chave. Classificacao e estatisticas de partidas de jogadores sao pagas e nao foram implementadas. Termos de 20 outubro permitem uso comercial, cache, arquivo e derivados, exceto um feed concorrente de API esportiva; nao licenciam marcas de terceiros. Fontes: https://docs.balldontlie.io/ e https://www.balldontlie.io/terms.html .

O usuario escolheu publicar Brasileirao e deixar NBA preparada. Nenhuma conta, chave ou assinatura foi criada. BALLDONTLIE_API_KEY e exclusivamente server-side. Sem chave: zero consultas, pagina basketball retorna 404, sem navegacao/sitemap. O opt-in de laboratorio funciona apenas localmente, nunca na Vercel. Pagina preparada usa noindex. Janela de ontem/hoje/amanha em Nova York, horarios UTC, no maximo 100 jogos, paginacao incompleta rejeitada, cache de 15 minutos e descarte apos uma hora. Nao ativar com fixtures.

Ativacao futura depende de chave do proprietario, probe real, revisao da cobertura e UI, configuracao de hosting autorizada e decisao sobre navegacao/indexacao. Nao pedir a chave novamente nesta entrega.

## Operacao e lacunas

Brasil usa 21 chaves de cache: tabela e 20 clubes. Limite nominal de 2.016 consultas/dia/ambiente; tres ambientes ocupados somam 6.048 antes de retries, cold starts e duplicacoes entre instancias. Cota publicada aproximada de 10.000/IP/dia, sem SLA. Fila e backoff locais nao sao limite global. Cache compartilhado, descarte em 24 horas e estados explicitos preservados.

ops:check passou a sete leituras e nove feeds representativos, incluindo apenas a tabela Brasileirao; nao consulta NBA ou todos os clubes. Seis arquivos historicos existentes preservados. A edicao anterior de Brasileirao/NBA ainda nao foi importada: acesso, licenca e identificacao historica continuam pendentes.

A medicao Trends de 19 outubro continua datada: NBA 41, Brasileirao 14, Bundesliga 7, indices relativos da mesma comparacao global de 12 meses, nao volumes absolutos. Em 20 outubro a comparacao apresentou erro; RSS US/BR funcionou as 15:29 UTC, sem essas ligas nos dez itens retornados. Isso nao prova ausencia de demanda.

## Guia editorial de desempate

A PR61 liga um artigo EN/PT/ES diretamente a /[lang]/football/brasileirao. Apenas o tipo de destino editorial foi ampliado para essa rota existente; nenhuma ordenacao, fonte, cobertura, cache ou partida mudou. O art15 CBF foi explicado como regra da classificacao final. Nao usar o guia como prova de temporada informada pelo SportScore, resultados finais ou cobertura completa. Apuracao e demanda em [[editorial-publishing]]; recibos em [[release-status]].

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[2026-10-20-publish-brasileirao-prepare-nba]] - Escolha do proprietario.
- [[2026-10-20-brasileirao-release]] - Handoff.
- [[sports-demand-priorities]] - Demanda datada.
- [[release-status]] - Commit, CI e publicacao.
- [[validation-workflow]] - Gates.
- [[environment]] - Nome da configuracao opcional.
- [[2026-10-30-brasileirao-editorial-release]] - Guia ligado a pagina existente sem alterar o feed.
