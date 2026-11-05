---
tipo: sessao
projeto: global-live-data
resumo: "Calendário e leitura dos innings de Zimbábue x Afeganistão publicados em três idiomas."
tags: [global-live-data, sessao, editorial, release, cricket]
atualizado: "2026-11-05"
data: "2026-11-05"
ia: codex
maquina: macos
---

# Zimbábue x Afeganistão: calendário e innings

## Objetivo e estado

Uma pauta selecionada após pesquisa dos seis mercados: calendário dos Tests em Sharjah, dias versus innings e exemplo fictício de vantagem/alvo. PR72 integrada à main 634ae7dc1323eb4dea5d35708fa702cdc3d52423; árvore limpa e igual a origin/main. CI da PR e main, Production Ready e páginas PT/EN/ES verificados; recibos em [[release-status]]. Catálogo com 50 artigos, seis em Críquete.

## Decisões e limites

Cinco fontes primárias: anúncio da ACB, confirmação do ICC de 4/11, guia de formatos, condições ICC de outubro de 2026 e leis MCC de 2026. Livro de fatos: docs/editorial/2026-11-05-zimbabwe-afghanistan-tests.md. Mantidos divulgação de apoio de IA, ausência de revisão humana e link ao guia interno de overs. Não há novo feed ou placar ao vivo.

## O que evitar

O match centre e trechos de busca não forneceram horário/estado atual confiável; esses dados foram excluídos. Não inferir partidas concluídas ou hora da sessão. O exemplo 300 + 180 versus 220 é fictício e não descreve as equipes reais. Um marcador divergente veio do login Vercel após redirecionamento do domínio exclusivo; o recibo prematuro foi corrigido. Confira URL final e identidade da página antes de comparar marcadores: [[trap-vercel-access]]. Nenhuma proteção foi alterada.

## Próximo passo e prompt de retomada

1. Sincronize o cérebro e confira Git; leia docs/EDITORIAL.md sem sobrescrever outra tarefa.
2. Execute npm run editorial:research nos seis mercados e compare a pergunta com o catálogo de 50 artigos, incluindo este guia de Test cricket.
3. Publique no máximo uma pauta nova com apuração suficiente; caso contrário, pule a rodada. Não repita esta pauta apenas por mudança de placar.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia editorial.
- [[editorial-publishing]] - Seleção e fontes.
- [[release-status]] - Validação e publicação.
- [[trap-vercel-access]] - Distinguir login e aplicação na verificação.
