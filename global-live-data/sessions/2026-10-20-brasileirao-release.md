---
tipo: sessao
projeto: global-live-data
resumo: "Brasileirao integrado e publicado; NBA preparada por escolha do proprietario."
tags: [global-live-data, sessao, esportes]
atualizado: "2026-10-20"
ia: codex
maquina: local
---

# Sessao 2026-10-20: Brasileirao

## Objetivo
Pesquisar opcoes gratuitas comerciais para Brasileirao/NBA, implementar, testar, publicar e salvar o resultado. Escolha final: publicar Brasileirao e deixar NBA preparada.

## Estado
- Main/origin e705e1ebc74787465c5b446a6e8698879c65081c, limpos; PR24 integrada; CI PR/main com ambos os jobs aprovados.
- Publicacao confirmada pelo deployment GitHub Production/success e pelo alias publico; verificacao direta do campo Ready no painel ainda pendente. Recibos em [[release-status]].
- Check 101, Python 11, Chromium 35, WebKit 35; QA real local/publica em 390/1280 px. [[validation-workflow]].

## Decisoes e limites
- SportScore gratuito com uso comercial inicial e credito dofollow visivel. Tabela de 20 clubes; jogos parciais, 19 clubes validados, Gremio bloqueado por colisao de identidade.
- Fonte nao informa temporada/publicacao da tabela; nao inventar. Bloquear fora de 2026 ate revisao.
- NBA preparada, sem chave/probe real/nav/sitemap; pagina 404 por padrao. Nenhuma conta criada.
- Edicao historica anterior destas ligas ainda pendente; seis arquivos existentes preservados.
- Indices Trends de 19 outubro continuam datados; comparacao de 20 outubro falhou.

## Opcoes em aberto
- NBA depende de chave do proprietario e probe real. Gremio depende de fonte sem ambiguidade.
- Dominio e Google continuam pendentes em [[launch-readiness]]. Automacoes e frequencias inalteradas.

## Evitar
- Nao aceitar Gremio RS como Grêmio - RS nem inventar parametros de ID na API.
- Nao apresentar janelas de 30/50 partidas como calendario completo; nao remover credito exigido.
- Nao ativar NBA com fixtures ou usar endpoints pagos. Nao repetir conector Vercel 403 sem mudanca de acesso.

## Proximo passo
Quando o painel estiver disponível, conferir Ready/Production/main e o SHA exato da PR24, sem redesplegar; atualizar o recibo e sincronizar. Depois, validar feedback; para NBA, seguir docs/BRASILEIRAO-NBA.md apenas apos chave autorizada, probe real, revisao da navegacao e release completo.

## Prompt inicial
1. Sincronize o cerebro, leia [[brasileirao-nba-feeds]] e confira o estado Git.
2. Confira o recibo direto Vercel pendente em [[trap-vercel-access]]; depois retome uma pendencia autorizada.
3. Execute os checks relevantes, confira CI, deployment e publico; salve e sincronize o cerebro.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[brasileirao-nba-feeds]] - Contrato.
- [[2026-10-20-publish-brasileirao-prepare-nba]] - Autorizacao.
- [[release-status]] - Evidencia remota.
- [[validation-workflow]] - Testes.

- [[trap-vercel-access]] - Lacuna de acesso ao painel.
