---
tipo: sessao
projeto: global-live-data
resumo: "Guia dos elencos e Player Pool da Unrivaled publicado em três idiomas."
tags: [global-live-data, sessao, editorial, release]
atualizado: "2026-11-05"
data: "2026-11-05"
ia: codex
maquina: macos
---

# Elencos e Player Pool da Unrivaled

A pesquisa editorial retornou dez termos em cada um dos seis mercados. A busca americana por Unrivaled motivou um guia sobre elencos, grupo de reposição e divulgação dos confrontos. As três páginas consultadas são da própria liga; isso não é corroboração independente. O link interno abre o guia de súmula da NBA, com rótulo explícito. Livro de fatos: docs/editorial/2026-11-05-unrivaled-rosters.md.

A PR71 foi integrada à main em a85c8dd682919f3bd2f4cf15096af16ed3f611e9. CI, Production Ready e as três páginas públicas foram conferidos. Evidências e resultado da amostra operacional separada em [[release-status]]. O catálogo chegou a 49 artigos, quatro em Basquete. O primeiro typecheck identificou um destino interno não registrado; a rota específica do guia NBA foi adicionada ao tipo permitido. Todos os gates foram repetidos depois da correção. Não há novo provedor, banco de elencos ou ativação da NBA.

## Próxima rodada

1. Sincronize o cérebro, confira o estado Git e leia docs/EDITORIAL.md.
2. Rode npm run editorial:research nos mercados suportados e compare a pergunta com o catálogo de 49 artigos, incluindo a Unrivaled.
3. Se houver uma pauta nova verificável, documente duas fontes primárias e valide as três versões antes de publicar. Caso contrário, pule a rodada.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia editorial.
- [[editorial-publishing]] - Apuração e escopo.
- [[release-status]] - CI, deploy e verificação pública.
