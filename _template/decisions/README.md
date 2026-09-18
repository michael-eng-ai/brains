# Decisoes

Uma decisao por arquivo, nome `AAAA-MM-DD-<slug>.md`. Nunca apagar: uma decisao substituida
recebe `status: substituida` e um link para a nova, que linka de volta. Toda decisao linka para
as notas dos componentes que afeta e recebe o link de volta.

Template:

```markdown
---
tipo: decisao
projeto: <id>
resumo: <a decisao em uma linha>
tags: [<id>, decisao, <componente>]
data: AAAA-MM-DD
status: aprovada | proposta | substituida
decidido_por: <nome ou papel>
---

# <Titulo>

## Contexto
## Decisao
## Motivo
## Alternativas rejeitadas
## Consequencias
## Evidencia
<!-- PR, commit, mensagem, reuniao, transcricao -->

## Conexoes
- [[index]]
- [[<nota-afetada>]] - o que muda nela
- [[<decisao-anterior>]] - substitui ou complementa
```
