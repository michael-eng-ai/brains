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

## Piloto real de futebol e cambio (2026-10-15)

Commit b16718c: npm run check passou lint sem warning, tipos, 43 unidades, build e smoke; quatro e2e Chromium passaram. Probes reais separados verificaram ambas as competicoes e taxas diarias. Gates pagina/API retornam 404 por padrao e na Vercel; cinco queries invalidas retornaram 400; respostas habilitadas noindex/no-store. Cache preservou timestamps em repeticao.

QA interativo 1280px desktop e 390/320px mobile, EN/PT/ES: filtro/competicao, resultados mais recentes, expandir 36 e recolher, bases USD/EUR/BRL, alvos USD/JPY, zero/campo vazio, conversao decimal e consulta manual. Sem erro de aplicacao, overlay ou overflow final. Arredondamento observado 279.92 foi corrigido e verificado como 279.93. Evidencias temporarias /tmp/global-live-data-review/pilot-fx-desktop.jpg e pilot-football-mobile.jpg. Nao houve teste de partida em andamento, dispositivo fisico, Safari ou carga.

## Portal publicado (2026-10-15)

Revisao final b51dda9, integrada como 84aab6e02c244818e76e0f3622af354855a37c0d: lint/tipos, 45 unidades, build, smoke com 18 paginas e sete e2e Chromium passaram. Os testes cobrem cards de dados, ativacao por teclado, paginas internas, fontes sem links externos nos resultados novos, lingua, cidade antiga redirecionada, zero/ausencia/falha e conversor decimal. Ajustes de locators e contagem de paineis apos a separacao foram corrigidos; nenhum check final falhou.

CI da PR 38825723767 e main 38825941909 passaram ambos os jobs. Probes reais locais e hospedados sao separados dos fixtures; resultados em [[release-status]]. Screenshot inicial portal-before.jpg e evidencias publicadas portal-published-desktop.jpg / portal-published-fx-mobile.jpg em /tmp/global-live-data-review, fora do Git. Nenhum screenshot de conta/contato ou corpo bruto de fornecedor foi incluido aqui.

Limites: Safari, dispositivos fisicos, partidas em andamento e carga distribuida nao testados; auditoria de dependencias nao repetida. Logs do navegador da aplicacao nao mostraram erro relevante. Conector Vercel retornou 403 no escopo correto; sem CLI instalada, dashboard autenticado confirmou o deploy. Nao repetir o mesmo conector sem mudanca de acesso.

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
- [[football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[2026-10-15-football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[2026-10-15-portal-release]] - Handoff da publicacao do portal.
