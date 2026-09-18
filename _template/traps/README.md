# Traps (erros conhecidos e armadilhas)

Um trap por arquivo, nome `trap-<slug>.md`. Cada trap e um no do grafo: linka para as notas
(tabelas, componentes, ferramentas) onde ele acontece e para o runbook que o evita, e recebe o
link de volta.

Template:

```markdown
---
tipo: trap
projeto: <id>
resumo: <sintoma em uma linha>
tags: [<id>, trap, <componente>]
atualizado: AAAA-MM-DD
registrado_em: AAAA-MM-DD
---

# Trap: <titulo curto>

## Sintoma
## Causa
## Solucao ou como evitar
## Evidencia
<!-- commit, PR, transcricao, mensagem -->

## Conexoes
- [[index]]
- [[<nota-do-componente>]] - onde acontece
- [[<runbook>]] - procedimento que evita
```
