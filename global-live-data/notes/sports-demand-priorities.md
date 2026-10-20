---
tipo: conceito
projeto: global-live-data
resumo: "Demanda medida para cinco ligas e candidatos de API ainda sujeitos a validacao."
tags: [global-live-data, produto, esportes, demanda]
atualizado: "2026-10-19"
---

# Demanda esportiva

O proprietario questionou ausencia de Brasileirao/outras ligas/NBA e pediu priorizar por buscas. Pesquisa somente, sem nova decisao de conta, chave ou plano. Cobertura atual confirmada em lib/lab/pilot-schema.ts:15: Bundesliga e Champions League; NBA e Brasileirao ausentes.

Em 19/10 local (20/10 UTC), Google Trends Explore, Mundo/ultimos12meses/Web/todas as categorias, assuntos das cinco ligas: PremierLeague42, NBA41, LaLiga18, BrasileiraoSerieA14, Bundesliga7 na tabela Media. IDs: /m/02_tc, /m/05jvx, /m/09gqx, /m/0fnk7q, /m/037169. Indices normalizados/amostrados, nao volume absoluto, porcentagem ou publico do site. 42/41 e quase empate; nao concluir vantagem robusta. Primeira semana19/10/2025, ultima18/10/2026 ainda em andamento. Comparacao de termos inicial descartada por ambiguidade.

Reproducao: https://trends.google.com/trends/explore?date=today%2012-m&q=%2Fm%2F05jvx,%2Fm%2F02_tc,%2Fm%2F0fnk7q,%2Fm%2F09gqx,%2Fm%2F037169&hl=pt-BR . Metodologia: https://support.google.com/trends/answer/4365533?hl=pt-BR . Recorte historicoBR retornou erro; EUA nao medido separadamente. Nao inventar indices regionais. editorial:research nos seis mercados retornou ready entre00:47:59 e00:48:03UTC; limite10recentes/pais nao representa ranking por volume ou toda a demanda. Sinais esportivos selecionados no relatorio local; nao copiar nomes pessoais do RSS ao cerebro.

Proposta: Brasileirao para lacunaPT, NBA como primeira nova categoria e PremierLeague como primeira ampliacao internacional; LaLiga depois. Sao prioridades propostas, nao funcionalidades aprovadas/publicadas. NBA abre20/10/2026 segundo https://pr.nba.com/2026-27-nba-regular-season-schedule ; oportunidade sazonal, nao medicao de buscas.

NBA/BALLDONTLIE e candidata gratuita com jogos; tabela/boxscores fora. Termos atuais explicitam uso comercial/cache/arquivo com restricoes. Football-data.org cobre as tres ligas candidatas com atraso no gratuito, mas uso comercial gratuito/retencao apos cancelamento continuam pendencias de homologacao; nao converter disponibilidade em permissao. API-Football nao resolveu direitos comerciais; BALLDONTLIE EPL gratuito nao inclui partidas. Sem cadastro/chaves/probes autenticados nesta pesquisa.

Relatorio local completo e evidencia: /Users/michaelsantos/Documents/GitHub/global-live-data/qa-artifacts/sports-demand-2026-10-19/README.md e evidence.json (ignorados pelo Git). Fontes primarias: https://docs.balldontlie.io/ ; https://www.balldontlie.io/terms.html ; https://www.football-data.org/coverage ; https://www.football-data.org/pricing ; https://www.football-data.org/client/register ; https://www.football-data.org/blog ; https://epl.balldontlie.io/ ; https://www.api-football.com/terms . Rever termos vigentes antes de integrar.

Proximo piloto deve validar atual/anterior, cobertura, horario/status, cache/quota agregada e navegacao EN/PT/ES por liga/time/jogos/tabela. SearchConsole futuro pode medir impressões/cliques/CTR por liga/pais em28dias; nenhuma metrica propria existe e nenhuma automacao/analytics foi criada. Codigo/main/publicacao inalterados; suites nao executadas porque apenas pesquisa.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Foco atual.
- [[category-research]] - Pesquisa anterior e evolucao de prioridades.
- [[2026-10-19-sports-demand-research]] - Handoff e limites desta rodada.
