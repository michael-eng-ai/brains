---
tipo: sessao
projeto: global-live-data
resumo: "PR83: guia NCAA publicado em três idiomas, CI e Ready verificados."
tags: [global-live-data, sessao, editorial, basketball, release]
atualizado: "2026-11-11"
data: "2026-11-11"
ia: codex
maquina: macos
---

# NCAA: rankings e seleção para o torneio

## Objetivo e estado
Rodada editorial 00:23 UTC concluída com uma pauta publicada pela PR83. Main local/remota limpa 6b0309d0472fe16e0b02c1b6f390b71ecd8b6055. Ambos os jobs PR/main aprovados, Production Ready/SHA e páginas PT/EN/ES verificados. Recibo em [[release-status]].

## Decisões e limites
Pesquisa nos seis mercados; termo US levou a guia de Top25/AP, NET e seleção/seed, distinto dos quatro artigos de basquete anteriores. Quatro referências, catálogo 61, Basketball cinco e CTA índice. [[editorial-publishing]]. Sem ranking atual de equipe, resultado, novo feed ou tamanho do torneio. Histórico e rotinas preservados.

## Validação e opções abertas
Check com 101 unitários, 11 testes de importação e 37 Chromium, seis jornadas locais e três públicas; espanhol sem JavaScript. Três capturas locais e duas públicas inspecionadas, sem erros/overflow. Safari nativo/WebKit/carga não repetidos. Domínio/Google, dependências e NBA real seguem nas frentes existentes, fora desta edição.

## O que evitar
Não tratar AP, NET e seed como a mesma medida. Tabela NET lida nesta sessão ainda tinha corte em abril; nova consulta trouxe desafio robô e não comprovou atualização. Não confundir ausência de resultados de temporadas anteriores no ranking com ausência de dados históricos no treinamento do modelo. Não reutilizar o antigo tamanho do torneio. Não repetir pedidos de acesso quando o painel autenticado fornece evidência válida.

## Próximo passo concreto
Próxima rodada: sincronizar cérebro, conferir main limpa, pesquisar editorial:research de novo e comparar 61 artigos. Publicar no máximo uma pauta apurada pelos gates de docs/EDITORIAL.md. Nenhuma pendência da PR83. Servidor próprio 3102 encerrado.

## Prompt inicial para a próxima sessão
Continue uma rodada editorial do Global Live Data: 1) sincronize ~/brains e confira Git; 2) leia AGENTS.md/docs/EDITORIAL.md e pesquise seis mercados com Node 24; 3) selecione até uma pauta inédita com duas fontes primárias ou pule; 4) valide testes, PR/CI, Production Ready/SHA/páginas; 5) salve e sincronize o cérebro. Preserve dados, escopo e frequência.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[release-status]] - Recibos observados.
- [[editorial-publishing]] - Apuração e limites.
