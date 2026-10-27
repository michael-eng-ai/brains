---
tipo: conceito
projeto: global-live-data
resumo: "Comparacao oficial Brasil 2026/2022, Senado e quarentena de divergencias TSE."
tags: [global-live-data, eleicoes, historico, qualidade]
atualizado: "2026-10-27"
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

## Captura reconciliada: 19 outubro 2026

O heartbeat executou uma unica vez history:refresh:tse -- --apply, exit 0, checkedAt 12:20:04.872851 UTC, changed/applied true. As duas fontes oficiais adquiridas as 12:20:01 UTC mantem IDs 6257/6259, turno 1, data 04/10. Agora 136 recortes validos, 1.931 agregados partidarios e nenhuma quarentena. RO deputado federal: 932.939 votos validos, 21 partidos; deputado estadual: 942.021, 18 partidos. Soma nominal+legenda igual ao total independente nos dois casos. Comparecimento 990.313, eleitorado 1.265.008 em ambos. Nenhum turno 2 importado.

Todos os 134 recortes ja validos ficaram identicos; 2022 e os quatro arquivos esportivos permanecem byte-identicos. Novo SHA normalizado da edicao 2026: da84408e7d442e85251ea600a031689cc2c2d6579735aee4d4d773387ec6f227, conferido no manifest. Proveniencia completa em data/history/br-2026.json; o Git preserva captura/quarentena anteriores. SQLite derivado de 503.808 bytes nesta revisao. Recibos da publicacao em [[release-status]]. Agora tambem a perda/regressao de qualquer recorte RO anteriormente liberado bloqueia o lote; nunca voltar a quarentena silenciosamente.

## Atualizacao bloqueada: 22 outubro 2026, 00:21 UTC

Uma unica chamada history:refresh:tse -- --apply em Node 24.22.0/Python 3.12.4, a partir de main 77b578053ee05974b1ad006658566e61af53c175, terminou com exit 1. Relatorio atual .data/tse-refresh-last.json: status blocked, checkedAt 2026-10-22T00:21:27.693Z, Previously published selections lost or inconsistent: [(3, 'PB', 1), (5, 'PB', 1)]. Sao governador e senador da Paraiba no primeiro turno. guard_candidate rejeitou a perda dos recortes antes de construir/gravar candidato; a comparacao de identidades das duas fontes precede esse gate.

A evidencia nao distingue recortes ausentes de somas partidarias divergentes nem informa a diferenca numerica. Os ZIPs dessa chamada foram removidos pelo TemporaryDirectory; o relatorio de falha do wrapper nao conserva hashes/totais novos. Sem segunda captura nesta rodada, sem diagnostico inventado, sem mudar os gates ou acrescentar PB a quarentena. O candidato ignorado existente e anterior (mtime 2026-10-21T18:24:31.877302Z), portanto nao descreve esta falha.

SHA256 dos seis arquivos canonicos e manifest identicos antes/depois; timestamps de fonte/captura preservados, Brasil 2022 intacto e 2026 mantem 136 recortes validos do primeiro turno, incluindo RO, sem quarentena. Nenhum dado novo de segundo turno foi aplicado; falha nao e no-op changed=false. As duas fontes retidas seguem a aquisicao de 19 outubro e o hash2026 documentado acima.

Validacao offline:11 testes de importacao aprovados e history:build reconstruiu seis edicoes com checksums/retencao. Sem alteracao de produto, commit, PR ou deploy; check completo/e2e/UI/Production nao repetidos. Branch temporaria vazia removida, main/origin limpos. Logs locais /tmp/gld-tse-20261022-0020.log, /tmp/gld-tse-20261022-0020-offline.log e baseline de hashes /tmp/gld-tse-20261022-0020-before.json. Proxima execucao agendada faz nova captura unica; manter versao publicada enquanto persistir a regressao. [[refresh-tse-elections]].

## Rechecagem agendada: 22 outubro 2026, 06:26 UTC

