---
tipo: sessao
projeto: global-live-data
resumo: "PR #88: guia GTA VI PT/EN/ES publicado e verificado."
tags: [global-live-data, sessao, editorial, gaming, release]
atualizado: "2026-11-18"
data: "2026-11-18"
ia: codex
maquina: macos
---

# GTA VI: caixa, download e liberação

## Objetivo e estado
Rodada editorial 12:30 UTC concluída pela PR #88. Main/origin limpas 91f7f77146c609591466798194fb75330eb9a422; árvore idêntica ao head aprovado. Dois jobs PR/main, Production Ready/SHA e páginas PT/EN/ES verificados. [[release-status]].

## Decisões e limites
Seis mercados pesquisados uma vez; pauta GB gta 6 xbox series s. Cinco primárias Rockstar/PlayStation e três conversões independentes. Catálogo com 66 artigos. Distinção prática entre embalagem com código, arquivos e contador; exemplo de fusos não é tabela de disponibilidade por conta. Gaming é somente filtro editorial. Ledger em docs/editorial/2026-11-18-gta-vi-preload.md; [[editorial-publishing]].

## Validação e opções abertas
101 unidades/lint/tipos/build/HTTP, 11 importações, 37 Chromium, seis jornadas locais e três públicas passaram; espanhol sem JavaScript. Corpo/disclosure mobile e desktop inspecionados. Nove feeds ready em auditoria pontual. WebKit, Safari nativo, carga e revisão humana não repetidos; [[validation-workflow]].

Sete JSON históricos preservados; TSE/AP bloqueado na execução anterior das 12:24 UTC, sem refresh editorial. Domínio, piloto de nomes e NBA preparada/desativada seguem existentes; nenhuma alteração de escopo/cadência/contas/custos.

## O que evitar
Não usar snippet antigo de pré-download: corpo canônico divergia. Não inferir acesso por conta da data anunciada, nem fornecer tabela regional de loja a partir de conversão de fusos. MCP Vercel 403 foi resolvido por leitura do painel já autenticado, sem novos acessos. Usar aba do deployment e confirmar mudança do URL após navegação.

## Próximo passo concreto
Na próxima rodada, sincronizar cérebro, verificar main limpa, ler AGENTS/docs/EDITORIAL e executar editorial:research com Node 24. Comparar 66 artigos e escolher até uma pauta com apuração suficiente; pular se necessário. Preservar gates TSE/AP e separar manutenção de dependências descrita em docs/DEPENDENCIES.md.

## Prompt inicial
1. Sincronize cérebro, leia estado/esta sessão e regras editoriais; confira Git real.
2. Pesquise seis mercados; compare 66 artigos e selecione no máximo uma pauta verificável.
3. Complete testes/QA/PR/dois jobs/Ready/commit/páginas antes de comunicar publicação.
4. Preserve dados e cadência; salve e sincronize o resultado significativo.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Cronologia.
- [[release-status]] - Recibo.
- [[editorial-publishing]] - Apuração.
- [[validation-workflow]] - Testes e limites.
