---
tipo: conceito
projeto: global-live-data
resumo: "Adequacao dos dados: fontes atuais subaproveitadas, limites e prioridades propostas."
tags: [global-live-data, dados, qualidade, produto]
atualizado: "2026-10-16"
---

# Adequacao e profundidade dos dados

Auditoria solicitada pelo proprietario em 16/10/2026: site visualmente bom, mas duvida sobre sufiencia/utilidade dos dados. Amostra real 18:22-18:24 BRT. Main 5c7c8907c518947bc8ae5c05105016887d1dce8c confirmada igual a origin/main; nenhum codigo ou deploy alterado.

## Achados verificados

- 21 consultas HTTP limitadas (13 site, oito fornecedores), todas 200. Ready nao prova completude; nenhuma medicao de audiencia ou demanda.
- OpenLigaDB temporada 2026/27: site/fonte DEL 21/364 jogos, CHL 40/88, Bundesliga 27/306, UCL 54/144. Recorte intencional de tres rodadas, nao perda na ingestao. Calendario cadastrado nao garante fases futuras completas. Sem divergencias de estado nos 142 jogos comuns e sem divergencias dos 84 placares finais publicados. Fonte comunitaria nao foi certificada por outra entidade.
- Nas quatro temporadas, sem IDs duplicados, kickoff ausente ou jogo iniciado ha mais de seis horas ainda nao concluido. Nenhum estadio preenchido em 902 registros. Bundesliga getbltable/bl1/2026 retornou 18 times e pontos/vitorias/empates/derrotas/gols. Nao reutilizar regras de futebol em hoquei ou fases da UCL.
- Hoquei ja baixa temporada completa e filtra tres rodadas; pode reaproveitar captura para calendario/time. TTL seis horas atende finais periodicos, nao placar ao vivo.
- Frankfurter retornou 124 observacoes, quatro pares USD para BRL/EUR/GBP/JPY, 31 datas de 16/09 a 16/10/2026. Site usa so ultimas taxas. Serie 90 dias documentada, nao sondada. Padrao v2 combina provedores; nao chamar de taxa exclusiva BCE.
- Lisboa: 90 pontos ate 26/10 00h UTC, temperatura/vento/umidade completos. UI recorta 24h. 27 pontos sem chuva1h; 84 com periodo6h e 78 com12h. Ausencias de horizonte longo sao esperadas; nao preencher zero/somar sobreposicoes. Fonte MET consultada pelo site, sem leitura de identidade privada.
- TV global: 70 episodios, 41 programas; 70/70 airtime vazios tambem na fonte. Airstamp existe, mas nao autoriza inventar horario. Runtime ausente 49 no site e 48 na consulta posterior. Agrupar por serie/plataforma e usar data; nao afirmar disponibilidade regional.
- Xadrez: 79 rodadas, 51 agendadas, tres ongoing, 24 finished, uma unknown; uma sem inicio. Agenda nao fornece partidas. API documenta players/team standings sem autenticacao quando disponiveis; nao sondados. Round/PGN documentam OAuth study:read; nao presumir todos anonimos.
- UK: quatro distritos, votos partidarios reconciliados 4/4, datas 08/10/2026 e 04/07/2024 (tres). Nao representa total nacional. Brasil analisado apenas pelos arquivos existentes: 176 recortes2022, 134 validos2026, dois RO em quarentena; sem nova coleta TSE.
- USGS primeira amostra194 eventos; stale nas duas leituras, mas sourceUpdatedAt avancou 21:17:08 para21:22:08 UTC. Frescor1min vencido; nao demonstrou pane permanente. Xadrez stale tornou-se ready na segunda leitura.

## Prioridades propostas na auditoria

Atualizacao posterior: itens1/2 autorizados e implementados em PR13; ver [[sports-fx-depth]]. Previsao7dias e demais propostas permanecem fora da entrega.

1. Futebol/hoquei: temporadas e rodadas navegaveis, paginas de time, ultimos cinco resultados/proximo jogo; classificacao primeiro Bundesliga. Separar blocos futuros/finais. Validar regras/fases antes de outras tabelas.
2. FX: grafico30/90dias, variacao, extremos e conversor; politica de fonte constante e lacunas visiveis, sem intradiario.
3. Previsao7dias com intervalos corretos, destaque a cobertura e idade efetiva. Eleicoes: destacar comparacao brasileira existente, separar amostra UK.
4. TV/xadrez complementares ate enriquecimento validado. Evitar novas categorias enquanto falta profundidade. Views/retencao esperados sao hipotese, nao resultado.

Contrato proposto: cada categoria informa cobertura, edicao, data de origem, ultimo check e estado; placares/status/ausencias preservados; consultas compartilhadas limitadas. Aumentar frequencia exige avaliar trafego agregado OpenLiga e fonte. Esta auditoria nao concede autorizacao para novos servicos, chaves, custos ou publicacao.

## Evidencia e reproducao

Relatorio e notebook executado no repositorio: qa-artifacts/data-audit-2026-10-16/README.md e audit.ipynb. observations.json guarda capturas publicas selecionadas e URLs/horarios; profile.py/profile.json guardam calculos. Probes node24 explicitos fazem novas consultas; notebook/perfil usam captura local. Arquivos ignorados pelo Git; fatos essenciais persistem nesta nota.

Fontes primarias: https://github.com/OpenLigaDB/OpenLigaDB-Samples ; https://frankfurter.dev/ ; https://docs.api.met.no/doc/locationforecast/datamodel.html ; https://www.tvmaze.com/api ; https://lichess.org/api ; https://members-api.parliament.uk/index.html ; https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php . Detalhes e URLs dos schemas Lichess no relatorio. Tentativa inicial de caminho api-broadcast-round.yaml retornou404; usar listagem oficial do repositorio, nao adivinhar.

Nenhuma suite/build reexecutada pois codigo do app nao mudou. Nao afirmar teste das propostas, carga longitudinal, certificacao de resultados, nova captura TSE ou publicacao. UI publicada de hoquei foi inspecionada em leitura.

## Conexoes
- [[index]] - Entrada do projeto.
- [[current]] - Prioridade atual.
- [[2026-10-16-api-data-audit]] - Handoff da auditoria.
- [[sports-election-feeds]] - Contratos e contexto da categoria.
- [[football-fx-pilot]] - Contratos e contexto da categoria.
- [[met-forecast]] - Contratos e contexto da categoria.
- [[trends-tv-discovery]] - Contratos e contexto da categoria.
- [[usgs-earthquakes]] - Contratos e contexto da categoria.
- [[brazil-election-comparison]] - Contratos e contexto da categoria.
- [[consolidation-audit]] - Contratos e contexto da categoria.
- [[sports-fx-depth]] - Contrato aprofundado de esportes/FX.
- [[2026-10-16-publish-sports-fx-depth]] - Prioridade selecionada autorizada.
