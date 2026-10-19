---
tipo: conceito
projeto: global-live-data
resumo: "Edicoes historicas persistentes com SQLite somente leitura e importacao verificavel."
tags: [global-live-data, historico, dados]
atualizado: "2026-10-19"
---

# Edicoes historicas

Implementacao: PR #8; contratos e comandos em docs/HISTORY.md do repositorio. Recibo remoto em [[release-status]]. O pedido inicial foi guardar pelo menos a edicao anterior; o proprietario escolheu todos os cargos de 2022.

- Fonte duravel: data/history/<edition>.json, versionada em Git e no remoto; manifest SHA-256 verifica integridade. Cada ano/temporada tem identificacao propria. Sem TTL ou substituicao automatica da edicao anterior.
- Banco derivado .data/history.sqlite: aproximadamente 360 KiB na primeira entrega (tamanho atual em [[brazil-election-comparison]]), Node 24 node:sqlite somente leitura no runtime. history:build reconcilia/valida arquivos, cria banco temporario com transacao/PK/FK/STRICT, checa integridade e renomeia atomicamente. Nao e banco hospedado gravavel nem persistencia em /tmp da Vercel.
- Tabelas editions/matches/contests/votes separam os graos. Votos: edicao + cargo + estado + turno + partido; jogos: edicao + ID da partida. Indices de consultas por recorte e data confirmados em planos reais; placares esportivos paginados em 24.
- TSE 2022: 176 recortes e 2.217 agregados por partido; presidente, governador, senador, deputado federal, estadual e distrital. Presidencia tem 27 UFs (incluindo DF) + ZZ, dois turnos. Total nacional calculado, nao duplicado. Votos nominais/legenda validos conferem com arquivo independente de totais. Sao dados revisados obtidos em 2026, nao snapshot da noite eleitoral, dados de candidatos/cadeiras ou apuracao 2026.
- Armadilhas TSE: excluir BRASIL.csv quando usa arquivos regionais; ANO_ELEICAO=2022 inclui suplementar de 2026, por isso filtrar IDs/datas/turnos da eleicao geral. Grao bruto inclui coligacao. QT_TOTAL_VOTOS_LEG_VALIDOS ja inclui votos nominais convertidos. Python 3.11+ importa ZIP em streaming com limite, sem extrair caminhos nem reter dados pessoais.
- OpenLigaDB 2025/26: Bundesliga 306, UCL 189, DEL 406, CHL 101 jogos encerrados; IDs de liga verificados por edicao. Preservar etapa final acumulada, nao somar periodos. Cobertura comunitaria nao e certificacao de completude.
- Direitos: TSE CC BY sem versao declarada; OpenLigaDB ODbL 1.0 com credito/share-alike. JSON adaptado de cada edicao em /api/history?edition=<id>, links na metodologia interna; sem logos/perfis.
- Paginas /[lang]/history/<edition>, EN/PT/ES, filtros cargo/estado/turno, busca/paginacao, idioma preservando selecao, dados SSR legiveis sem JS. Acessos internos em futebol/hoquei/eleicoes.
- Gate de build exige temporada anterior de cada liga atualmente configurada e baseline Brasil 2022 para 2026. Importar/registrar novo arquivo antes de avancar temporada. Nenhum agendador de novas edicoes ou gravacao continua foi criado.
- Para correcoes: gerar arquivo em staging fora do repo, conferir proveniencia/diff/reconciliacao, atualizar arquivo/manifest em commit novo. Git guarda a versao anterior. Para recuperar, restaurar catalogo+JSON+manifest e reconstruir; nao restaurar um SQLite avulso.

Escala futura: banco duravel hospedado e ingestao continua exigem desenho de quota, backup, migracao e autorizacao de conta/custo. Historico britanico e de outras categorias nao foi importado nesta entrega. O heartbeat editorial continua independente.

## Extensao posterior

A comparacao 2026/2022 e a migracao do SQLite derivado para schema 2 estao em [[brazil-election-comparison]]. Isso supera os limites anteriores de cinco edicoes/schema 1, preservando todos os arquivos de fonte existentes.

## Atualizacao TSE autorizada

O fluxo atual de 2026 esta em [[refresh-tse-elections]], superando a limitacao inicial de importacao manual. Sem migracao adicional de schema; os seis JSONs canonicos permaneceram inalterados na entrega de codigo PR10; a revisao material posterior esta abaixo.

## Revisao preservada de 19 outubro

A PR14 atualiza somente a fonte 2026 e seu checksum apos reconciliacao de RO; todas as edicoes anteriores e os 134 recortes 2026 ja validos ficaram identicos. Contrato e valores em [[brazil-election-comparison]], publicacao em [[release-status]]. Nao houve migracao, alteracao do importador ou servico novo.

## Conexoes
- [[index]] - Persistencia historica, contratos e evidencia de retomada.
- [[current]] - Persistencia historica, contratos e evidencia de retomada.
- [[architecture]] - Persistencia historica, contratos e evidencia de retomada.
- [[project]] - Persistencia historica, contratos e evidencia de retomada.
- [[environment]] - Persistencia historica, contratos e evidencia de retomada.
- [[provider-cache]] - Persistencia historica, contratos e evidencia de retomada.
- [[sports-election-feeds]] - Persistencia historica, contratos e evidencia de retomada.
- [[football-fx-pilot]] - Persistencia historica, contratos e evidencia de retomada.
- [[validation-workflow]] - Persistencia historica, contratos e evidencia de retomada.
- [[release-status]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-retain-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-history-release]] - Persistencia historica, contratos e evidencia de retomada.
- [[brazil-election-comparison]] - Comparacao oficial 2026/2022 e divergencias da fonte.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[2026-10-19-tse-ro-release]] - Handoff da liberacao de Rondonia.
