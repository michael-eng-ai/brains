---
tipo: conceito
projeto: global-live-data
resumo: "Comparacao oficial Brasil 2026/2022, Senado e quarentena de divergencias TSE."
tags: [global-live-data, eleicoes, historico, qualidade]
atualizado: "2026-10-16"
---

# Comparacao de eleicoes brasileiras

O proprietario autorizou dados oficiais de 2026, comparacao por cargo/estado/turno, publicacao e atualizacao do cerebro em 16/10/2026. Implementacao na PR #9; contratos completos em docs/BRAZIL-COMPARISON.md do repositorio, sem necessidade de reler a conversa. Recibos remotos ficam em [[release-status]].

- Rotas /[lang]/elections/brazil e /[lang]/history/br-2026, EN/PT/ES. Entrada na categoria eleicoes; filtros e idioma preservam o recorte. SSR inclui dados e funciona sem JavaScript. Consultas locais indexadas; nenhum ZIP baixado por visitante.
- Fontes oficiais TSE resultados-2026: votacao_partido_munzona_2026.zip (22.855.241 bytes) e detalhe_votacao_munzona_2026.zip (2.508.283). Captura 16/10/2026 15:11 UTC; geracoes CSV respectivamente 16/10 08:31:37 e 15/10 19:32:48, sem inferir timezone dessas strings. Hashes/capturas por arquivo em data/history/br-2026.json. Licenca CC BY sem versao especificada; credito/metodologia/JSON adaptado permanecem acessiveis.
- Somente IDs observados 6257/6259, data 04/10/2026, turno 1. Calendario oficial preve segundo turno em 25/10, mas nenhum dado/ID de segundo turno e registrado. Noticia/calendario e link do Senado em docs/BRAZIL-COMPARISON.md. Captura preservada nao e apuracao continua nem declaracao de vencedores.
- 136 recortes esperados; 134 reconciliados com 1.892 agregados por partido. Todos os seis cargos tem dados. Presidencia inclui 28 regioes disjuntas (UFs/DF+ZZ), 119.300.788 votos validos nacionais; nunca somar BRASIL.csv aos regionais.
- Quarentena observada: deputado federal RO/1 tem soma partidaria 28.921 contra total independente 932.939; deputado estadual RO/1 tem 45.420 contra 942.021. Causa da divergencia nao comprovada. Ambos os recortes de 2026 foram omitidos integralmente e registrados em unavailable/source_mismatch; 2022 continua visivel. Nao transformar ausencia em zero, ajustar totais ou alegar cobertura completa.
- Importador falha sem exclusao explicita: --year 2026 --exclude-mismatch 6/RO/1 --exclude-mismatch 7/RO/1. Exclusao que nao corresponde mais a divergencia tambem falha. Atualizacao exige novos arquivos limitados, conferencia e remocao das exclusoes resolvidas; divergencia nova nao e aceita silenciosamente.
- Build confere os 136 recortes como validos ou em quarentena, sem duplicatas; todas as 28 regioes presidenciais devem ser validas para haver total nacional. Segundo turno futuro requer identidades/datas/cobertura revisadas no importador/catalogo/gate/testes, nao apenas mudar uma data.
- Arquivo de fonte v2 guarda votesCast de QT_VOTOS; SQLite derivado v2 reconcilia valid+blank+nullVotes+other com votesCast. Comparecimento QT_COMPARECIMENTO conta pessoas. Senado 2026 tem duas escolhas por pessoa, 2022 uma; mudancas de votos/percentuais partidarios ficam suprimidas, eleitorado/comparecimento continuam comparaveis. Cinco arquivos de fonte anteriores e formatos de exportacao v1 preservados byte a byte. SQLite seis edicoes: 499.712 bytes.
- Taxa de comparecimento = pessoas/aptos; diferenca em pontos percentuais. Partidos associados somente por numero E sigla identicos, sem inferir fusoes/renomeacoes; registro ausente e traco, nao zero. Diferencas nao medem transferencia de eleitores. Sem nomes/perfis pessoais, cadeiras, pesquisas ou previsoes.
- Sem dependencia, segredo, conta, gasto contratado, variavel de ambiente, permissao CI ou agendador de ingestao novos. Heartbeat editorial permanece independente.

Proximo passo de dados: nova captura oficial para resolver RO, ou segundo turno apos disponibilidade real. Gerar staging fora do repo, revisar diff/metadados, atualizar JSON+manifest+textos de cobertura, validar check/e2e, observar CI/Production antes de afirmar publicacao. Preservar o baseline 2022. Fallback nunca deve preencher dados eleitorais ausentes.

## Conexoes
- [[index]] - Entrada e catalogo.
- [[current]] - Estado operacional.
- [[historical-editions]] - Persistencia e recuperacao.
- [[sports-election-feeds]] - Evolucao da cobertura eleitoral.
- [[validation-workflow]] - Checks offline e probes separados.
- [[release-status]] - Evidencias de publicacao.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
