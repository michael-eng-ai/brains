---
tipo: sessao
projeto: global-live-data
resumo: "Guia do calendário dos Ravens e horários em oito cidades publicado em três idiomas."
tags: [global-live-data, sessao, editorial, release, american-football]
atualizado: "2026-11-06"
data: "2026-11-06"
ia: codex
maquina: macos
---

# Ravens: calendário e horários locais

## Objetivo e estado

Uma pauta após pesquisa dos seis mercados: distinguir BYE, TBD e EST na agenda dos Ravens. PR75 integrada à main 67eccaeb7130e7ae24dccf9364097d499b9fb5b8; árvore limpa e igual a origin/main. CI da PR/main, Production Ready e páginas PT/EN/ES verificados; recibos em [[release-status]]. Catálogo com 53 artigos, três em Futebol americano.

## Decisões e limites

Cinco páginas primárias sustentam estrutura da temporada, entradas do calendário e regras de horário. NFL e clube são fontes relacionadas; NIST e USNO sustentam a conversão. Livro de fatos: docs/editorial/2026-11-06-ravens-calendar.md. Python e Node coincidiram nas oito cidades para o início anunciado do jogo contra os Chargers. O horário é datado, não um feed ao vivo. Apoio de IA e ausência de revisão humana continuam divulgados. Link interno ao guia de pontuação da NFL.

## O que evitar

O comunicado do clube contém uma tabela inconsistente da semana 18; não publicar data exata a partir dela. A agenda atual e a prosa dizem TBD. Não atribuir causa ao interesse de busca, publicar placares sem apuração ou confundir conversão com direito local de transmissão. Não generalizar o horário de verão a todas as localidades dos EUA. O domínio exclusivo Vercel foi lido no navegador autenticado; somente o alias público foi usado na prova anônima do marcador.

## Opções em aberto

Saúde dos provedores é uma amostra separada, com estado e limites em [[release-status]]. NBA real, nome e domínio permanecem dependentes do dono. Esta rodada não alterou provedores, infraestrutura ou frequência das rotinas.

## Próximo passo e prompt de retomada

1. Sincronize o cérebro, confira Git e leia docs/EDITORIAL.md; preserve qualquer tarefa em andamento.
2. Execute npm run editorial:research nos seis mercados e compare a pergunta com os 53 artigos, incluindo calendário dos Ravens, pontuação e transferências da NFL.
3. Publique no máximo uma pauta nova com fontes primárias suficientes; pule quando faltar apuração. Confirme ambos os jobs, SHA exato, Production Ready e páginas públicas.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Seleção e apuração.
- [[release-status]] - Validação e publicação.
