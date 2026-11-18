---
tipo: sessao
projeto: global-live-data
resumo: "PR #89: guia de snooker PT/EN/ES publicado e verificado."
tags: [global-live-data, sessao, editorial, snooker, release]
atualizado: "2026-11-18"
data: "2026-11-18"
ia: codex
maquina: macos
---

# Snooker: frames, pontos e breaks

## Objetivo e estado
Rodada editorial 18:33 UTC concluída pela PR #89. Main/origin limpas 0bc539352a6da3c106210d8c014d9e105dc1d19c; árvore idêntica ao head aprovado. Ambos jobs PR/main, Production Ready/SHA e páginas EN/PT/ES verificados. [[release-status]].

## Decisões e limites
Seis mercados pesquisados uma vez; GB snooker selecionado. Quatro primárias WST/WPBSA e aritmética fictícia verificada independentemente em Python/Node. Catálogo com 67 artigos. Snooker é somente filtro de leitura. Ledger docs/editorial/2026-11-18-snooker-frames.md; [[editorial-publishing]].

## Validação e opções abertas
101 unidades/lint/tipos/build/HTTP, 11 importações, 37 Chromium, seis jornadas locais/três públicas e espanhol sem JavaScript passaram. Capturas mobile/desktop inspecionadas; nove feeds ready em auditoria pontual. WebKit, Safari nativo, carga e revisão humana não repetidos; [[validation-workflow]].

Sete JSON históricos preservados; TSE/AP bloqueado às 18:28 UTC, sem refresh editorial. Domínio, teste gratuito de nomes e NBA preparada/desativada mantidos; nenhum gasto ou alteração de escopo/cadência.

## O que evitar
Extrator web deixou corpos WST vazios; HTML primário foi lido via curl/TLS validado. Não inferir causas da busca nem resultados atuais. Regulamento 2024 foi confirmado pelo link oficial atual, não rebatizado como edição 2026. Barra Chrome pode mudar sem navegar; conferir URL do conteúdo. MCP 403 foi contornado por leitura do painel já autenticado.

## Próximo passo concreto
Sincronizar cérebro, verificar main limpa, ler AGENTS/docs/EDITORIAL e executar editorial:research com Node 24. Comparar 67 artigos; escolher até uma pauta verificável ou pular. Preservar gates TSE/AP e tratar dependências em manutenção separada conforme docs/DEPENDENCIES.md.

## Prompt inicial
1. Sincronize cérebro, leia estado/esta sessão e confira Git real.
2. Pesquise mercados e compare 67 artigos, selecionando no máximo uma pauta bem apurada.
3. Complete testes, leitura, PR/dois jobs e Ready/SHA/público antes de comunicar publicação.
4. Preserve dados/cadência e salve/sincronize o resultado significativo.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Cronologia.
- [[release-status]] - Recibo.
- [[editorial-publishing]] - Apuração.
- [[validation-workflow]] - Testes e limites.
