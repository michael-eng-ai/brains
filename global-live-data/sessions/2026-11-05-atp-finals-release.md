---
tipo: sessao
projeto: global-live-data
resumo: "Guia das ATP Finals: fase de grupos e pontos publicado em três idiomas."
tags: [global-live-data, sessao, editorial, release, tennis]
atualizado: "2026-11-05"
data: "2026-11-05"
ia: codex
maquina: macos
---

# ATP Finals: grupos e pontos

## Objetivo e estado

Uma pauta após pesquisa dos seis mercados: explicar por que uma derrota no grupo de simples não elimina automaticamente e separar vitórias de pontos ATP. PR73 integrada à main bdee8724981d00a10a680866e84f68d038d66853; árvore limpa e igual a origin/main. CI da PR e main, Production Ready e páginas PT/EN/ES verificados; recibos em [[release-status]]. Catálogo com 51 artigos, três em Tênis.

## Decisões e limites

Quatro páginas primárias do organizador sustentam calendário, formato e pontos; não são quatro organizações independentes. Livro de fatos: docs/editorial/2026-11-05-atp-finals-groups.md. A/B/C/D são fictícios, com seis pares únicos e três jogos por participante; Python e Node conferiram as contas. Divulgação de apoio de IA e ausência de revisão humana preservada. Link interno ao guia de placar. Sem resultado, ranking, classificação de jogador ou novo feed.

## O que evitar

A pauta inicial ranking versus Race foi descartada: FAQ, índice do regulamento e PDF ATP retornaram 403; o PDF ITF redirecionou a host inacessível. Não usar trechos de busca para completar regras sem fonte lida. Não inferir a situação de Shelton a partir da tendência. As páginas acessíveis sustentam o recorte publicado. O domínio exclusivo Vercel foi lido no navegador autenticado; a verificação anônima do marcador usou somente o alias público, sem redirects.

## Opções em aberto

NBA real, nome e domínio permanecem dependentes do dono; esta rodada não os alterou. Não repetir publicação só porque a busca ou o placar mudaram.

## Próximo passo e prompt de retomada

1. Sincronize o cérebro, confira Git e leia docs/EDITORIAL.md; preserve qualquer tarefa em andamento.
2. Execute npm run editorial:research nos seis mercados e compare a pergunta com os 51 artigos, incluindo este guia das ATP Finals.
3. Publique no máximo uma pauta nova com fontes primárias suficientes; pule a rodada quando faltar apuração. Respeite os gates e registre o SHA exato, Ready e páginas públicas.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Seleção e apuração.
- [[release-status]] - Validação e publicação.
