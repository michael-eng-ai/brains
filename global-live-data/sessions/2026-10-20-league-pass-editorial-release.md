---
tipo: sessao
projeto: global-live-data
resumo: "Guia League Pass EN/PT/ES integrado e visivel, Ready direto pendente."
tags: [global-live-data, sessao, editorial]
atualizado: "2026-10-20"
data: "2026-10-20"
ia: codex
maquina: local
---

# Sessao 2026-10-20: League Pass

## Objetivo
Executar uma rodada editorial autorizada, com no maximo uma pauta apurada e sem ampliar o produto.

## Estado
- PR25 integrada; main/origin 45ed274ff0fb77a18d443e4caa13d7f8ae5040f2, limpa e identica ao head aprovado.
- CI PR/main aprovados; guia servido em EN/PT/ES e conferido anonimamente. Recibos em [[release-status]].
- Nove artigos. NBA segue preparada/desativada; Brasileirao e arquivos historicos preservados.

## Decisoes e motivos
- US nba league pass: pergunta util sobre territorio/live/reprise, sem duplicar o guia WNBA.
- Tres referencias oficiais e exemplo/checklist originais; fontes e limites em docs/editorial/2026-10-20-nba-league-pass.md.
- Verificacao GitHub/publico separada de Ready direto, ainda nao observado. Nenhuma nova permissao ou autenticacao alterada.

## Opcoes em aberto
- Completar leitura direta Ready/Production/main/SHA dos deployments PR24/PR25 quando o painel autorizado estiver acessivel.
- Dominio/Google e chave NBA continuam dependencias anteriores, fora desta rodada.

## O que evitar
- Nao repetir 403/CLI conhecido, mexer no autenticador, copiar credenciais, redesplegar ou confundir pagina publica com leitura direta Ready.
- Nao publicar duplicata, atualizar datas sem apuracao, inventar placares/direitos de transmissao ou alterar automacoes.

## Proximo passo
Completar apenas o recibo Vercel dos deployments existentes quando o acesso voltar; nao e necessaria nova publicacao.

## Prompt de retomada
1. Retome o cerebro global-live-data, sincronize e leia current/este handoff; confira Git sem sobrescrever trabalho.
2. Siga docs/DEPLOYMENT.md e [[trap-vercel-access]]; use sessao autorizada existente para conferir Ready/Production/main/SHA dos deployments PR24/PR25 listados em [[release-status]].
3. Se houver acesso, registre a evidencia exata e sincronize o cerebro. Caso contrario, preserve a pendencia sem repetir autenticacao/redeploy.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[editorial-publishing]] - Pauta e contrato.
- [[release-status]] - Recibos exatos.
- [[validation-workflow]] - Testes e QA.
- [[trap-vercel-access]] - Limite de verificacao.
