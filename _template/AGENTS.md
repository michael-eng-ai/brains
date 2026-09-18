---
tipo: regras
projeto: {{PROJECT_ID}}
resumo: Entrada canonica do projeto para qualquer IA. Regras, comandos verificados e ponteiros.
tags: [{{PROJECT_ID}}, regras]
atualizado: {{DATE}}
---

# {{PROJECT_ID}}

Entrada canonica do projeto para qualquer IA. Manter abaixo de 200 linhas. Detalhes vivem nos
outros arquivos desta pasta; aqui ficam so as regras e ponteiros.

## Leia antes de qualquer tarefa
- [[index]]: mapa do conhecimento (MOC).
- [[current]]: foco atual e proximos passos.
- `sessions/`: o arquivo mais recente e o handoff da ultima sessao.

## O que e este projeto
<!-- 3 a 5 linhas: objetivo, cliente/empresa, stack, repositorio(s) e onde ficam localmente -->

## Comandos verificados
<!-- build, test, lint, deploy. So comandos que foram executados com sucesso. -->

## Convencoes que diferem do padrao
<!-- nomes de branch, formato de PR, estilo, idioma de codigo e commits -->

## Regras "nunca"
<!-- o que nao fazer neste projeto, com o motivo em uma linha e link para o trap ou decisao -->

## Onde estao os segredos
- Todos os segredos e tokens do projeto vivem no `.env` na raiz do repositorio (nunca commitado).
- Nomes das variaveis, onde sao usadas e onde obter cada valor: tabela em [[environment]].
- Copie `.env.example` para `.env` em maquina nova. Nunca escreva valores neste cerebro.

## Como navegar o grafo
- `[[nome]]` aponta para o arquivo `nome.md` em qualquer subpasta deste cerebro. Localize com busca por nome.
- Cada nota tem `## Conexoes` com links de ida; o link de volta esta na nota destino.
- `graph.sh {{PROJECT_ID}} catalog` gera [[catalog]] com uma linha por nota (tipo, resumo, tags): use para escolher o que ler.

## Conexoes
- [[index]]
- [[current]]
