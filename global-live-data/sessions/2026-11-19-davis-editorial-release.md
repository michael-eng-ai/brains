---
tipo: sessao
projeto: global-live-data
resumo: "PR #92: Copa Davis, confrontos e horários PT/EN/ES publicados."
tags: [global-live-data, sessao, editorial, tenis, release]
atualizado: "2026-11-19"
data: "2026-11-19"
ia: codex
maquina: macos
---

# Copa Davis: duplas decisivas e horários

## Objetivo e estado
Rodada 12:41 UTC publicada pela PR #92. Main/origin limpas adc25af6f2e7cfa0b68f7ea54b18a5565cee8951, árvore igual ao head aprovado. Dois jobs PR/main, Vercel Ready/Production/SHA e EN/PT/ES verificados; [[release-status]].

## Decisoes e limites
Uma pesquisa nos seis mercados, GB tennis; quatro primárias e 14 pares data/fuso verificados. Catálogo 70 artigos. Tênis/guia de placar existentes. Exemplo fictício distingue partidas, games e sets; horário mínimo convertido mantém não-antes-de e Tóquio no dia seguinte. [[editorial-publishing]].

LTA GMT contradiz organizador CET: calendário e FAQ do evento controlam horários. LTA só sustenta formato. Datas do explainer divergiram entre snippet e página; data editorial dessa fonte não afirmada. Sem resultado, escalação, previsão, imagem ou novo provider.

## Validacao e pendencias
101 unidades/lint/tipos/build/HTTP, 11 importações, 37 Chromium, seis jornadas locais/três públicas e espanhol sem JS passaram. Mobile/desktop inspecionados, sem erros ou overflow. WebKit/Safari/carga/revisão humana não repetidos; [[validation-workflow]].

Sete JSON e datas intactos; TSE/AP bloqueado às 12:33, ambos turnos/RO/2022 preservados. Domínio, piloto de nomes e NBA preparada/desativada continuam separados. Sem gasto ou alteração de cadência.

## O que evitar
Não transformar horário mínimo em início garantido, confronto em partida ou exemplo em resultado real. MCP Vercel 403: painel autenticado existente, sem ampliar acesso. Preferir aba vinculada por ID quando extensão estiver disponível, sem depender da janela nativa ativa.

## Proximo passo concreto
Sincronizar cérebro/main, conferir árvore, AGENTS/docs/EDITORIAL; Node 24 editorial:research uma vez. Comparar 70 artigos e escolher até uma pauta ou pular. Preservar gates TSE/AP; manutenção de dependências separada em docs/DEPENDENCIES.md.

## Prompt inicial
1. Sincronize cérebro e leia estado/esta sessão; confira Git real.
2. Pesquise tendências e compare 70 artigos; selecione até uma pauta apurada.
3. Teste, revise leitura, anexe PR e verifique dois jobs/Ready/SHA/público.
4. Preserve dados/cadência e salve/sincronize resultado significativo.

## Conexoes
- [[index]] - Mapa.
- [[current]] - Estado.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Apuração.
- [[release-status]] - Recibo.
- [[validation-workflow]] - Testes e limites.
