---
tipo: sessao
projeto: global-live-data
resumo: "PR80: guia de vento/rajadas publicado; CI, Ready e três idiomas verificados."
tags: [global-live-data, sessao, editorial, weather, release]
atualizado: "2026-11-10"
data: "2026-11-10"
ia: codex
maquina: macos
---

# Guia de vento médio e rajadas

## Objetivo e estado
Rodada editorial 06:08 UTC: uma pauta nova original PT/EN/ES publicada pela PR80. Main local/remota limpa fe81bfda8ea817aa396de6f526df778b40507a7e; ambos os jobs PR/main aprovados, Production Ready e páginas públicas verificadas. Recibo completo em [[release-status]]. A pendência Ready da PR79 também foi encerrada por inspeção direta, sem novo deploy.

## Decisões e limites
Pesquisa atual nos seis mercados, seleção ES tiempo; três fontes primárias e conversões fictícias independentes. Catálogo 58/Weather 7, CTA Natureza e cobertura 42 cidades preservados. [[editorial-publishing]]. Nenhum provedor, rotina, conta, chave ou gasto alterado. Dados históricos intactos; TSE continua tarefa separada.

## Validação e opções abertas
Check 101 unitários, import 11, Chromium 37 e leitura local/pública passaram. Native Safari/WebKit/carga não repetidos. Nove feeds amostrados ready às 06:26:11Z, sem garantia contínua. Nome/domínio/Google e NBA real continuam dependentes das decisões existentes do dono, fora desta rodada.

## O que evitar
GitHub combined-status MCP retornou 403; CLI existente forneceu o resultado. Não ampliar permissões ou repetir a mesma chamada. Vercel via Chrome funcionou, sem assumir recuperação da API. Não duplicar pauta nem apresentar rajadas fictícias como dados atuais. Servidor próprio 3102 encerrado; piloto 3147 preservado.

## Próximo passo concreto
Na próxima rodada: sincronizar cérebro, conferir main/árvore livre e pesquisar novamente via editorial:research. Comparar os 58 artigos; publicar no máximo uma pauta suficientemente apurada, pelos gates de docs/EDITORIAL.md. Sem ação pendente na PR80.

## Prompt inicial para a próxima sessão
Continue uma rodada editorial do Global Live Data: 1) sincronize ~/brains e confira o Git do projeto; 2) leia AGENTS.md/docs/EDITORIAL.md e pesquise os seis mercados com Node 24; 3) selecione no máximo uma pauta inédita com duas fontes primárias ou pule a rodada; 4) só publique após testes, PR/CI e verificação Production Ready/SHA/páginas; 5) salve e sincronize o cérebro. Preserve os históricos e a frequência atual.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[release-status]] - Recibos e verificações.
- [[editorial-publishing]] - Pauta e apuração.
- [[trap-vercel-access]] - Canais de evidência e limitações.
- [[2026-11-10-nations-editorial-release]] - Pendência anterior encerrada.
