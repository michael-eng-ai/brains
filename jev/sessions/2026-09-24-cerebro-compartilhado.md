---
tipo: sessao
projeto: jev
resumo: Segundo cerebro compartilhado implementado e testado
tags: [jev, sessao]
atualizado: 2026-09-24
---

# Cerebro compartilhado

ia: codex

## Objetivo
Testar duas LLMs e Jev lendo e escrevendo conhecimento centralizado.

## Estado
Projeto sem Git. Vinte testes passaram. Qwen e Gemma executados no navegador com contexto identico, propostas persistidas, incorporacao e exportacao verificadas. Jev real pendente de chave. Servidor do novo laboratorio na porta 8766; pode precisar ser reiniciado na proxima sessao.

## Decisoes
SQLite transacional guarda notas, revisoes, propostas e rodadas no laboratorio. Cerebro operacional Markdown continua separado; nao existe sincronizacao automatica. LLMs em sequencia com descarregamento para reduzir memoria. Jev participa como avaliador estruturado. Escrita das IAs cria propostas; incorporacao explicita evita contaminar conhecimento automaticamente.

## Limites
Busca lexical FTS5, nao semantica. Sem MCP externo. Nao confundir teste de contrato Jev com chamada real. Nao afirmar qualidade factual das respostas a partir deste teste funcional.

## Proximo passo
Configurar TYPESAFE_API_KEY localmente e testar Jev real com notas de exemplo. Avaliar depois importacao revisada do cerebro Markdown e acesso MCP.

## Prompt inicial
1. Leia README.md e brain_engine.py.
2. Inicie python3 server.py --port 8766 se necessario.
3. Abra /brain, confira provedores e execute rodada com Jev somente se a chave estiver configurada.

## Conexoes
- [[index]]: mapa.
- [[current]]: estado.
- [[jev-lab]]: implementacao.
- [[historico]]: continuidade.
