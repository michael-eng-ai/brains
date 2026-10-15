# Notes (notas atomicas)

Um conceito por arquivo: uma tabela, uma DAG, um componente, um termo de dominio, uma pessoa
ou papel, um padrao. Nome do arquivo em kebab-case sem acento (`pipeline-controladoria.md`,
`schema-clean.md`). Sao os nos do grafo: decisoes, traps, runbooks e sessoes linkam para elas.

Regra: uma nota nova sai com pelo menos 2 links de saida e 1 link de entrada (backlink
reciproco em `## Conexoes` da nota destino). Sem conexao, procure de novo com sinonimos antes
de aceitar a nota isolada.

Template:

```markdown
---
tipo: nota
projeto: <id>
resumo: <uma linha: o que e e por que importa>
tags: [<id>, <dominio>, <tipo-de-coisa>]
atualizado: AAAA-MM-DD
fontes: [<caminho ou URL>]
---

# <Titulo>

<explicacao em 3 a 10 linhas, com [[links]] para conceitos relacionados no texto>

## Fatos confirmados
- <fato> (evidencia: <arquivo, commit, PR ou fonte>)

## Hipoteses e pendencias
- <o que ainda nao foi verificado>

## Conexoes
- [[index]]
- [[<nota-relacionada>]] - <por que se relaciona>
```
