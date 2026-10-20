---
tipo: "ambiente"
projeto: "global-live-data"
resumo: "Configuracao por nomes e comandos verificados, sem valores privados."
tags: ["global-live-data", "ambiente"]
atualizado: "2026-10-20"
---

# Ambiente

Clone local: /Users/michaelsantos/Documents/GitHub/global-live-data

Configuracao real apenas em .env.local ignorado, ou nas configuracoes autorizadas do host. .env.example existe com valores vazios. Nao executar copia destrutiva ao retomar: usar `[ -e .env.local ] || cp .env.example .env.local`.

| Variavel | Uso | Tipo/origem | Obrigatoria |
| --- | --- | --- | --- |
| MET_USER_AGENT | lib/providers/service.ts | Identificador publico real fornecido/autorizado pelo operador; server-only | Apenas para clima |
| GLD_PUBLIC_CONTACT_EMAIL | app/[lang]/privacy/page.tsx | Contato autorizado para exibicao publica, configurado separadamente | Apenas para secao de contato |
| GLD_LIVE_SMOKE | scripts/smoke.mjs | Opcao do mantenedor; deixar 0/unset em verificacao rotineira | Nao |
| SMOKE_PORT | scripts/smoke.mjs | Porta escolhida pelo mantenedor, padrao 3100 | Nao |
| PLAYWRIGHT_CHROMIUM_EXECUTABLE | playwright.config.ts | Caminho de browser compativel, fornecido pelo mantenedor | Nao |
| NEXT_TELEMETRY_DISABLED | CI, Playwright e smoke | Opcao de tooling; 1 nas verificacoes | Nao para a aplicacao |
| NODE_ENV | next.config.ts | Modo atribuido pelo Next; CSP de desenvolvimento distinta | Gerenciada pelo framework |

Verificados nesta sessao: Node.js 24.22.0, npm 11.21.1, npm run check e npm run test:e2e. Runtime selecionado com `npm exec --yes --package=node@24.22.0 --package=npm@11.21.1 --call 'npm run check'`; trocar somente o comando final para test:e2e. Esse wrapper baixa/reusa tooling em cache e nao altera package-lock.json.

npm ci --ignore-scripts esta documentado e passou na sessao anterior, mas nao foi repetido nesta continuacao. Browser compatível instalado com o CLI Playwright do projeto. Sem builds simultaneos na mesma .next.

Para conectar outra maquina apos clonar brains: `~/brains/link.sh global-live-data /caminho/do/clone/global-live-data`.

Vercel: projeto global-live-data no time Pro existente michael-eng-ais-projects; ambas as variaveis de operador foram submetidas em Production/Preview. MET_USER_AGENT marcado sensivel. URL publica em [[release-status]].

## Previa local de categorias

| Variavel | Uso | Tipo/origem | Obrigatoria |
| --- | --- | --- | --- |
| GLD_ENABLE_LAB | app/[lang]/lab/page.tsx, lib/lab/schema.ts | Opt-in escolhido pelo mantenedor para revisao local; exemplo vazio | Apenas para a previa |
| VERCEL | Mesma rota/gate | Indicador fornecido pelo host; sua presenca bloqueia a previa | Gerenciada pelo host |

Sampler opcional em Python 3 standard library; snapshot no diretorio temporario do SO, fora do repositorio. TLS verificado com CA do sistema quando disponivel. Preview verificado com build/start, Node 24.22.0 e porta loopback 3101. Parar preview antes de rebuild/test:e2e para nao misturar outputs .next.

O mesmo GLD_ENABLE_LAB agora protege app/api/lab/data/route.ts, alem da pagina. VERCEL bloqueia ambos. OpenLigaDB e Frankfurter nao exigem novas variaveis/chaves neste piloto. Nenhum valor novo foi escrito em .env.local. O servidor da previa foi reiniciado com Node 24 em loopback 3101, e os providers de natureza permaneceram fora dos probes do piloto.

## Historico

Nenhuma variavel nova. npm run history:build roda com Node 24 antes de dev/build; node:sqlite integrado. Python 3.11+ apenas para importador TSE offline e seus tres testes; CI/app nao dependem de Python. Procedimentos em docs/HISTORY.md do repo.

## NBA preparada - 20 outubro 2026

| Variavel | Uso | Tipo e origem | Obrigatoria |
| --- | --- | --- | --- |
| BALLDONTLIE_API_KEY | lib/americas/index.ts e rota basketball | Chave privada da conta gratuita do proprietario; obter em app.balldontlie.io; guardar apenas em .env.local ignorado ou hosting autorizado | Apenas para ativar NBA; nao configurada |

Exemplo vazio adicionado. Nenhuma alteracao de valores, .env.local ou configuracao Vercel. Sem chave: pagina 404 e zero consultas. Smoke e Playwright esvaziam a variavel para impedir I/O; opt-in de laboratorio exclusivamente local.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[trap-env-preservation]] - Copia de exemplo pode apagar configuracao local ja autorizada.
- [[trap-runtime-selection]] - Diretorio node@24 nao prova que o executavel roda Node 24.
- [[verify-release]] - Procedimento local e remoto para validar a revisao exata.

- [[release-status]] - Publicacao e configuracao hospedada verificadas.
- [[category-research]] - Contexto e evidencia da revisao local.
- [[football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.

- [[brasileirao-nba-feeds]] - Integracao preparada.

- [[2026-10-20-brasileirao-release]] - Handoff.
