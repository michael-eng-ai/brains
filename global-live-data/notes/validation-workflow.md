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

## Validacao posterior: mobile publicado e lab (2026-10-15)

No commit local 5726aad, npm run check passou lint/tipos/33 unidades/build/HTTP smoke; quatro casos Chromium passaram novamente. Testes rotineiros offline, MET/contact vazios e GLD_LIVE_SMOKE=0. Sem dependencias alteradas.

Produção observada em Chromium: 320x740 EN, 390x844 PT, 430x932 ES, larguras reais conferidas no DOM. Dashboard, busca Lisboa/Tokyo, magnitude M6.0+ vazio e reset, idioma preservando cidade, Escape/foco e seis paginas fontes/privacidade a 320px passaram. Sem overflow horizontal ou erro de aplicacao; erros de extensao foram distinguidos. Nenhum defeito mobile exigiu patch. O override falho da sessao anterior nao e bloqueio atual.

Previa: categorias, pais JP preservado ao alternar categorias, idiomas, disclosures, layouts 320/390/1280px sem overflow/erros. HTTP confirmou 404 por padrao e na Vercel, 200/noindex nos tres idiomas habilitados e estado indisponivel sem snapshot. Capturas reais sao pesquisa manual separada dos fixtures.

Screenshots temporarios fora do Git: /tmp/global-live-data-review/mobile-production-430.jpg, preview-mobile-390.jpg e preview-desktop.jpg. Emulacao nao comprova dispositivos fisicos, Safari, teclado virtual ou rede lenta; estes nao foram testados.

## Conexoes
- [[2026-10-15-init]] - Inicializacao autorizada e nova verificacao local sem publicar.
- [[development-dependencies]] - Auditoria de dependencias e restricao de compatibilidade do lint.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[trap-browser-production]] - Origin do HMR e restricoes antigas nao devem alterar CSP de producao.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.
- [[2026-10-15-mobile-category-lab]] - Contexto e evidencia da revisao local.
- [[category-research]] - Contexto e evidencia da revisao local.
- [[current]] - Contexto e evidencia da revisao local.
- [[release-status]] - Estado relacionado e evidencia de verificacao.