Uma unica chamada --apply na branch temporaria codex/tse-refresh-20261022-0625, Node24.22.0/Python3.12.4 e main atualizada, retornou novamente exit1. O relatorio atual registra status blocked em 2026-10-22T06:26:03.525Z e as mesmas chaves [(3, 'PB', 1), (5, 'PB', 1)] no gate de retencao. O impedimento e identico ao ja comunicado; nao houve nova notificacao. A analise do codigo confirma que a excecao precede a escrita do candidato e que o relatorio nao distingue ausencia de linhas de divergencia partidaria. Nao foram inventados totais novos, nem alterados gates, exclusoes ou frequencias.

Comparacao SHA256 dos sete JSON canonicos (seis edicoes e manifest) antes/depois: nenhuma mudanca. Edicao2026 continua com136 recortes, turno1 e nenhuma quarentena; aquisicoes19out preservadas, incluindo RO ja reconciliado e baseline2022. Candidato ignorado ainda e o de21out18:24:31.877302Z, nao evidencia desta rodada. Lock removido pelo fluxo normal; branch vazia removida e main/origin limpos em77b5780. Nao foi aplicada revisao nem segundo turno.

Evidencias locais: /tmp/gld-tse-20261022-0625.log, /tmp/gld-tse-20261022-0625-before.json e /tmp/gld-tse-20261022-0625-after.json. Sem segundo download, commit/PR/deploy do projeto. Suites offline/check/e2e/UI nao repetidas: mesmo codigo, mesmos arquivos e mesma falha, com hashes conferidos; os11 testes da rodada anterior continuam apenas evidencia daquela execucao. Seguir a cadencia existente e preservar o snapshot enquanto o gate falhar. A pendencia editorial Ready e o teste de nomes nao foram alterados.

## Rechecagem agendada: 22 outubro 2026, 12:26 UTC

Uma unica chamada --apply em Node 24.22.0/Python 3.12.4, branch codex/tse-refresh-20261022-1225 criada de main atualizada, terminou com exit 1. Relatorio atual: status blocked, checkedAt 2026-10-22T12:26:43.176Z, mesmas chaves [(3, 'PB', 1), (5, 'PB', 1)]. A falha de retencao de governador/senador PB permanece identica a ja comunicada. Nao ha evidencia nova que permita distinguir ausencia de linhas e divergencia numerica; nenhum gate foi alterado.

Os sete JSON canonicos permaneceram byte-identicos ao baseline, preservando capturas, 2022 e todos os recortes publicados, inclusive RO. Candidato ignorado ainda tem mtime 2026-10-21T18:24:31.877302Z, portanto nao pertence a esta captura. Lock ausente ao final; branch vazia removida e main/origin limpos em 77b578053ee05974b1ad006658566e61af53c175. Nenhuma revisao ou segundo turno aplicado. Sem segundo download, commit/PR/deploy do projeto ou repeticao de suites e UI, pois codigo/dados e bloqueio nao mudaram. A falha nao equivale a changed=false.

Evidencias locais: /tmp/gld-tse-20261022-1225.log, /tmp/gld-tse-20261022-1225-before.json e /tmp/gld-tse-20261022-1225-after.json. Mesma cadencia existente; nenhuma nova acao do proprietario necessaria. Pendencias editorial Ready e teste de nomes preservadas.

## Rechecagem agendada: 22 outubro 2026, 18:29 UTC

Uma unica chamada --apply na branch codex/tse-refresh-20261022-1828, criada de main atualizada 489382828b3b08ef30ae5367d85d46064331ce68, Node 24.22.0/Python 3.12.4, retornou exit 1. Relatorio atual .data/tse-refresh-last.json: status blocked, checkedAt 2026-10-22T18:29:07.353Z, mesmas chaves [(3, 'PB', 1), (5, 'PB', 1)]. Permanece o bloqueio de retencao de governador/senador PB no primeiro turno, ja comunicado. Nenhuma evidencia nova da diferenca numerica, nenhuma alteracao de gates e nenhum segundo download nesta rodada.

Sete JSON canonicos byte-identicos antes/depois; preservadas todas as capturas, 2022, esportes e os136 recortes de2026, incluindo RO. Candidato ignorado ainda tem mtime2026-10-21T18:24:31.877302Z, nao e resultado desta captura. Lock ausente, branch temporaria vazia removida e main/origin limpos. Nenhuma revisao nem turno2 aplicado; falha nao equivale a changed=false.

