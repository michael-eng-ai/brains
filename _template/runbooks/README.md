# Runbooks

Um procedimento por arquivo, nome `<verbo>-<objeto>.md` (ex: `abrir-pr.md`, `deployar-bundle-dev.md`).
Cada runbook linka para as notas das ferramentas e componentes que usa e para os traps que evita.

Template:

```markdown
---
tipo: runbook
projeto: <id>
resumo: <quando usar, em uma linha>
tags: [<id>, runbook, <ferramenta>]
atualizado: AAAA-MM-DD
ultima_execucao_ok: AAAA-MM-DD
---

# <Verbo objeto>

## Quando usar
## Pre-requisitos
## Passos
1. `<comando exato>`
2.
## Como verificar que deu certo
## Se falhar

## Conexoes
- [[index]]
- [[<nota-da-ferramenta>]]
- [[trap-<slug>]] - trap que este procedimento evita
```
