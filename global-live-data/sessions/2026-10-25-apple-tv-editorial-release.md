---
tipo: sessao
projeto: global-live-data
resumo: "PR43 publica guia Apple TV; CI, Production e publico verificados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-25"
atualizado: "2026-10-25"
ia: codex
maquina: macos
---

# Sessao: guia Apple TV

## Objetivo e estado
- Uma pauta original EN/PT/ES, sem ampliar feeds.
- PR43 integrada; main/origin limpos em 8ac2f47bb25d22f57c8bf7cb6c23b4b08742b6b2.
- Ambos jobs CI PR/main, Production Ready exato e publico em [[release-status]].
- Catalogo 26; selecao e limites em [[editorial-publishing]].

## Decisoes
- Aplicativo, assinatura, compras/alugueis separados; exemplo explicitamente hipotetico.
- Tres fontes primarias Apple, mesmo editor; sem rumor, hardware, precos ou direitos esportivos.
- Filtro TV e streaming e CTA para agenda existente; nao oferece transmissao.
- Proxima pauta exige pesquisa nova; nenhuma integracao adicional aprovada.

## Validacao e pendencias
- Local: 101 unitarios, 11 Python, 35 Chromium e check passaram na primeira tentativa.
- QA local/publico EN/PT/ES 390/1280, capturas, fontes, teclado, idiomas e CTA verificados.
- Nove URLs/sitemap/metadata; sem overflow, overlay ou console de artigo.
- WebKit, iOS nativo e carga nao repetidos para conteudo.
- Ops: oito feeds representativos ready, incluindo TV/streaming; USD error em sete leituras limitadas (ops exit 2). [[football-fx-pilot]].
- TSE RN bloqueado 18:49 UTC, NBA desativada e piloto nomes preservados; nao tratados nesta rodada.

## O que evitar
Nao inferir inclusao de titulo pela busca ou agenda. Nao usar reviews/snippets ou hardware como apuracao deste guia. Ready nao garante saude dos provedores; nenhum reparo ocorreu.

## Proximo passo e prompt de retomada
1. Sincronize cerebro; leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git.
2. Execute editorial:research nos seis mercados e compare com 26 artigos.
3. No maximo uma pauta pronta segue testes, QA, PR, ambos CI, merge, Ready, publico e cerebro.
4. Preserve custos/configuracao/frequencia/escopo; avise somente mudanca acionavel.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Apuracao.
- [[release-status]] - Recibos.
- [[football-fx-pilot]] - Probe USD.
