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

## Resolucao em 20 outubro, rodada de 13:06 UTC

Chrome autenticado ficou novamente disponivel via CUA. O dashboard do deployment existente da PR22 mostrou diretamente Ready/Production/main e o SHA integral esperado; recibo complementar registrado na PR. A publicacao posterior PR23 foi verificada pelo mesmo canal. A pendencia Ready da PR22 esta encerrada. Conector/CLI nao foram reexecutados nem declarados recuperados. Usar a sessao autorizada existente, sem copiar credenciais entre ferramentas, criar contas, ampliar permissoes ou redesplegar para resolver uma lacuna de inspecao. [[release-status]].

## PR24 - 20 outubro, conferência direta pendente

O conector get_deployment voltou a retornar 403 para o deployment dpl_BmV1UgWagcktwAAhT7RYdUKNdHKj no scope existente. A extensão Chrome não estava disponível; o painel nativo ficou em uma etapa de configuração de autenticação. Nenhuma configuração de segurança foi alterada. Foi solicitado ao proprietário que avise quando o painel estiver disponível. Não repetir a mesma chamada nem copiar credenciais ou redesplegar.

A integração GitHub registrou deployment 7204773051 com SHA exato, environment Production e success; o alias público serviu o mesmo deployment ID e passou nos testes. Isso comprova a publicação, mas o campo Ready ainda não foi lido diretamente nesta rodada. Completar essa conferência quando houver acesso e acrescentar o recibo, sem nova publicação. [[2026-10-20-brasileirao-release]].

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
- [[2026-10-20-cricket-editorial-release]] - Handoff da oitava leitura e verificacao completa.

- [[2026-10-20-brasileirao-release]] - Conferência direta pendente da PR24.
