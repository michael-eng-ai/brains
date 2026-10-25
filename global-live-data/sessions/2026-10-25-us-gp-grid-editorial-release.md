---
tipo: sessao
projeto: global-live-data
resumo: "PR42 publica guia do grid GP EUA; CI, Production e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-25"
atualizado: "2026-10-25"
ia: codex
maquina: macos
---

# Sessao: leitura do grid GP EUA

## Objetivo e estado
- Uma pauta original EN/PT/ES, sem ampliar os feeds.
- PR42 integrada; main/origin limpos em 2cae649854052aca8cb059da182fe9b950798250.
- Ambos jobs CI PR/main, Production Ready exato e publico em [[release-status]].
- Catalogo com 25 artigos; pesquisa e limites em [[editorial-publishing]].

## Decisoes e opcoes
- Comparar classificacao/grid com data explicita e etapas Q2/Q3 separadas.
- Duas tabelas Formula 1, mesmo editor; nenhum resultado de corrida inferido.
- Automobilismo e filtro editorial; CTA retorna ao indice existente, sem feed F1.
- Proxima pauta depende de pesquisa nova; nenhuma opcao adicional aprovada.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python e 35 Chromium; todos passaram na primeira rodada.
- QA local/publico EN/PT/ES em 390/1280 pixels; capturas inspecionadas.
- Publico: nove URLs, sitemap, metadata, fontes e navegacao responsiva.
- Sem overflow ou erros de console; WebKit, iOS nativo e carga nao repetidos.
- CI PR: uma falha FX sintetica, rerun unico aprovado; investigar sincronizacao em [[validation-workflow]].
- Ops: oito feeds representativos ready, incluindo TV/streaming; USD error em sete leituras limitadas (ops exit 2). Recibo em [[release-status]].
- TSE, NBA desativada e piloto de nomes preservados; nenhum novo servico/custo.

## O que evitar
Extracao FIA indisponivel e snippets nao comprovam detalhes. Nao chamar as duas tabelas do mesmo editor de reportagem independente, o recorte de grid final ou Ready de prova de saude continua.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Rode editorial:research nos seis mercados e compare com 25 artigos.
3. No maximo uma pauta pronta segue testes, QA, PR, CI, merge, Ready, publico e cerebro.
4. Preserve configuracoes, custos, frequencias e escopo; avise somente mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
- [[trends-tv-discovery]] - Probe TV da entrega.
- [[validation-workflow]] - Falha sintetica recorrente.
- [[football-fx-pilot]] - USD indisponivel na leitura publica.
