---
tipo: decisao
projeto: global-live-data
resumo: "Guardar a edicao anterior e incluir todos os cargos brasileiros de 2022."
tags: [global-live-data, decisao, historico]
atualizado: "2026-10-16"
---

# Reter edicoes anteriores

Confirmado em 16/10/2026: o proprietario pediu armazenamento historico de pelo menos a eleicao/campeonato anterior e respondeu "todos os cargos desse ano" ao escopo da primeira carga de 2022 por estado.

Implementacao escolhida: arquivos normalizados versionados + SQLite indexado reconstruido offline, sem provisionar conta/servico pago. Permite publicar consultas persistentes pequenas e recuperar versoes via Git, mantendo separado o cache atual. Nao confundir esta escolha tecnica com autorizacao de banco cloud, ingestao automatica ou apuracao brasileira em 2026.

Publicacao segue a autorizacao da conversa para implementar e publicar as expansoes viaveis no site existente. Detalhes e limites em [[historical-editions]], evidencias em [[release-status]].

## Conexoes
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[index]] - Direcao confirmada de retencao por edicao.
- [[project]] - Direcao confirmada de retencao por edicao.
- [[2026-10-16-history-release]] - Direcao confirmada de retencao por edicao.
- [[release-status]] - Direcao confirmada de retencao por edicao.
