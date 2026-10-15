---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Conector, browser, formulario e deploy sao estados independentes."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-15"
---

# Acesso e publicacao Vercel

Historico: conector nao lista times/retorna 403, enquanto browser local autenticado acessou o time pretendido. GitHub Confirm access foi concluido; instalacao ja permitia todos os repositorios, sem ampliacao de permissoes nesta tarefa.

Nesta sessao somente conector teams vazio foi reconfirmado. Nao solicitar autenticacao novamente sem nova evidencia; nao copiar credenciais do browser para CLI.

Formulario preparado nao salva env nem comprova deploy. docs/DEPLOYMENT.md registra que a primeira importacao pode ser Production; revalidar a documentacao atual e o alvo ao retomar. Nao chamar primeira publicacao de preview com base apenas no nome do comando.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