Diff dos scripts TSE/importacao, lib/history/refresh.ts e data/history entre77b5780 e4893828 vazio: a publicacao editorial intermediaria nao alterou esse fluxo. Suites de testes/UI nao repetidas para codigo/dados/bloqueio identicos; testes anteriores nao apresentados como novos. Nenhum commit/PR/deploy TSE. Evidencias locais: /tmp/gld-tse-20261022-1828.log, /tmp/gld-tse-20261022-1828-before.json e /tmp/gld-tse-20261022-1828-after.json. PR30/Ready editorial concluido e piloto de nomes permanecem conforme current. Sem nova acao necessaria do proprietario; proxima captura na cadencia existente.

## Revisao reconciliada atual: 23 outubro 2026, 00:28 UTC

Uma unica chamada history:refresh:tse -- --apply, branch codex/tse-refresh-20261023-0025 a partir de main atualizada 843294bc37895b86f165b8e21c8b19c783f45137, Node24.22.0/Python3.12.4, retornou exit0 changed/applied true. Relatorio checkedAt2026-10-23T00:28:20.585130+00:00. Identidades6257/6259, data04/10/2026, turno1, cobertura e retencao passaram sem alterar gates. PB governador/senador reconciliados novamente; seus agregados publicados sao identicos aos anteriores. O bloqueio observado em22out esta resolvido nesta captura, sem prova da causa anterior.

Unico recorte alterado: deputado estadual MS/1, UNIAO44. Nominais64105 para47221; legenda2608 para19492; soma66713 preservada. Nenhuma causa juridica ou operacional inferida para a reclassificacao. Todos os totais de comparecimento/eleitorado/votos e os outros135 recortes permanecem identicos. Mantidos136 recortes e1931 agregados, incluindo RO, sem quarentena e sem turno2. Brasil2022 e quatro arquivos esportivos byte-identicos ao baseline. Aquisicoes atualizadas apenas porque houve mudanca material; revisoes anteriores ficam no Git.

SHA normalizado2026: 53cc0037b3290f502190cf363957050f8e2e9892f73e12edfccb2b4ebdc06776, manifest correspondente. SHA ZIPpartidos 64e77b6c895549f48fdc5ca3e7250b0aadaaa916762c89cc1bfd949b0ecf50eb, adquirido2026-10-23T00:28:17.131537+00:00; SHA ZIPtotais 384d847c9ad033ce6787f68affc930d23876c45b6054326422fb601963c0e715, adquirido2026-10-23T00:28:17.617137+00:00. Lock removido normalmente e candidato desta rodada validado. Nenhum segundo download.

Validacao local:11 testes Python, check101/lint/tipos/historybuild/Nextbuild/HTTPsmoke e35Chromium aprovados. QA PT/EN/ES390x844/1280x900 confirmou novo split, filtros, idioma, arquivo, PB/RO e turno2 indisponivel com2022 visivel; console e overflow limpos. Assercoes ad hoc de horario corrigidas para formatos locais/en-GB, sem mudar app. WebKit/iOSnativo/carga nao repetidos. Seis exports locais/publicos iguais aos canonicos (ordem partidaria normalizada); publicacao e CI em [[release-status]].

Evidencias locais: /tmp/gld-tse-20261023-0025.log, -before.json e -review.json; /tmp/gld-tse-20261023-checks.log, -local-qa.json, -public-qa.json e -public-verification.json. PR32 inclui somentebr2026/manifest/docs. Mesma infraestrutura/cadencia; sem contas, chaves, gastos, analytics, anuncios ou permissaoCI nova.

## Regressao RO bloqueada em 24 outubro, 00:35 UTC

Uma unica execucao de history:refresh:tse -- --apply, em branch codex/tse-refresh-20261024-0035 a partir de main atualizada, usou Node 24.22.0/npm 11.21.1/Python 3.12.4 e terminou com exit 1. O relatorio atual marca status blocked, checkedAt 2026-10-24T00:36:40.851Z, com Previously published selections lost or inconsistent: [(6, 'RO', 1), (7, 'RO', 1)]. Sao os recortes de deputado federal e estadual de Rondonia no primeiro turno, ja liberados e publicados desde 19 outubro.

