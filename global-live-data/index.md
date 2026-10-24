---
tipo: "moc"
projeto: "global-live-data"
resumo: "Mapa de conhecimento e entrada do projeto."
tags: ["global-live-data", "moc"]
atualizado: "2026-10-24"
---

# Global Live Data

Comece pelo estado atual e pela sessao mais recente. Fatos de produto ficam nas notas; evidencias completas ficam nas fontes. O catalogo e gerado por graph.sh.

## Fundamentos
- [[AGENTS]] - Regras de retomada e limites que precisam sobreviver entre sessoes.
- [[project]] - Objetivo de produto e limites das fases.
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[current]] - Estado atual e revisoes TSE/editoriais verificadas.

## Conceitos
- [[brand-name-testing]] - Teste de nomes PT/EN/ES e custos.
- [[brasileirao-nba-feeds]] - Brasileirao publicado; NBA preparada, cobertura e licenca.
- [[sports-demand-priorities]] - Demanda comparativa de ligas e pendencias de API.
- [[launch-readiness]] - Dominio cotado e passos verificaveis para Google.
- [[sports-fx-depth]] - Temporadas/time/Bundesliga e FX30/90dias publicados, com limites.
- [[api-data-adequacy]] - Utilidade, cobertura e prioridades de dados.
- [[consolidation-audit]] - Diagnostico historico e consolidacao entregue, com limites operacionais.
- [[historical-editions]] - Arquivo versionado, SQLite e regra da edicao anterior.
- [[brazil-election-comparison]] - Brasil 2026/2022, denominadores e dados pendentes.
- [[editorial-publishing]] - Artigos, apuracao e rotina de seis horas.
- [[sports-election-feeds]] - Hoquei, xadrez e resultados britanicos com limites de reutilizacao.
- [[trends-tv-discovery]] - Buscas regionais e programacao TV publicadas com limites explicitos.
- [[football-fx-pilot]] - Futebol e cambio com fontes reais e cache compartilhado.
- [[category-research]] - Previa global, amostras reais e fontes candidatas.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[curated-geography]] - Catalogo limitado de 42 cidades e geometria do mapa.
- [[usgs-earthquakes]] - Fonte USGS limitada a janela movel de 24 horas.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[release-status]] - Evidencias de merge, CI e publicacao Vercel.
- [[validation-workflow]] - Checks locais e CI sem confundir fixtures com dados reais.
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.

## Decisoes
- [[2026-10-20-publish-brasileirao-prepare-nba]] - Publicar Brasileirao e deixar NBA preparada.
- [[2026-10-19-repair-usd-fx-refresh]] - Correcao e publicacao USD autorizadas.
- [[2026-10-19-mobile-load-and-domain-research]] - Testes/correcao e pesquisa de dominio autorizados.

- [[2026-10-19-repair-usgs-refresh]] - Correcao/publicacao USGS autorizadas.

- [[2026-10-19-publish-mexico-weather]] - Publicacao da previa mexicana autorizada.

- [[2026-10-19-mexico-weather-first]] - Mexico primeiro, apenas previa local.
- [[2026-10-16-publish-sports-fx-depth]] - Prioridade de dados existentes, merge e publicacao autorizados.
- [[2026-10-16-publish-consolidation]] - Correcao24h, operacao e publicacao autorizadas.
- [[2026-10-16-consolidate-first]] - Consolidar antes de expandir; avaliacao sem deploy irrestrito.
- [[2026-10-16-auto-tse]] - Atualizar dados TSE e publicar resultados consistentes.
- [[2026-10-16-retain-editions]] - Reter historico e importar todos os cargos de 2022.
- [[2026-10-16-auto-editorial]] - Publicacao automatica frequente escolhida.
- [[2026-10-16-publish-sports-elections]] - Fontes gratuitas comerciais autorizadas para publicacao.
- [[2026-10-15-publish-discovery]] - Expansao autorizada para publicar e avaliar depois.
- [[2026-10-15-publish-portal]] - Publicacao autorizada e direcao do portal.
- [[2026-10-15-football-fx-first]] - Prioridade aprovada para teste real local.
- [[2026-10-15-global-review-before-release]] - Publico global e avaliacao antes de publicar expansao.
- [[2026-10-15-authorize-publication]] - Autorizacao explicita de merge e publicacao.
- [[2026-10-15-defer-publication]] - Escolha historica de nao publicar; merge posterior observado nao autoriza deploy.
- [[2026-10-15-scope-budget]] - Natureza como primeira fase e limite de custo como planejamento.

