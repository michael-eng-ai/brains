---
tipo: sessao
projeto: jev
resumo: Criacao do laboratorio pratico de Jev
tags: [jev, sessao]
atualizado: 2026-09-24
---

# Sessao 2026-09-24

ia: codex

## Objetivo
Criar projeto pratico para testar Jev junto a outras LLMs.

## Estado
Pasta sem Git. Laboratorio implementado e documentado. Onze testes passaram. Revisao visual desktop/celular e fluxo no navegador integrado concluidos. Qwen local respondeu em cerca de 4,2s; chamada Jev real pendente por falta de chave. Exportacao tem alternativa copiavel porque download Blob nao foi observavel no navegador integrado.

## Decisoes
Python padrao e interface nativa pequena para iniciar sem instalacao. Ollama ja instalado permite testar geracao sem outra API paga. Jev real depende de credencial local. Proposta de aplicacao escolhida para demonstração: triagem de atendimento.

## Evitar
Nao apresentar regras simuladas como inferencia Jev. Nao tratar confianca como acuracia. Nao chamar API paga automaticamente. Nao afirmar economia sem benchmark.

## Proximo passo
Ler README.md, iniciar python3 server.py, configurar Jev e avaliar mensagens independentes.

## Prompt inicial
1. Leia README.md e docs/pesquisa-jev.md no projeto.
2. Verifique somente presenca da chave, sem exibir valor.
3. Compare Jev em uma amostra rotulada, sem prometer acuracia dos exemplos.

## Conexoes
- [[index]]: mapa.
- [[current]]: estado.
- [[jev-lab]]: arquitetura.
- [[environment]]: configuracao.
- [[historico]]: linha do tempo.
