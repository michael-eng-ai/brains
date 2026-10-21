---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Conector, browser, formulario e deploy sao estados independentes."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-21"
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

## PR25 - mesma limitacao direta em 20 outubro, 19:09 UTC

Painel existente ainda em configuracao de autenticador; nenhuma interacao com a seguranca da conta. Uma consulta ao novo deployment dpl_2kX2U2pkr7PN2cqecHsv9xwheXy3 retornou 403 no scope existente. CLI anteriormente sem acesso nao foi repetida. GitHub Production/success, SHA e paginas anonimas foram conferidos separadamente. Nao marcar Ready como observado nem repetir pedido ja pendente ao proprietario. Apos acesso restabelecido, acrescentar recibos dos deployments existentes PR24/PR25. [[release-status]].

## PR26 - limite de acesso em 21 outubro, 01:07 UTC

Uma chamada get_deployment para o novo ID retornou 403 no scope existente. A inspecao limitada do Chrome nao encontrou o painel esperado no estado ativo; a sessao anterior tinha configuracao de autenticador pendente. CLI com falha de acesso conhecida nao repetida. GitHub Production/success, SHA e paginas anonimas confirmados separadamente, sem alegar leitura direta Ready. Nao repetir pedido anterior ao proprietario, CLI sem acesso ou configuracao de autenticacao. Completar recibos existentes PR24/25/26 quando o acesso autorizado voltar. [[release-status]].

## Resolucao em 21 outubro, rodada de 07:13 UTC

Chrome nativo tinha uma aba Vercel inativa; ao ativa-la, o painel voltou a carregar sem mudanca de autenticacao. Confirmados Ready/Production/main/SHA completos dos deployments PR24/25/26 e, apos merge, PR27. Recibos em [[release-status]], com atualizacao dos corpos das PRs anteriores. Pendencia encerrada; nenhuma nova credencial, permissao ou redeploy. Conector/CLI com falhas anteriores nao foram reexecutados nem declarados recuperados. Usar o painel autorizado existente enquanto disponivel.

## Rodada de 21 outubro, 13:17 UTC

Consulta MCP ao novo deployment Preview retornou403 no scope existente; CLI com falha conhecida nao repetida. Chrome abriu inicialmente no seletor de perfil e depois mostrou a janela existente com aba Vercel. A aba apresentou temporariamente convite de autenticador, mas depois carregou o painel sem nenhuma acao de seguranca. Nao clicar em configurar/pular autenticacao para QA. Navegacao direta ao novo deployment confirmou Preview Ready/SHA; Production foi conferida apos o merge. Nenhuma credencial copiada, permissao ou conta alterada. Conector continua sem acesso; painel e o canal verificado. [[release-status]].

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
- [[2026-10-20-spain-clock-editorial-release]] - Evidencia e pendencia da edicao de 20 outubro.
- [[2026-10-20-cricket-editorial-release]] - Handoff da oitava leitura e verificacao completa.

- [[2026-10-20-brasileirao-release]] - Conferência direta pendente da PR24.
- [[2026-10-20-league-pass-editorial-release]] - Handoff da nona leitura e limite de verificacao.
- [[2026-10-21-orionids-editorial-release]] - Handoff da decima leitura e verificacao.
- [[2026-10-21-uk-cpi-editorial-release]] - Handoff da decima primeira leitura e recibos.
- [[2026-10-21-wawrinka-editorial-release]] - Handoff da decima segunda leitura.
