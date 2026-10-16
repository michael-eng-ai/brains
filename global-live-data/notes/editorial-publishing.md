---
tipo: conceito
projeto: global-live-data
resumo: "Artigos originais por tendencias e rotina editorial a cada seis horas."
tags: [global-live-data, conceito, editorial]
atualizado: "2026-10-16"
---

# Publicacao editorial

O proprietario pediu substituir a exibicao de Google Trends por artigos e escolheu publicacao automatica frequente. A home e /[lang]/trending exibem artigos com paginas internas, busca/filtro, indice, referencias de fontes, troca de idioma preservando artigo e leituras relacionadas. Primeira edicao: OBMEP 2026 e diferenca watch/warning nos EUA, com fontes oficiais consultadas e observacao RSS datada. A terceira leitura e tour-de-france-2027-route-reveal, selecionada do mercado ES; quatro fontes primarias, calendario masculino/feminino e horarios convertidos, sem rumores. O filtro Ciclismo e editorial, sem novo feed de resultados. Evidencia factual em docs/editorial/2026-10-16-tour-route.md no repositorio. Nao ha atribuicao ficticia de autoria humana; apoio de IA e ausencia de revisao humana ficam visiveis.

Implementacao e protocolo: docs/EDITORIAL.md no repositorio, lib/editorial/catalog.ts e lib/i18n.ts. Corpos renderizados no servidor, sem requisicao do visitante a Trends, metadata/canonical/hreflang/Article JSON-LD e sitemap/robots. O adapter RSS continua limitado para pesquisa: npm run editorial:research -- US BR GB, ate seis paises e dez entradas cada. Resultado e pauta, nao fato confirmado. Sem runtime LLM, CMS, banco, novas chaves ou endpoints de publicacao.

Automacao Codex `publicar-artigos-do-global-live-data`, heartbeat desta conversa, criada ACTIVE e confirmada em automation.toml e no cartao do app em 2026-10-16. Frequencia: seis horas; no maximo uma pauta nova por rodada, sem obrigacao de publicar. Depende do agendador/executor do Codex e limites da conta; nao e cron Vercel nem promessa de funcionamento 24/7. Primeira rodada autonoma observada em 16/10/2026: disparo 19:57 UTC, pesquisa seis mercados e terceira leitura publicada; recibos em [[release-status]]. A frequencia e o escopo nao foram alterados.

Cada rodada retoma o cerebro e o Git, evita trabalho sujo/em andamento, identifica novidade sem duplicatas, le duas fontes primarias relevantes, confere afirmacoes e datas, escreve EN/PT/ES e preserva direitos autorais. Assuntos sensiveis/alegacoes nao confirmadas ficam para revisao humana. Sem novas contas, servicos pagos, imagens copiadas, anuncios ou analytics. Seguir check/e2e/QA/PR/CI/merge/Production Ready/verificacao anonima antes de declarar publicacao. Atualizar cerebro e avisar apenas publicacao/correcao/falha/decisao.

Riscos: verificacao por agente nao substitui revisao editorial humana; Google recomenda revisao manual. Nao prometer views, indexacao, ranking ou cobertura universal. Artigo datado nao prova que o termo continua em alta. Aumentar volume nao e o objetivo se faltar valor/apuracao. Evoluir testes de catalogo/fixtures ao incluir novos artigos; nao enfraquecer checks.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Retomada.
- [[2026-10-16-auto-editorial]] - Escolha do proprietario.
- [[release-status]] - Publicacao observada.
- [[validation-workflow]] - Checks e limites.
- [[trends-tv-discovery]] - RSS mantido como pesquisa.
- [[architecture]] - Renderizacao e fronteiras.
- [[project]] - Direcao do produto.
- [[AGENTS]] - Regras duraveis.
- [[2026-10-16-editorial-release]] - Handoff.
- [[2026-10-16-tour-editorial-release]] - Evidencia e handoff da primeira rodada editorial.
