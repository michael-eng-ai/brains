---
tipo: sessao
projeto: global-live-data
resumo: "PR35 publica guia Clasico com fusos e previa dos EUA validados."
tags: [global-live-data, sessao, editorial, release]
data: "2026-10-23"
atualizado: "2026-10-23"
ia: codex
maquina: macos
---

# Sessao: horarios do Clasico

## Objetivo da sessao
Pesquisar tendencias e publicar no maximo uma leitura original apurada, sem ampliar o produto.

## Estado
- PR35 integrada; main/origin limpos em 28d226858d57a5c548624794ddd20ea549cf1973.
- CI PR/main com dois jobs aprovados, Production Ready e paginas publicas conferidas em [[release-status]].
- Catalogo18artigos EN/PT/ES; apuracao e limites em [[editorial-publishing]].
- Historicos, provedores, NBA desativada e piloto de nomes preservados.

## Decisoes tomadas e motivos
- Separar horario anunciado da partida, conversao local e inicio da previa dos EUA.
- Reconciliar anuncios espanhóis, BOE e ESPN; excluir rotulo CEST inconsistente e snippet sem corpo util.
- Reutilizar filtro/destino Futebol; nao criar provider ou nova categoria.

## Opcoes em aberto
- Revisao de agenda exige nova checagem e preservacao da primeira data de publicacao.
- Nova pauta somente com pesquisa atual e fontes suficientes; nenhuma preaprovada.

## O que evitar
- Nao interpretar tendencia como resultado, causa ou volume mensal.
- Nao extrapolar emissora dos EUA para outros paises ou confundir grade com direito de acesso.
- Nao confundir Chromium com WebKit/iOSnativo/carga ou probe pontual com SLA.

## Proximo passo concreto
Na proxima rodada, main limpa, uma pesquisa editorial:research nos seis mercados e comparacao com18artigos. No maximo uma pauta pronta segue branch/gates/PR/CI/merge/Ready/publico/cerebro.

## Prompt inicial para a proxima sessao
1. Sincronize cerebro e leia current/esta sessao, AGENTS.md e docs/EDITORIAL.md; confira Git e trabalhos ativos.
2. Rode pesquisa unica e valide fontes primarias, datas/fusos e duplicatas antes de escrever EN/PT/ES.
3. Se houver artigo pronto, finalize testes/QA/CI/Ready/publico e cerebro; mantenha contas/custos/infra/automacoes intactos.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado atual.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Conteudo e apuracao.
- [[release-status]] - Recibos.
