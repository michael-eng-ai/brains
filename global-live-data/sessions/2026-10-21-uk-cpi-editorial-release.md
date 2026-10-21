---
tipo: sessao
projeto: global-live-data
resumo: "Guia CPI EN/PT/ES publicado; Ready atual e pendencias anteriores verificados."
tags: [global-live-data, sessao, editorial]
atualizado: "2026-10-21"
data: "2026-10-21"
ia: codex
maquina: local
---

# Sessao 2026-10-21: CPI britanico

## Objetivo
Uma rodada editorial autorizada, no maximo uma pauta apurada e sem ampliar o produto.

## Estado
- PR27 integrada; main/origin 05fab67a998a9712ab22bbff3964c73929914881, limpos e com arvore identica ao head aprovado.
- CI PR/main, Vercel Production Ready/SHA e publico conferidos; onze artigos EN/PT/ES. [[release-status]].
- Pendencias Ready PR24/25/26 encerradas por leitura direta no painel; corpos atualizados, sem redeploy.

## Decisoes e motivos
- Consulta GB cpi september 2026: pergunta util sobre leitura de taxas e datas, ligada a pagina FX existente.
- ONS datado e duas referencias ECB; exemplos hipoteticos conferidos. Ledger docs/editorial/2026-10-21-uk-cpi.md.
- Nenhuma recomendacao financeira, causalidade cambial, novo feed, conta, chave ou automacao.

## Opcoes em aberto
Dominio/Google e chave NBA continuam dependencias do proprietario, fora desta rodada. Nao ha pendencia Ready destas entregas.

## O que evitar
Nao usar /latest antigo para dados do mes novo; nao usar paginas que falharam como se tivessem sido lidas.
Nao confundir exercicios aritmeticos com dados reais, periodo CPI com data FX ou informacao com cotacao de transacao.
Nao assumir recuperacao do conector/CLI nem alterar seguranca para QA; painel existente e o canal verificado.

## Proximo passo
Na proxima rodada editorial, pesquisar uma vez os mercados suportados e publicar somente pauta nova com fontes suficientes.

## Prompt de retomada
1. Sincronize o cerebro global-live-data e confira Git/main sem sobrescrever trabalho.
2. Siga docs/EDITORIAL.md, execute editorial:research e compare com as onze leituras; evite duplicatas e temas sensiveis sem revisao.
3. Se houver pauta apurada, siga testes/PR/CI/painel Ready/publico e salve o cerebro; senao, mantenha silencio sem nova publicacao.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Contrato e apuracao.
- [[release-status]] - Recibos.
- [[validation-workflow]] - Checks.
- [[trap-vercel-access]] - Canal autorizado verificado.
