---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Checks locais e CI sem confundir fixtures com dados reais."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Validacao

Confirmado nesta sessao sobre 1e93c1f: npm run check passou lint, typecheck, 30 testes unitarios, build e smoke HTTP de nove rotas. npm run test:e2e passou quatro casos Chromium sobre build de producao.

Cobertura browser: magnitude/cidade/idioma/voltar, viewport mobile 390x844, Escape/foco do picker, fontes/privacidade localizadas, vazio versus falha e limites da API. Desktop 1280x720. Screenshots sinteticos inspecionados; sem overlay de framework e com mapa/controles responsivos. Assercoes de erros de hidratacao/CSP passaram.

Operador/MET zerados, GLD_LIVE_SMOKE=0. Sem nova consulta real. Browser plugin ausente; suite Playwright existente usada com Chromium compativel. Warnings de terminal apenas de precedencia NO_COLOR/FORCE_COLOR.

CI em .github/workflows/ci.yml: dois jobs, Node 24, actions oficiais fixadas por SHA, permissoes de leitura, sem segredos ou deploy. Artefatos de fixtures retidos sete dias.

Nao executar builds paralelos na mesma .next; browser suite faz seu proprio build. Problemas de IPC do ambiente antigo sao historicos e nao bloquearam esta execucao local.

## Conexoes
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[trap-browser-production]] - Origin do HMR e restricoes antigas nao devem alterar CSP de producao.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.
