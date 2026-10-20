---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Conector, browser, formulario e deploy sao estados independentes."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-20"
---

# Acesso e publicacao Vercel

Historico: conector nao lista times/retorna 403, enquanto browser local autenticado acessou o time pretendido. GitHub Confirm access foi concluido; instalacao ja permitia todos os repositorios, sem ampliacao de permissoes nesta tarefa.

Nesta sessao somente conector teams vazio foi reconfirmado. Nao solicitar autenticacao novamente sem nova evidencia; nao copiar credenciais do browser para CLI.

Formulario preparado nao salva env nem comprova deploy. docs/DEPLOYMENT.md registra que a primeira importacao pode ser Production; revalidar a documentacao atual e o alvo ao retomar. Nao chamar primeira publicacao de preview com base apenas no nome do comando.

## Evidencia de 20 outubro 2026

Conector get_deployment com scope michael-eng-ais-projects retornou 403. Fallback oficial via CLI 64.7.0 `project inspect global-live-data --scope michael-eng-ais-projects --non-interactive` tambem negou acesso. IAB redirecionou o dashboard a login; a extensao Chrome usada anteriormente nao estava disponivel. Nao foram criadas credenciais nem alteradas permissoes ou contas.

A API GitHub autenticada continua acessivel e fornece o SHA exato, status Vercel e registro deployment/Production/success. O HTML publico fornece data-dpl-id e confirma a versao servida. Registrar essa evidencia separadamente: o campo Ready da API/painel nao foi observado diretamente nesta rodada. O recibo da PR22 e a pendencia ficam em [[release-status]]. Evitar tentativas repetidas identicas, copiar credenciais entre ferramentas ou redesplegar para sanar uma lacuna de acesso.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
