---
tipo: moc
projeto: {{PROJECT_ID}}
resumo: Mapa de conhecimento do projeto. Ponto de entrada para navegar o grafo.
tags: [{{PROJECT_ID}}, moc]
atualizado: {{DATE}}
---

# Mapa de conhecimento: {{PROJECT_ID}}

Este e o MOC (Map of Content) do projeto: todo arquivo do cerebro aparece linkado aqui e linka
de volta para `[[index]]` na secao `## Conexoes`. Comece por [[current]] e pelo handoff mais
recente em `sessions/`. O catalogo gerado por `graph.sh catalog` fica em [[catalog]].

## Fundamentos
- [[project]] - objetivo, escopo, pessoas, vocabulario
- [[architecture]] - componentes, fluxo de dados, ambientes
- [[environment]] - setup por sistema operacional, comandos verificados

## Estado
- [[current]] - foco atual, proximos passos, pendencias
- `sessions/` - handoffs; historico consolidado em [[historico]]

## Conceitos (notas atomicas em `notes/`)
<!-- um conceito por nota: tabela, DAG, componente, termo de dominio, pessoa/papel -->

## Decisoes (`decisions/`)
<!-- uma linha por decisao: [[AAAA-MM-DD-slug]] - resumo -->

## Armadilhas (`traps/`)
<!-- uma linha por trap: [[trap-slug]] - sintoma -->

## Procedimentos (`runbooks/`)
<!-- uma linha por runbook: [[verbo-objeto]] - quando usar -->

## Fontes (`sources/`)
<!-- uma linha por fonte: [[fonte-slug]] - origem -->

## Conexoes com outros projetos
<!-- [[outro-projeto/index]] quando houver dependencia real -->

## Conexoes
- [[AGENTS]] - regras de entrada para qualquer IA