## Armadilhas
- [[trap-runtime-selection]] - Diretorio node@24 nao prova que o executavel roda Node 24.
- [[trap-env-preservation]] - Copia de exemplo pode apagar configuracao local ja autorizada.
- [[trap-browser-production]] - Origin do HMR e restricoes antigas nao devem alterar CSP de producao.
- [[trap-vercel-access]] - Conector, browser, formulario e deploy sao estados independentes.
- [[trap-concurrent-github-changes]] - Estado remoto pode mudar enquanto testes e memoria estao em andamento.

## Procedimentos
- [[refresh-tse-elections]] - Conferencia, no-op e publicacao pelo heartbeat.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.
- [[resume-publication]] - Retomar hospedagem somente com nova instrucao e alvo confirmado.

## Fontes
- [[repo-agents-original]] - Copia da fonte AGENTS.md.
- [[repo-readme-original]] - Copia da fonte README.md.
- [[repo-handoff-original]] - Copia da fonte docs/HANDOFF.md.
- [[repo-architecture-original]] - Copia da fonte docs/ARCHITECTURE.md.
- [[repo-roadmap-original]] - Copia da fonte docs/ROADMAP.md.
- [[repo-data-sources-original]] - Copia da fonte docs/DATA-SOURCES.md.
- [[repo-deployment-original]] - Copia da fonte docs/DEPLOYMENT.md.
- [[repo-dependencies-original]] - Copia da fonte docs/DEPENDENCIES.md.
- [[harvest-inventory]] - Fontes lidas, evidencias e lacunas da inicializacao.

## Sessoes
- [[2026-10-24-tse-reconciliation-recovered]] - Gates TSE recuperados; dados iguais, sem publicacao.
- [[2026-10-24-cricket-overs-editorial-release]] - Guia de placar e overs publicado em tres idiomas.
- [[2026-10-24-tse-ro-retention-recheck]] - Mesmo bloqueio RO confirmado, sem alterar dados publicados.
- [[2026-10-24-rainfall-editorial-release]] - Guia de chuva e periodos publicado em tres idiomas.
- [[2026-10-24-tse-ro-retention-blocked]] - Regressoes RO bloqueadas; versao publicada conferida.
- [[2026-10-23-editorial-usd-date-incident]] - Pesquisa USD adiada e datas futuras diagnosticadas.
- [[2026-10-23-clasico-editorial-release]] - Clasico, fusos e previa dos EUA publicados em tres idiomas.
- [[2026-10-23-ballon-dor-editorial-release]] - Agenda Bola de Ouro, fusos e publicacao trilingue.
- [[2026-10-23-nba-box-score-editorial-release]] - Sumula NBA, exemplo conferido e publicacao trilingue.
- [[2026-10-23-tse-vote-classification-release]] - PB reconciliado e revisao MS publicada.
- [[2026-10-22-earthquake-editorial-release]] - Magnitude, intensidade e publicacao verificada.
- [[2026-10-22-hunters-moon-editorial-release]] - Lua do Cacador e verificacao Ready.
- [[2026-10-22-editorial-cricket-triage]] - Pesquisa de criquete sem pauta pronta.
- [[2026-10-22-tse-pb-retention-recheck]] - Mesmo bloqueio TSE; snapshot preservado.
- [[2026-10-22-editorial-research-deferred]] - Pesquisa concluida; sem sobrepor verificacao pendente.
- [[2026-10-22-tse-pb-refresh-blocked]] - Retencao TSE bloqueou regressao PB.
- [[2026-10-21-champions-editorial-release]] - Guia Champions e pendencia Ready.
- [[2026-10-21-brand-name-test-preparation]] - Teste preparado e verificacao.
- [[2026-10-21-wawrinka-editorial-release]] - Guia Wawrinka publicado com recibos completos.
- [[2026-10-21-uk-cpi-editorial-release]] - CPI publicado e pendencias Ready encerradas.
- [[2026-10-21-orionids-editorial-release]] - Decima leitura e verificacao remota.
- [[2026-10-20-league-pass-editorial-release]] - Nona leitura, CI/publico verificados e limite Ready.
- [[2026-10-20-brasileirao-release]] - PR24, testes e publicacao.
- [[2026-10-20-cricket-editorial-release]] - Oitava leitura publicada; CI/Ready/publico verificados.
- [[2026-10-20-spain-clock-editorial-release]] - Guia Espanha; pendencia Ready resolvida na sessao seguinte.
- [[2026-10-19-wnba-editorial-release]] - Sexta leitura WNBA e release verificado.
- [[2026-10-19-sports-demand-research]] - Pesquisa de Brasileirao/NBA/Premier e limites.
- [[2026-10-19-usd-fx-refresh-release]] - Correcao do refresh USD publicada.
- [[2026-10-19-getafe-editorial-release]] - Quinta leitura publicada e verificada.
- [[2026-10-19-mobile-load-launch]] - WebKit/carga corrigidos; preparo de dominio.

