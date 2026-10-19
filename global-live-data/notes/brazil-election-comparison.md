---
tipo: conceito
projeto: global-live-data
resumo: "Comparacao oficial Brasil 2026/2022, Senado e quarentena de divergencias TSE."
tags: [global-live-data, eleicoes, historico, qualidade]
atualizado: "2026-10-19"
---

# Comparacao de eleicoes brasileiras

O proprietario autorizou dados oficiais de 2026, comparacao por cargo/estado/turno, publicacao e atualizacao do cerebro em 16/10/2026. Implementacao na PR #9; contratos completos em docs/BRAZIL-COMPARISON.md do repositorio, sem necessidade de reler a conversa. Recibos remotos ficam em [[release-status]].

- Rotas /[lang]/elections/brazil e /[lang]/history/br-2026, EN/PT/ES. Entrada na categoria eleicoes; filtros e idioma preservam o recorte. SSR inclui dados e funciona sem JavaScript. Consultas locais indexadas; nenhum ZIP baixado por visitante.
- Captura inicial (16 outubro), fontes oficiais TSE resultados-2026: votacao_partido_munzona_2026.zip (22.855.241 bytes) e detalhe_votacao_munzona_2026.zip (2.508.283). Captura 16/10/2026 15:11 UTC; geracoes CSV respectivamente 16/10 08:31:37 e 15/10 19:32:48, sem inferir timezone dessas strings. Proveniencia inicial recuperavel na revisao anterior de data/history/br-2026.json. Licenca CC BY sem versao especificada; credito/metodologia/JSON adaptado permanecem acessiveis.
- Somente IDs observados 6257/6259, data 04/10/2026, turno 1. Calendario oficial preve segundo turno em 25/10, mas nenhum dado/ID de segundo turno e registrado. Noticia/calendario e link do Senado em docs/BRAZIL-COMPARISON.md. Captura preservada nao e apuracao continua nem declaracao de vencedores.
- Captura inicial: 136 recortes esperados; 134 reconciliados com 1.892 agregados por partido. Todos os seis cargos tem dados. Presidencia inclui 28 regioes disjuntas (UFs/DF+ZZ), 119.300.788 votos validos nacionais; nunca somar BRASIL.csv aos regionais.
- Quarentena inicial, resolvida na captura de 19/10 abaixo: deputado federal RO/1 tem soma partidaria 28.921 contra total independente 932.939; deputado estadual RO/1 tem 45.420 contra 942.021. Causa da divergencia nao comprovada. Ambos os recortes de 2026 foram omitidos integralmente e registrados em unavailable/source_mismatch; 2022 continua visivel. Nao transformar ausencia em zero, ajustar totais ou alegar cobertura completa.
- No primeiro lote, o importador manual falhou sem exclusao explicita: --year 2026 --exclude-mismatch 6/RO/1 --exclude-mismatch 7/RO/1. Exclusao que nao corresponde mais a divergencia tambem falha. Esse e o modo manual. O wrapper autorizado resolve as duas exclusoes RO quando conferidas; [[refresh-tse-elections]].
- Build confere os 136 recortes como validos ou em quarentena, sem duplicatas; todas as 28 regioes presidenciais devem ser validas para haver total nacional. O wrapper descobre turno 2 nos dois arquivos: ano 2026, data 25/10, tipo ordinario 2, escopo/descricao federal ou estadual, presidente/governador. Data nao pode ser futura. Identidades por escopo/turno devem coincidir; nenhum ID adivinhado. Nacional exige 28 regioes reconciliadas. Governadores entram por estado, com quarentena explicita; ausencia nao prova que houve ou nao disputa.
- Arquivo de fonte v2 guarda votesCast de QT_VOTOS; SQLite derivado v2 reconcilia valid+blank+nullVotes+other com votesCast. Comparecimento QT_COMPARECIMENTO conta pessoas. Senado 2026 tem duas escolhas por pessoa, 2022 uma; mudancas de votos/percentuais partidarios ficam suprimidas, eleitorado/comparecimento continuam comparaveis. Cinco arquivos de fonte anteriores e formatos de exportacao v1 preservados byte a byte. SQLite inicial de seis edicoes: 499.712 bytes; tamanho revisado abaixo.
- Taxa de comparecimento = pessoas/aptos; diferenca em pontos percentuais. Partidos associados somente por numero E sigla identicos, sem inferir fusoes/renomeacoes; registro ausente e traco, nao zero. Diferencas nao medem transferencia de eleitores. Sem nomes/perfis pessoais, cadeiras, pesquisas ou previsoes.
- Sem dependencia, segredo, conta, gasto contratado, variavel de ambiente ou permissao CI de escrita nova. Heartbeat TSE em [[refresh-tse-elections]]; editorial independente.

A PR #10 acrescenta atualizacao automatizada e cobertura derivada do SQLite. Recortes publicados nao podem desaparecer ou tornar-se divergentes: regressao bloqueia o lote e preserva a proveniencia anterior. Regeneracao de ZIP sem mudanca nos agregados nao atualiza o site. Nao misturar dados antigos/novos sob uma captura falsa. 2022 permanece intacto. Avisos e links de pendencias acompanham o banco. Contagens atuais e verificacoes reais em [[release-status]].

## Captura atual reconciliada: 19 outubro 2026

O heartbeat executou uma unica vez history:refresh:tse -- --apply, exit 0, checkedAt 12:20:04.872851 UTC, changed/applied true. As duas fontes oficiais adquiridas as 12:20:01 UTC mantem IDs 6257/6259, turno 1, data 04/10. Agora 136 recortes validos, 1.931 agregados partidarios e nenhuma quarentena. RO deputado federal: 932.939 votos validos, 21 partidos; deputado estadual: 942.021, 18 partidos. Soma nominal+legenda igual ao total independente nos dois casos. Comparecimento 990.313, eleitorado 1.265.008 em ambos. Nenhum turno 2 importado.

Todos os 134 recortes ja validos ficaram identicos; 2022 e os quatro arquivos esportivos permanecem byte-identicos. Novo SHA normalizado da edicao 2026: da84408e7d442e85251ea600a031689cc2c2d6579735aee4d4d773387ec6f227, conferido no manifest. Proveniencia completa em data/history/br-2026.json; o Git preserva captura/quarentena anteriores. SQLite derivado de 503.808 bytes nesta revisao. Recibos da publicacao em [[release-status]]. Agora tambem a perda/regressao de qualquer recorte RO anteriormente liberado bloqueia o lote; nunca voltar a quarentena silenciosamente.

## Conexoes
- [[index]] - Entrada e catalogo.
- [[current]] - Estado operacional.
- [[historical-editions]] - Persistencia e recuperacao.
- [[sports-election-feeds]] - Evolucao da cobertura eleitoral.
- [[validation-workflow]] - Checks offline e probes separados.
- [[release-status]] - Evidencias de publicacao.
- [[2026-10-16-brazil-comparison-release]] - Handoff da comparacao publicada.
- [[2026-10-16-auto-tse]] - Atualizacao TSE autorizada e verificavel.
- [[refresh-tse-elections]] - Atualizacao TSE autorizada e verificavel.
- [[2026-10-16-tse-refresh-release]] - Handoff, procedimento e evidencia da atualizacao TSE.
- [[api-data-adequacy]] - Auditoria transversal de adequacao dos dados.
- [[2026-10-19-tse-ro-release]] - Handoff da liberacao de Rondonia.
