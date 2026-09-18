---
tipo: ambiente
projeto: {{PROJECT_ID}}
resumo: Pre-requisitos, setup por sistema operacional, comandos verificados e ponteiros para segredos.
tags: [{{PROJECT_ID}}, ambiente]
atualizado: {{DATE}}
---

# Ambiente e setup: {{PROJECT_ID}}

## Pre-requisitos
<!-- ferramentas e versoes verificadas -->

## Setup por sistema operacional
### macOS / Linux
### Windows

## Comandos verificados
<!-- comando, o que faz, data em que foi executado com sucesso. Procedimentos longos viram runbook e sao linkados aqui. -->

## Variaveis de ambiente e segredos (apenas nomes, nunca valores)

Todos os segredos e tokens do projeto ficam no `.env` na raiz do repositorio, listado no
`.gitignore`. Um `.env.example` com os mesmos nomes e valores vazios pode ser commitado.
Esta tabela e a lista completa do que o `.env` precisa conter.

| Variavel | Usada em | Tipo | Onde obter o valor | Obrigatoria |
| --- | --- | --- | --- | --- |
<!-- NOME_DA_VARIAVEL | arquivo:linha ou componente | token, senha, host, flag | portal, cofre, pessoa/papel | sim/nao -->

Checklist em maquina nova: copiar `.env.example` para `.env`, preencher cada linha da tabela,
conferir que `.env` esta no `.gitignore` antes do primeiro commit.

## Como rodar testes

## Conexoes
- [[index]]
- [[architecture]]