- [[2026-10-19-usgs-refresh-release]] - PR17 corrigiu e verificou atualizacao USGS.

- [[2026-10-19-mexico-weather-release]] - PR16 publicada, CI/Production/UI verificadas.

- [[2026-10-19-mexico-weather-preview]] - Previa mexicana e evidencias de dados/QA.
- [[2026-10-19-asian-para-editorial-release]] - Handoff da edicao editorial dos Jogos Para-Asiaticos.
- [[2026-10-19-tse-ro-release]] - Primeiro heartbeat TSE material: RO liberado e PR14 publicada.
- [[2026-10-16-sports-fx-depth-release]] - PR13 publicada e verificada; proximo passo e feedback.
- [[2026-10-16-api-data-audit]] - Auditoria real das APIs e propostas.
- [[2026-10-16-consolidation-release]] - Consolidacao publicada e verificada.
- [[2026-10-16-consolidation-audit]] - Auditoria do produto, custos e atualizacao.

- [[2026-10-16-tour-editorial-release]] - Primeira rodada editorial autonoma, guia Tour 2027 publicado.

- [[2026-10-16-tse-refresh-release]] - PR #10 publicada e heartbeat TSE verificado.

- [[2026-10-16-brazil-comparison-release]] - PR #9 publicada com dados 2026/2022 e lacunas explicitas.
- [[2026-10-16-history-release]] - PR #8 publicada e dados historicos conferidos.
- [[2026-10-16-editorial-release]] - PR #7 publicada e heartbeat ativo.
- [[2026-10-16-sports-election-release]] - PR #6 publicada e fontes reais verificadas.
- [[2026-10-15-discovery-release]] - Trends/TV publicados; CI e probes verificados.
- [[2026-10-15-portal-release]] - Portal publicado, navegacao interna e CI verificados.
- [[2026-10-15-football-fx-pilot]] - Dados reais, QA e nenhuma nova publicacao.
- [[2026-10-15-mobile-category-lab]] - Mobile hospedado validado e previa local pronta.
- [[2026-10-15-production-launch]] - Resultado verificado da publicacao.
- [[historico]] - Linha do tempo com evidencias e limites das sessoes.
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.

Catalogo gerado: [[catalog]]. Guias de pasta README.md sao templates de escrita, nao notas do grafo.

