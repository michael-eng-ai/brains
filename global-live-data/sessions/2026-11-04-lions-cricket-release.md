---
tipo: sessao
projeto: global-live-data
resumo: "Guia West Indies A e England Lions publicado em três idiomas na PR68."
tags: [global-live-data, sessao, editorial, release]
atualizado: "2026-11-04"
data: "2026-11-04"
ia: codex
maquina: macos
---

# Série de críquete em São Cristóvão

Rodada de 3 de novembro às 21h58 em Fortaleza (4 de novembro, 00h58 UTC). A consulta indiana motivou um guia sobre os seis próximos jogos, os dois campos e o início mais cedo de 11 de novembro. As datas foram confrontadas com a agenda da CWI e seu anúncio da série. A ECB contextualiza o programa Lions. O leitor segue para o guia de overs no mesmo idioma.

A PR68 foi integrada e publicada em main no commit 5b9e4a38e11734cc9ffed883f38167ec49c9aa7a. O painel da Vercel confirmou Production Ready para essa revisão. Três páginas públicas responderam 200. Detalhes em [[release-status]]. O catálogo tem 46 artigos, cinco de críquete.

O portal descreve horários programados. As verificações locais incluíram 101 testes unitários, 11 de importação, 36 casos Chromium e seis jornadas de leitura em telas de 390 e 1280 pixels. Em produção, o filtro, a troca de idioma, o sumário, as fontes, os metadados e a navegação ao guia de overs passaram nos três idiomas. A leitura em espanhol também passou com JavaScript desabilitado.

## Próxima rodada

1. Sincronizar o cérebro, conferir main e verificar se há trabalho em andamento.
2. Executar editorial:research nos mercados suportados e comparar com os 46 artigos.
3. Escolher até uma pauta útil, conferir fontes e datas e seguir docs/EDITORIAL.md. A agenda pode mudar, portanto verificar a fonte antes de revisar horários.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado vigente.
- [[historico]] - Sequência das sessões.
- [[editorial-publishing]] - Apuração da pauta.
- [[release-status]] - Evidências de CI e produção.
