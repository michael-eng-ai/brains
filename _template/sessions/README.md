# Sessions (handoff)

Um arquivo por sessao de trabalho, nome `AAAA-MM-DD-<slug>.md`, maximo 60 linhas. Otimizado
para o que a proxima sessao precisa para agir, nao para registrar historico: trabalho concluido
se recupera do git. A linha do tempo consolidada fica em `historico.md` (uma linha por sessao).

Cada sessao linka para as decisoes, traps e notas que tocou; elas recebem o link de volta.

Template:

```markdown
---
tipo: sessao
projeto: <id>
resumo: <o que a sessao fez, em uma linha>
tags: [<id>, sessao]
data: AAAA-MM-DD
ia: claude-code | codex | cursor | outro
maquina: <apelido da maquina>
---

# Sessao AAAA-MM-DD: <slug>

## Objetivo da sessao
## Estado
- Branch, commit, arvore limpa ou suja
## Decisoes tomadas e motivos
## Opcoes em aberto
## O que evitar (tentativas que falharam)
## Proximo passo concreto
<!-- caminhos e comandos -->

## Prompt inicial para a proxima sessao
<!-- uma tarefa so, autocontida, com passos numerados -->

## Conexoes
- [[current]]
- [[historico]]
- [[<decisao-ou-trap-tocado>]]
```
