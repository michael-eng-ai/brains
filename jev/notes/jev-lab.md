---
tipo: conceito
projeto: jev
resumo: Laboratorio Python sem dependencias com Jev e Ollama
tags: [jev, conceito]
atualizado: 2026-09-24
---

# Jev Lab

Confirmado: projeto em ~/Documents/GitHub/jev. Nao havia Git ou codigo antes da pesquisa. README.md contem comandos e limites. server.py serve somente loopback; jev_lab.py implementa triagem, cache limitado e Ollama. Interface em web/.

Demonstracao usa regras e valores ilustrativos. Modo Jev usa API TypeSafe. Ollama gera rascunho local para casos acima do limiar; nada e enviado a clientes. Falha Jev nunca vira simulacao silenciosa. Cache de 5 minutos, 128 entradas, somente memoria.

Fontes e pesquisa: docs/pesquisa-jev.md. Conceito e verificacao em docs/design/.

Segundo cerebro em /brain: brain_store.py persiste SQLite em data/brain/brain.sqlite3; brain_engine.py envia mesmo snapshot para Qwen e Gemma em sequencia. Jev recebe as mesmas notas e contribuicoes, se habilitado. FTS5 limita a 12 candidatos e 15.000 caracteres. Propostas pendentes so viram notas por incorporacao explicita; fontes alteradas bloqueiam propostas antigas. Banco nao sincroniza automaticamente com ~/brains/jev. README.md documenta backup e exportacao.

Confirmado: teste real Qwen 15,52s e Gemma 23,38s; rodada original preservada apos incorporar proposta, proximo contexto incluiu duas notas. Interface desktop e celular inspecionada. Vinte testes passaram.

## Conexoes
- [[index]]: mapa.
- [[current]]: estado.
- [[environment]]: provedores.
- [[2026-09-24-laboratorio]]: verificacao.
- [[2026-09-24-cerebro-compartilhado]]: segundo cerebro compartilhado.
