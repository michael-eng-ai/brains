---
tipo: "moc"
projeto: "global-live-data"
resumo: "Mapa de conhecimento e entrada do projeto."
tags: ["global-live-data", "moc"]
atualizado: "2026-10-16"
---

# Global Live Data

Comece pelo estado atual e pela sessao mais recente. Fatos de produto ficam nas notas; evidencias completas ficam nas fontes. O catalogo e gerado por graph.sh.

## Fundamentos
- [[AGENTS]] - Regras de retomada e limites que precisam sobreviver entre sessoes.
- [[project]] - Objetivo de produto e limites das fases.
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[current]] - Portal com oito categorias publicado e verificado.

## Conceitos
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
- [[2026-10-15-defer-publication]] - Escolha historica de nao publicar; merge posterior observado nao autoriza deploy.
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[2026-10-15-scope-budget]] - Natureza como primeira fase e limite de custo como planejamento.
- [[AGENTS]] - Regras de retomada e limites que precisam sobreviver entre sessoes.
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[curated-geography]] - Catalogo limitado de 42 cidades e geometria do mapa.
- [[current]] - Portal com oito categorias publicado e verificado.
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
