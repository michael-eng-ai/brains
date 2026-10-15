---
tipo: "estado"
projeto: "global-live-data"
resumo: "Mobile publicado validado; previa global local pronta, aguardando avaliacao antes de publicar."
tags: ["global-live-data", "estado"]
atualizado: "2026-10-15"
---

# Estado atual

Ultimo handoff: [[2026-10-15-mobile-category-lab]].

- Producao: https://global-live-data.vercel.app, entrega b6bbd5f. PR #3/publicacao inicial concluidas; evidencias em [[release-status]]. Main publica automaticamente.
- Trabalho novo local: codex/mobile-category-lab, commit 5726aadfa21f46528471068d317a184ee8a3673f; arvore limpa, sem push/PR/deploy.
- Mobile hospedado passou em emulacao 320/390/430px e EN/PT/ES. Nenhuma correcao de producao foi necessaria nos fluxos exercitados; limitacoes em [[validation-workflow]].
- Previa local: http://127.0.0.1:3101/pt/lab (servidor iniciado; verificar continuidade). Categorias, tendencias por pais, cambio diario e F1 historica. Nao ha novos feeds ao vivo em producao.
- Lint/tipos/33 unidades/build/HTTP e quatro e2e passaram; gates 404 e falta de amostra tambem. Dados capturados ficam fora do repositorio, em arquivo temporario.
- Proximo passo: avaliacao do proprietario, que escolheu publico global desde o inicio e exigiu revisao antes de publicar. Futebol/cambio sao propostas de prioridade, ainda nao aprovadas.
- Pendencias anteriores de identidade legal/retencao, trafego/cache/custos e cinco achados altos dev-only nao foram resolvidas por este experimento. Auditoria de dependencias nao repetida nesta etapa.
- Nenhuma conta, assinatura, chave ou contato novo criado ou copiado; memoria contem somente nomes de variaveis e caminhos.

## Conexoes
- [[index]] - Mapa de conhecimento.
- [[release-status]] - Evidencias da producao existente.
- [[2026-10-15-mobile-category-lab]] - Handoff mais recente.
- [[category-research]] - Previa e criterios de escolha.
- [[2026-10-15-global-review-before-release]] - Limite de publicacao.
- [[validation-workflow]] - Checks e limites.
