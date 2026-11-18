---
tipo: sessao
projeto: global-live-data
resumo: "PR #87: guia Grand Slam de dardos PT/EN/ES publicado e verificado."
tags: [global-live-data, sessao, editorial, darts, release]
atualizado: "2026-11-18"
data: "2026-11-18"
ia: codex
maquina: macos
---

# Grand Slam de dardos: oitavas e sessões

## Objetivo e estado
Rodada editorial das 06:33 UTC concluída pela PR #87. Main/origin limpas 3b354e5e61e1fd33e7aa6d0750006ebc8a3cd9ba; árvore idêntica ao head revisado. Ambos jobs PR/main, Ready/Production/SHA e páginas PT/EN/ES verificados. Recibo durável em [[release-status]].

## Decisões e limites
Seis mercados pesquisados uma vez, saída 0; pauta GB grand slam of darts last 16. Quatro primárias PDC renderizadas, dez conversões independentes; 65 artigos no catálogo. Guia original distingue pontos/legs, melhor de 19/primeiro a dez e horário de sessão. Exemplo fictício explícito, sem resultados ou horários individuais inventados. Darts é só filtro editorial. [[editorial-publishing]].

## Validação e opções em aberto
Check final com 101 unidades/lint/tipos/build/HTTP, 11 importações, 37 Chromium, seis jornadas locais e três públicas passaram; espanhol sem JavaScript. Duas capturas públicas inspecionadas. Nove feeds ready na auditoria pontual de sete requisições. Safari nativo, WebKit e carga não repetidos; sem revisão humana. [[validation-workflow]].

Sete JSON históricos preservados; TSE/AP segue bloqueado pela captura anterior, sem repetir refresh nesta edição. Domínio, piloto de nomes e NBA preparada/desativada continuam nas frentes existentes; nenhuma alteração de escopo/cadência/contas/custos.

## O que evitar
Não confundir HTML shell PDC/HTTP 200 com fonte lida. O mapa tipado de ícones exige nova entrada ao criar filtro. Selector de label exato falhou só no harness. Smooth-scroll pode produzir captura antes do destino. MCP Vercel 403: painel autenticado comprovou Ready/SHA sem ampliar acesso. Não declarar navegação de Chrome nativo quando hotkey não muda o URL.

## Próximo passo concreto
Na próxima rodada, sincronizar cérebro, verificar main limpa, ler AGENTS/docs/EDITORIAL, executar editorial:research sob Node 24 e comparar 65 artigos. Até uma pauta suficientemente apurada; pode pular. Não repetir datas de captura por conveniência nem enfraquecer guard TSE/AP. Manutenção lint/dev documentada permanece separada.

## Prompt inicial
1. Sincronize cérebro; leia estado, esta sessão e as regras editoriais; confira Git real.
2. Pesquise seis mercados, compare 65 artigos e selecione no máximo uma pauta verificável.
3. Complete testes/QA/PR/dois jobs/Ready/commit/páginas antes de comunicar publicação.
4. Preserve dados históricos e cadência; salve e sincronize apenas resultado significativo.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Cronologia.
- [[release-status]] - Recibo da publicação.
- [[editorial-publishing]] - Apuração e seleção.
- [[validation-workflow]] - Testes e limites.