## Conexoes
- [[brand-name-testing]] - Teste de nomes.
- [[2026-10-21-brand-name-test-preparation]] - Handoff de pesquisa.
- [[2026-10-15-defer-publication]] - Escolha historica de nao publicar; merge posterior observado nao autoriza deploy.
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[2026-10-15-scope-budget]] - Natureza como primeira fase e limite de custo como planejamento.
- [[AGENTS]] - Regras de retomada e limites que precisam sobreviver entre sessoes.
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[curated-geography]] - Catalogo limitado de 42 cidades e geometria do mapa.
- [[current]] - Estado atual e revisoes TSE/editoriais verificadas.
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[harvest-inventory]] - Fontes lidas, evidencias e lacunas da inicializacao.
- [[historico]] - Linha do tempo com evidencias e limites das sessoes.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[project]] - Objetivo de produto e limites das fases.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[release-status]] - Evidencias de merge, CI e publicacao Vercel.
- [[repo-agents-original]] - Copia da fonte AGENTS.md.
- [[repo-architecture-original]] - Copia da fonte docs/ARCHITECTURE.md.
- [[repo-data-sources-original]] - Copia da fonte docs/DATA-SOURCES.md.
- [[repo-dependencies-original]] - Copia da fonte docs/DEPENDENCIES.md.
- [[repo-deployment-original]] - Copia da fonte docs/DEPLOYMENT.md.
- [[repo-handoff-original]] - Copia da fonte docs/HANDOFF.md.
- [[repo-readme-original]] - Copia da fonte README.md.
- [[repo-roadmap-original]] - Copia da fonte docs/ROADMAP.md.
- [[resume-publication]] - Retomar hospedagem somente com nova instrucao e alvo confirmado.
- [[trap-browser-production]] - Origin do HMR e restricoes antigas nao devem alterar CSP de producao.
- [[trap-concurrent-github-changes]] - Estado remoto pode mudar enquanto testes e memoria estao em andamento.
- [[trap-env-preservation]] - Copia de exemplo pode apagar configuracao local ja autorizada.
- [[trap-runtime-selection]] - Diretorio node@24 nao prova que o executavel roda Node 24.
- [[trap-vercel-access]] - Conector, browser, formulario e deploy sao estados independentes.
- [[usgs-earthquakes]] - Fonte USGS limitada a janela movel de 24 horas.
- [[validation-workflow]] - Checks locais e CI sem confundir fixtures com dados reais.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.
- [[2026-10-15-mobile-category-lab]] - Contexto e evidencia da revisao local.
- [[category-research]] - Contexto e evidencia da revisao local.
- [[2026-10-15-global-review-before-release]] - Contexto e evidencia da revisao local.
- [[football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[2026-10-15-football-fx-first]] - Contexto e evidencia do piloto real.
- [[2026-10-15-football-fx-pilot]] - Contexto e evidencia do piloto real.

- [[2026-10-15-publish-portal]] - Autorizacao e revisao de navegacao solicitadas antes do merge.
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
- [[trends-tv-discovery]] - Nova descoberta com fontes reais.
- [[2026-10-15-publish-discovery]] - Autorizacao desta entrega.
- [[2026-10-15-discovery-release]] - Handoff da entrega.
- [[sports-election-feeds]] - Fontes de esportes e resultados eleitorais.
- [[2026-10-16-publish-sports-elections]] - Autorizacao explicita desta expansao.
- [[2026-10-16-sports-election-release]] - Handoff da expansao publicada.
- [[editorial-publishing]] - Protocolo editorial e recorrencia.
- [[2026-10-16-auto-editorial]] - Escolha explicita de publicacao automatica.
- [[2026-10-16-editorial-release]] - Handoff editorial.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-retain-editions]] - Direcao confirmada de retencao por edicao.
- [[2026-10-16-history-release]] - Handoff do historico publicado.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[2026-10-16-auto-tse]] - Atualizacao TSE autorizada e verificavel.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
- [[consolidation-audit]] - Auditoria e direcao atual.
- [[2026-10-16-consolidate-first]] - Auditoria e direcao atual.
- [[2026-10-16-consolidation-audit]] - Auditoria e direcao atual.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
- [[2026-10-16-publish-consolidation]] - Autorizacao especifica de consolidacao e publicacao.
- [[2026-10-19-tse-ro-release]] - Handoff da atualizacao oficial TSE.
- [[2026-10-19-asian-para-editorial-release]] - Handoff da edicao editorial dos Jogos Para-Asiaticos.
- [[2026-10-19-mexico-weather-first]] - Escopo local selecionado pelo proprietario.
- [[2026-10-19-mexico-weather-preview]] - Handoff da previa mexicana.
- [[2026-10-19-publish-mexico-weather]] - Autorizacao de publicacao da Cidade do Mexico.
- [[2026-10-19-mexico-weather-release]] - Handoff da previsao publicada.
- [[2026-10-19-repair-usgs-refresh]] - Correcao autorizada.
- [[2026-10-19-usgs-refresh-release]] - Handoff USGS.
- [[2026-10-19-mobile-load-launch]] - Handoff mobile/carga.
- [[2026-10-19-mobile-load-and-domain-research]] - Escopo autorizado.
- [[launch-readiness]] - Dominio e Google.
- [[2026-10-19-getafe-editorial-release]] - Handoff editorial.
- [[2026-10-19-usd-fx-refresh-release]] - Handoff cambio.
- [[2026-10-19-repair-usd-fx-refresh]] - Autorizacao USD.