O gate guard_candidate impediu a regressao antes de construir/gravar um novo candidato. A comparacao de identidades entre os dois arquivos precede esse gate; o erro nao traz novos IDs, hashes de aquisicao ou valores suficientes para distinguir ausencia de linhas de divergencia nas somas. Nao atribuir causa ao TSE, reproduzir os numeros da antiga quarentena de 16 outubro como se fossem desta captura, ou concluir que mudou o resultado eleitoral. ZIPs temporarios foram removidos normalmente, sem segunda aquisicao. O candidato ignorado tem mtime 2026-10-23T18:29:54.902020Z e pertence a rodada anterior, nao a esta falha. A trava local foi removida normalmente.

SHA256 dos sete arquivos data/history/*.json identicos antes/depois, incluindo manifest, Brasil 2022 e quatro esportes. Fonte/datas publicadas permanecem intactas. Brasil 2026 conserva 136 recortes/1.931 agregados do primeiro turno, nenhuma quarentena e ambos RO; nenhuma segunda rodada foi validada/aplicada. Falha nao deve ser tratada como changed=false. Main/origin permanecem limpos em 28d226858d57a5c548624794ddd20ea549cf1973; branch vazia removida. Nenhum commit, PR, merge ou deploy do produto.

Verificacao publica concluida em 2026-10-24T00:38:20.762Z: exports br-2026 e br-2022 HTTP 200 e iguais aos arquivos canonicos, normalizando somente ordem partidaria. Hashes canonicos respectivamente 53cc0037b3290f502190cf363957050f8e2e9892f73e12edfccb2b4ebdc06776 e 26bd50f06290895f6bc0b4643a654a6888504df2a29c204505ec847392e2f639. Chromium confirmou RO federal 932.939 e estadual 942.021 votos validos retidos, em PT/EN/ES e larguras 390/1280, sem overflow, overlay ou console errors/warnings. Filtro de cargo/estado e envio funcionaram; capturas mobile/desktop inspecionadas. Browser plugin not available; usado Playwright do repositorio. Primeiro roteiro ad hoc presumiu que mudar cargo preservaria RO, mas o formulario selecionou SP; roteiro passou ao reselecionar RO explicitamente, sem modificar o produto.

Validacao offline: 11 testes Python de importacao/refresh e 3 testes TypeScript de atualizacao/retencao passaram. Incluem impedir regressao de RO ja liberado, preservar edicoes e nao aceitar cobertura presidencial parcial. Check/build/e2e completos, WebKit/iOS nativo/carga e CI nao repetidos, pois nenhum dado/codigo mudou. Evidencias locais /tmp/gld-tse-20261024-0035-before.json, -refresh.log, -receipt.json, -tests.log, -public.json e capturas -390.png/-1280.png. Proxima captura unica na rodada agendada; manter a versao publicada enquanto o gate nao passar. Nenhuma cadencia, exclusao, permissao, conta, chave ou custo alterado.

## Rechecagem do mesmo bloqueio RO em 24 outubro, 06:39 UTC

Main atualizada e limpa em 099028fb635992a74919df250b1033857e38bea7. Uma unica chamada history:refresh:tse -- --apply, na branch codex/tse-refresh-20261024-0639, Node 24.22.0/npm 11.21.1/Python 3.12.4, saiu 1. Relatorio atual: status blocked em 2026-10-24T06:40:18.989Z, mesmo motivo Previously published selections lost or inconsistent: [(6, 'RO', 1), (7, 'RO', 1)]. Nenhuma nova causa ou diferenca numerica foi estabelecida; guard_candidate falhou antes da gravacao do candidato. Nao e changed=false nem confirma ausencia de segundo turno em toda a fonte.

Os sete SHA-256 e mtimes de data/history/*.json sao identicos antes/depois; fontes e datas de captura publicadas intactas. Conservados 136 recortes, 1.931 agregados, apenas primeiro turno e nenhuma quarentena, incluindo RO. Candidato ignorado continua com mtime 2026-10-23T18:29:54.902020Z, anterior a esta rodada; lock ausente e temporarios removidos normalmente. Diff dos scripts de refresh/importacao, lib/history/refresh.ts e data/history entre a primeira falha de 00:35 e main atual vazio; a PR36 editorial nao alterou o fluxo TSE. Branch vazia removida, main/origin limpos, sem commit/PR/deploy do produto.

Probe publico em 2026-10-24T06:40:55.957Z: exports br-2026 e br-2022 HTTP 200, iguais aos canonicos com somente a ordem partidaria normalizada. Brasil 2022 conserva 176 recortes e ambos turnos. Nao repetir suites ou UI para o mesmo codigo/dados/bloqueio: testes Python/TypeScript, check/build/e2e, mobile/desktop, WebKit/iOS/carga e CI nao executados nesta rodada; validacoes de 00:35 e da PR36 continuam registros historicos, nao resultados novos. Evidencias locais /tmp/gld-tse-20261024-0639-before.json, -refresh.log, -receipt.json e -public.json. Manter a proxima captura na cadencia existente, sem segunda aquisicao ou gates relaxados. Mesmo impedimento ja comunicado, sem nova acao do proprietario; rodada silenciosa. Incidente USD, nome/dominio, editorial e NBA nao foram alterados nem rechecados.

## Retencao recuperada, 24 outubro 12:43 UTC

Uma unica chamada history:refresh:tse -- --apply em main atualizada (branch temporaria codex/tse-refresh-20261024-1243), Node 24.22.0/npm 11.21.1/Python 3.12.4, saiu 0. Relatorio 2026-10-24T12:43:39.546816+00:00: changed false, applied false, 136 recortes, nenhuma quarentena, released vazio e somente turno 1. Identidades federais/estaduais 6257/6259 em 04/10/2026 confirmadas nos dois arquivos. Desta vez os gates de identidade, cobertura, reconciliacao e retencao passaram, incluindo RO federal/estadual, apos o bloqueio das 06:40. Nao foi diagnosticada a causa da inconsistencia anterior.

RO ja estava publicado desde 19 outubro e continuou acessivel; nao houve nova liberacao. Totais validos permanecem 932.939 federal e 942.021 estadual. As 136 selecoes e 1.931 agregados do candidato sao iguais aos canonicos; diferenca somente em source.files (hashes e aquisicao), sem qualquer fato novo ou turno 2 incorporado. A verificacao nao estabelece disponibilidade de todo o turno 2 a montante antes de sua data.

Sete arquivos data/history, SHA-256 e mtimes intactos, incluindo 2022, esportes e manifest. Datas publicadas preservadas. Candidato ignorado agora e novo; lock ausente e temporarios removidos normalmente. Nenhum commit/PR/deploy do produto. Branch vazia removida e main/origin limpos em a4a5a5b1c3cf63e240a647184a72c7c3f8a0e0cc (PR37 editorial anterior).

Validacao desta rodada: 11 testes Python de importacao e 3 TypeScript de refresh aprovados. Probes em 2026-10-24T12:44:44.993Z: exports br-2026/br-2022 HTTP 200, iguais aos canonicos, normalizando apenas a ordem de registros/partidos para comparacao. Brasil 2022 conserva 176 recortes e turnos 1/2. check, build, e2e, UI mobile e desktop, WebKit, iOS, carga e CI nao repetidos, pois nenhum codigo ou dado publicado mudou. Nao confundir os testes locais com certificacao eleitoral.

Evidencia: /tmp/gld-tse-20261024-1243-before.json, -refresh.log, -receipt.json, -tests.log e -public.json. Hashes novos das fontes ficam no recibo ignorado; nao substituir proveniencia canonica por mera recaptura. Proxima rodada na cadencia existente, uma captura e os mesmos gates. Recuperacao e material, mas nao e nova publicacao. USD, editorial, NBA, dominios e piloto nao foram alterados nem rechecados.

## Regressao RN bloqueada, 25 outubro 18:48 UTC

Uma unica chamada history:refresh:tse -- --apply em branch codex/tse-refresh-20261025-1848, criada de main atualizada 2cae649854052aca8cb059da182fe9b950798250, Node 24.22.0/npm 11.21.1/Python 3.12.4, terminou exit 1. Relatorio atual 2026-10-25T18:49:01.210Z: status blocked, Previously published selections lost or inconsistent: [(7, 'RN', 1)]. O recorte e deputado estadual do Rio Grande do Norte, primeiro turno. E um novo bloqueio apos a captura sem mudancas das 12:43 UTC, distinto das anteriores chaves RO/PB.

O gate guard_candidate interrompeu a construcao do candidato antes de qualquer aplicacao. O erro nao distingue ausencia de linhas de divergencia nas somas nem permite deduzir valores novos ou causa upstream. A comparacao de identidades ocorre antes desse gate, mas novos IDs e hashes de aquisicao nao foram preservados no relatorio bloqueado; nao inventa-los. ZIPs temporarios removidos normalmente, sem segundo download. Candidato ignorado com mtime 2026-10-25T12:43:59.835101+00:00 pertence a rodada anterior, nao a esta falha. Lock ausente.

Sete arquivos data/history/*.json com SHA-256 e mtimes intactos: 2026, 2022, quatro esportes e manifest. Preservadas fontes e datas publicadas. Mantidos 136 recortes, 1.931 agregados, somente turno 1 e nenhuma quarentena; RN estadual conserva 1.938.309 votos validos e ambos RO continuam retidos. Nenhum turno 2 validado/aplicado; esta falha nao prova ausencia completa de dados do segundo turno nos arquivos oficiais. Nao tratar blocked como changed false.

Verificacao publica em 2026-10-25T18:49:50.878Z: exports 2026 e 2022 HTTP 200 e iguais aos canonicos, normalizando apenas ordem partidaria. 2022 conserva 176 recortes e ambos turnos. Chromium do repositorio confirmou RN estadual em PT/EN/ES, 390/1280 pixels, filtros e total valido preservados, sem overflow/overlay/console errors. Duas capturas inspecionadas. 11 testes Python de importacao e 3 TypeScript de refresh/retencao aprovados. Check/build/e2e completos, WebKit/iOS/carga/CI nao repetidos: nenhum codigo ou dado mudou.

Branch temporaria vazia removida; main/origin limpos no SHA acima. Nenhum commit/PR/deploy do produto, nenhum gate ou configuracao alterado. Evidencias /tmp/gld-tse-20261025-1848-before.json, -refresh.log, -receipt.json, -tests.log, -public.json e capturas 390/1280. Proxima captura unica na cadencia existente; preservar snapshot ate reconciliar. Editorial PR42, USD, NBA, dominio e piloto de nomes nao alterados nem rechecados.

## Revisao RN/PE reconciliada: 26 outubro, 00:45 UTC

Uma unica execucao history:refresh:tse -- --apply, Node 24.22.0/npm 11.21.1/Python 3.12.4, exit 0 em 2026-10-26T00:45:20.376094+00:00: changed/applied true. O bloqueio RN estadual da rodada anterior resolveu nesta captura, sem afrouxar gates ou repetir download. Identidades observadas permanecem primeiro turno, federal 6257/estadual 6259, data 04/10/2026. Nao houve identidade/resultado de segundo turno nesta captura.

Tres recortes alterados: governador RN, nulos 104.522 para 104.749, outros excluidos 227 para 0, validos iguais e antiga linha PCO (29) zerada ausente; senador PE, escolhas nulas 1.374.907 para 1.393.086, outras excluidas 18.179 para 0, validos/comparecimento iguais e antiga linha DEMOCRATA (35) zerada ausente; estadual RN, validos 1.938.309 para 1.938.293, nulos 122.474 para 122.490, REDE (18) nominais 2.758 para 2.742, legenda permanece 135. Nenhuma causa judicial, politica ou de processo inferida.

Todos os 136 recortes retidos; 133 demais iguais, ambos RO preservados; 1.929 agregados partidarios e nenhuma quarentena. As duas linhas removidas contribuiram zero na captura anterior; ausencia nao e preenchida com zero e versoes anteriores permanecem em Git. Todas as somas partidarias/validos e participacao/escolhas reconciliadas. Arquivo canonico igual ao candidato; SHA-256 155a58af6ed597c2fa9a46106e390df011382c23c012ea51a48bdbd46644ad67 confere com manifest. Brasil 2022 e quatro esportes com hashes e mtimes intactos. Digests originais e aquisicoes reais 00:45:17 UTC registrados no arquivo canonico; docs/TSE-REFRESH.md detalha before/after.

PR44 publicada e provas em [[release-status]]. Nenhum importer, gate, provider, conta, credencial, gasto, permissao CI ou rotina alterado. Recibos /tmp/gld-tse-20261026-0044-before.json, -refresh.log, -diff.json, -checks.log, -local-qa.json, -public-qa.json e -release.json; dados/docs duraveis no repositorio.

## Captura bloqueada em 27 outubro, 18:53 UTC

Heartbeat 18:52:26Z executou uma unica vez npm run history:refresh:tse -- --apply, em branch codex/ baseada em main/origin 77859c1adc140e4c802d550c12b628df12c43271 limpa. Node 24.22.1/Python 3.12.4. Exit 1; relatorio atual checkedAt 2026-10-27T18:53:16.166Z, status blocked, erro Duplicate party grain or missing contest em scripts/import-tse-history.py:108, chamado por refresh-tse.py:77. Nenhuma mutacao dos arquivos canonicos.

Diagnostico limitado: a mesma mensagem cobre repeticao da chave cargo/UF/turno/eleicao/municipio/zona/transito/partido/coligacao OU chave cargo/UF/turno sem registro no arquivo de totais. O relatorio nao distingue a condicao nem informa cargo/UF/turno afetado. Nao atribuir o erro a Rondonia, ao segundo turno, a um partido ou a causa politica/administrativa. A falha ocorreu antes da comparacao final de identidades e da escrita do novo candidato; nao e changed=false, dataset vazio ou prova de ausencia de turno 2 na fonte.

Os sete JSONs historicos mantiveram bytes e mtime, incluindo manifest, Brasil 2022 e quatro esportes. O arquivo retido de 2026 continua com 136 recortes, 1.929 linhas partidarias, ambos RO presentes, nenhuma quarentena e apenas primeiro turno. Candidato ignorado ainda tem mtime 12:55:45.862971Z e pertence a rodada anterior, nao a captura que falhou. ZIPs temporarios removidos pelo contexto; lock limpo; hashes de aquisicao novos nao disponiveis no relatorio de erro. Sem segunda aquisicao nesta rodada.

11 testes offline history-import passaram. Dois probes sinteticos adicionais demonstraram separadamente que duplicacao e ausencia de contest produzem a mesma mensagem; nao provam qual ocorreu na fonte. JSONs publicos br-2026/br-2022 HTTP 200 e iguais semanticamente aos canonicos em 18:53:55.868Z. SHA-256 canonico 2026 permanece 155a58af6ed597c2fa9a46106e390df011382c23c012ea51a48bdbd46644ad67. Sem alteracao de codigo, gates ou dados; check completo/e2e/CI/UI nao repetidos, nenhuma PR ou publicacao. Branch vazia removida, main limpa. Recibos locais /tmp/gld-tse-20261027-1852-*; proxima captura fica para a rodada prevista, sem relaxar validacoes. Pendencia Ready da PR51 e separada e permanece aberta.

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
- [[2026-10-22-tse-pb-refresh-blocked]] - Falha de retencao investigada.
- [[2026-10-22-tse-pb-retention-recheck]] - Repeticao do mesmo bloqueio, sem alterar dados.
- [[2026-10-23-tse-vote-classification-release]] - Handoff da revisao reconciliada.
- [[2026-10-24-tse-ro-retention-blocked]] - Handoff da falha de retencao RO.
- [[2026-10-24-tse-ro-retention-recheck]] - Rechecagem do bloqueio RO sem alterar a publicacao.
- [[2026-10-24-tse-reconciliation-recovered]] - Reconciliacao recuperada.
- [[2026-10-25-tse-rn-retention-blocked]] - Retencao RN bloqueada.
- [[2026-10-26-tse-rn-pe-revision-release]] - Revisoes RN/PE.
- [[2026-10-27-tse-party-grain-blocked]] - Handoff do bloqueio de granularidade TSE.
