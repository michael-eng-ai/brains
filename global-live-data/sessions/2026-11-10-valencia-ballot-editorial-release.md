---
tipo: sessao
projeto: global-live-data
resumo: "PR81: prazos do sorteio de Valência publicados em três idiomas, com CI e Ready verificados."
tags: [global-live-data, sessao, editorial, running, release]
atualizado: "2026-11-10"
data: "2026-11-10"
ia: codex
maquina: macos
---

# Meia Maratona de Valência: prazos de inscrição

## Objetivo e estado
Rodada editorial 12:13 UTC concluída com uma pauta nova publicada pela PR81. Main local/remota limpa 4e98353586a6a12ca581c1faee8257aea5a49862. Ambos os jobs da PR e main aprovados, Production Ready/SHA e páginas PT/EN/ES verificados. Recibo em [[release-status]].

## Decisões e limites
Pesquisa atual nos seis mercados; termo espanhol de Valência levou ao guia de prazos, em vez de mais um artigo genérico de clima. Quatro fontes primárias e verificação independente de fusos. Catálogo 59; filtro Running, destino índice de artigos. [[editorial-publishing]]. Sem compra, cadastro, estoque de vagas ou resultado de sorteio afirmado. Histórico, provedores, frequência e infraestrutura preservados.

## Validação e opções abertas
Check 101 unitários, import 11, Chromium 37, seis jornadas locais e três públicas passaram; espanhol também sem JavaScript. Nove feeds amostrados ready às 12:28:14Z. Safari nativo/WebKit/carga não repetidos. Logs Vercel mostram avisos npm/ESLint e sete achados moderados de audit, sem nova auditoria production-only; manutenção separada em docs/DEPENDENCIES.md. Nome/domínio/Google e NBA real continuam fora desta rodada.

## O que evitar
Não inferir inscrição confirmada a partir de número do ballot, nem 25.000 vagas restantes. Não usar horário geral 23:59 em lugar do fechamento específico 10:59. Não confundir novembro 2026 com a corrida 2027. Não alterar dependências incidentalmente para esconder warnings. Vercel verificado no Chrome existente; não repetir chamadas 403 ou ampliar permissões.

## Próximo passo concreto
Na próxima rodada, sincronizar cérebro e conferir main limpa; pesquisar novamente editorial:research e comparar 59 artigos. Publicar no máximo uma pauta apurada pelos gates de docs/EDITORIAL.md. Nenhuma pendência da PR81. Servidor próprio 3102 encerrado; trabalho local alheio preservado.

## Prompt inicial para a próxima sessão
Continue uma rodada editorial do Global Live Data: 1) sincronize ~/brains e confira Git; 2) leia AGENTS.md/docs/EDITORIAL.md e pesquise os seis mercados com Node 24; 3) selecione no máximo uma pauta inédita com duas fontes primárias ou pule; 4) passe por testes, PR/CI e verificação Production Ready/SHA/páginas; 5) salve e sincronize o cérebro. Preserve os históricos e a frequência atual.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[release-status]] - Recibos e verificações.
- [[editorial-publishing]] - Pauta e apuração.
