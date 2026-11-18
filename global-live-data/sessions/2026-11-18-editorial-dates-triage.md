---
tipo: sessao
projeto: global-live-data
resumo: "Seis mercados pesquisados; pautas com datas divergentes adiadas, sem release."
tags: [global-live-data, sessao, editorial, apuracao]
atualizado: "2026-11-18"
data: "2026-11-18"
ia: codex
maquina: macos
---

# Triagem editorial sem publicação

## Objetivo e estado
Rodada 00:31 UTC: uma pesquisa em seis mercados, todos ready, saída 0. Comparados 64 artigos. Main/origin limpas d49b9daf3e8c612f30ca7d01a110bd1ce683efb7; nenhum arquivo do produto alterado. Última publicação continua PR86, guia Las Vegas e patch Next.

## Decisão e evidências
Adiar nova pauta. A busca britânica doomsday release date levou a duas referências oficiais UK com 16/18 dezembro sem reconciliação. Leads NBA de jogos não comprovam interesse específico na Copa ou resultados; trechos do calendário explorado divergem. Fontes, consultas e limites em [[editorial-publishing]]. Não produzir texto apenas para preencher a rodada.

## Validação e limites
Pesquisa real em Node 24.22.1; arquivo local /tmp/gld-editorial-20261118-0031-research.json, recibo -exit.json. Git conferido limpo e sincronizado. Sem edição, não repetir testes, UI, CI ou deploy; não atribuir Ready novo à produção. Bloqueio TSE/AP e dados válidos seguem preservados em [[current]].

## O que evitar
Não escolher silenciosamente uma das datas UK, inferir causa do conflito, inventar estreia em streaming, usar Trends como fonte de resultado ou chamar consulta a mirror NBA de prova suficiente da edição atual. Não criar artigo duplicado nem alterar frequência.

## Próximo passo
Na próxima rodada prevista, sincronizar cérebro/Git, usar Node 24 e executar editorial:research uma vez. Comparar 64 artigos e escolher até uma pauta útil com fontes primárias consistentes, ou pular. Eventual retomada de Doomsday exige reconciliar a data do território antes da escrita.

## Prompt inicial
1. Sincronize cérebro e confira árvore Git e main; leia AGENTS.md e docs/EDITORIAL.md.
2. Pesquise os seis mercados suportados e compare os 64 artigos.
3. Publique no máximo uma pauta verificada; cumpra testes, QA, PR, ambos CI, SHA/Ready e páginas públicas.
4. Preserve TSE, escopo e cadência; salve e sincronize resultado significativo, ficando em silêncio sem novidade acionável.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado preservado.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Fontes e decisão de adiar.
