---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Pesquisa inicial de categorias e ponte para os feeds posteriormente publicados."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-16"
---

# Experimento de categorias globais

Implementado localmente no commit 5726aadfa21f46528471068d317a184ee8a3673f, branch codex/mobile-category-lab. Fonte principal: docs/CATEGORY-RESEARCH.md no repositorio; interface em app/[lang]/lab/page.tsx e components/category-lab.tsx. Sem push ou publicacao.

Estrutura proposta: explorar, tendencias por pais, esportes, mercados, eleicoes, cultura e natureza. EN/PT/ES e escolha de mercado sao dimensoes distintas. Nao ha criacao automatica de paginas para cada busca: associacao a evento, proveniencia, direitos e revisao devem preceder publicacao.

Pesquisa de 2026-10-15: cinco RSS Google Trends (US/BR/GB/ES/JP), quatro referencias diarias de cambio Frankfurter e tres sessoes historicas OpenF1 de 2025 foram capturadas com sucesso. Inicio da captura 22:02:04Z. Nao sao feeds continuos nem uma amostra representativa de demanda; nenhum nome de pessoa/topico individual foi copiado para o cerebro.

API-Football, AP Elections e Ticketmaster foram avaliadas pela documentacao oficial, sem chaves, contas ou probes autenticados. Google Trends API permanece uma opcao alpha com acesso solicitado; nao foi conectada. Coinbase nao foi consultada como feed porque seus direitos de redistribuicao exigem esclarecimento. Precos/limites e links oficiais ficam no documento do repositorio, sujeitos a nova verificacao antes de contratar.

Proposta de prioridade: avaliar futebol e cambio diario; depois cultura e eleicoes com validacao por jurisdicao. F1 historica demonstra interface, nao viabilidade de live comercial. Nao prometer visitas, receita ou atualizacao instantanea.

Previa local: http://127.0.0.1:3101/pt/lab enquanto o servidor estiver ativo. Opt-in por GLD_ENABLE_LAB; sempre 404 na Vercel; noindex; sem link na navegacao publica. scripts/sample-lab.py faz sete requests sequenciais com timeout e limite de resposta, sem polling; grava no diretorio temporario do SO, global-live-data-review/sample.json. lib/lab/load.ts le esse arquivo e normaliza no servidor. Nao colocar as amostras no Git nem usar fixtures como dados reais.

## Evolucao posterior

O proprietario escolheu futebol/cambio para teste real. A previa foi ampliada em b16718c com OpenLigaDB e Frankfurter; [[football-fx-pilot]] substitui as amostras antigas de FX/F1 como paineis ativos. A pesquisa acima continua historica. Futebol/cambio foram publicados na PR #4. A expansao Trends/TV da PR #5 foi autorizada e publicada posteriormente; [[trends-tv-discovery]] concentra a pesquisa e os limites atuais.

A PR #6 implementou fontes gratuitas comerciais para hoquei, xadrez e resultados britanicos; [[sports-election-feeds]] substitui o estado de pesquisa desses escopos. Brasil/TSE permanece ingestao futura em lote.

## Conexoes
- [[index]] - Mapa do projeto.
- [[2026-10-15-global-review-before-release]] - Autorizacao e limite de publicacao.
- [[project]] - Direcao e hipoteses de produto.
- [[environment]] - Variaveis e runtime da previa.
- [[validation-workflow]] - Evidencias de testes e limites de cobertura.
- [[2026-10-15-mobile-category-lab]] - Handoff do experimento.
- [[current]] - Contexto e evidencia da revisao local.
- [[project]] - Estado relacionado e evidencia de verificacao.
- [[football-fx-pilot]] - Contexto e evidencia do piloto real.
- [[trends-tv-discovery]] - Escopo e limites da nova descoberta.
- [[sports-election-feeds]] - Fontes de esportes e resultados eleitorais.