- [[sports-demand-priorities]] - Pesquisa de demanda.
- [[2026-10-19-sports-demand-research]] - Handoff da pesquisa.
- [[2026-10-20-spain-clock-editorial-release]] - Handoff anterior; pendencia Ready resolvida.
- [[2026-10-20-cricket-editorial-release]] - Handoff da oitava leitura.

- [[brasileirao-nba-feeds]] - Entrega Brasileirao e NBA preparada.

- [[2026-10-20-publish-brasileirao-prepare-nba]] - Entrega Brasileirao e NBA preparada.

- [[2026-10-20-brasileirao-release]] - Entrega Brasileirao e NBA preparada.
- [[2026-10-20-league-pass-editorial-release]] - Nona leitura e verificacao remota.
- [[2026-10-21-orionids-editorial-release]] - Decima leitura e recibos.
- [[2026-10-21-uk-cpi-editorial-release]] - Decima primeira leitura e recibos.
- [[2026-10-21-wawrinka-editorial-release]] - Decima segunda leitura e recibos.
- [[2026-10-21-champions-editorial-release]] - Decima terceira leitura.
- [[2026-10-22-tse-pb-refresh-blocked]] - Falha TSE com preservacao do historico.
- [[2026-10-22-editorial-research-deferred]] - Pesquisa editorial sem nova publicacao.
- [[2026-10-22-tse-pb-retention-recheck]] - Rechecagem TSE sem mudanca acionavel.
- [[2026-10-22-editorial-cricket-triage]] - Pesquisa editorial desta rodada.
- [[2026-10-22-hunters-moon-editorial-release]] - Handoff editorial.
- [[2026-10-22-earthquake-editorial-release]] - Handoff do guia sismico.
- [[2026-10-23-tse-vote-classification-release]] - Handoff da revisao TSE.
- [[2026-10-23-nba-box-score-editorial-release]] - Handoff do guia NBA.
- [[2026-10-23-ballon-dor-editorial-release]] - Handoff da Bola de Ouro.
- [[2026-10-23-clasico-editorial-release]] - Handoff do Clasico.
- [[2026-10-23-editorial-usd-date-incident]] - Handoff da pesquisa e incidente USD.
- [[2026-10-24-tse-ro-retention-blocked]] - Handoff da falha de retencao RO.
- [[2026-10-24-rainfall-editorial-release]] - Handoff do guia de chuva.
- [[2026-10-24-tse-ro-retention-recheck]] - Rechecagem do bloqueio RO sem alterar a publicacao.
- [[2026-10-24-cricket-overs-editorial-release]] - Sessao editorial.
- [[2026-10-24-tse-reconciliation-recovered]] - Handoff da recuperacao TSE.
