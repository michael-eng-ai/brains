---
tipo: sessao
projeto: global-live-data
resumo: "Guia da CCXP: datas, Spoiler Night e ingressos publicado em três idiomas."
tags: [global-live-data, sessao, editorial, release, exhibitions]
atualizado: "2026-11-05"
data: "2026-11-05"
ia: codex
maquina: macos
---

# CCXP: datas e acesso

## Objetivo e estado

Uma pauta após pesquisa dos seis mercados: distinguir os quatro dias da CCXP26, a Spoiler Night e os adicionais de palco. PR74 integrada à main f9dd5aa75545e484eaa921529efa7e83758e5fb5; árvore limpa e igual a origin/main. CI da PR/main, Production Ready e páginas PT/EN/ES verificados; recibos em [[release-status]]. Catálogo com 52 artigos, dois em Feiras.

## Decisões e limites

Seis páginas oficiais da mesma organização sustentam datas, horários locais, tipos de ingresso e resgate; não são seis organizações independentes. Livro de fatos: docs/editorial/2026-11-05-ccxp-tickets.md. Python e Node conferiram os dias da semana. Não publicar estoque, preços ou programação específica sem apuração própria. Apoio de IA e ausência de revisão humana continuam divulgados. Link interno ao câmbio diário como ferramenta separada de planejamento, sem cotação de checkout.

## O que evitar

O comunicado de junho tem preços de lote antigo; não usá-los como preços atuais. A página da bilheteria vinculada mostrou somente uma estrutura vazia, sem prova de estoque. Não confundir benefício com resgate concluído, nem presumir que Thunder Pass ou Camarote substituem a entrada no festival. O domínio exclusivo Vercel foi lido no navegador autenticado; somente o alias público foi usado na prova anônima do marcador.

## Opções em aberto

Futebol BL1 e hóquei DEL ficaram indisponíveis na amostra operacional; causa ainda não apurada e horários de nova tentativa registrados em [[release-status]]. Exigem investigação separada da pauta. NBA real, nome e domínio permanecem dependentes do dono. Esta rodada não alterou provedores, infraestrutura ou frequência das rotinas.

## Próximo passo e prompt de retomada

1. Sincronize o cérebro, confira Git e leia docs/EDITORIAL.md; preserve qualquer tarefa em andamento.
2. Execute npm run editorial:research nos seis mercados e compare a pergunta com os 52 artigos, incluindo o guia da CCXP.
3. Publique no máximo uma pauta nova com fontes primárias suficientes; pule quando faltar apuração. Confirme ambos os jobs, SHA exato, Production Ready e páginas públicas.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Seleção e apuração.
- [[release-status]] - Validação e publicação.
