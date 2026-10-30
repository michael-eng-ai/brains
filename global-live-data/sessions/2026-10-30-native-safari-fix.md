---
tipo: sessao
projeto: global-live-data
resumo: "Simulador pronto, seletor Safari corrigido; PR65/66 publicadas e CI final verde."
tags: [global-live-data, sessao, validacao, safari, release]
data: "2026-10-30"
atualizado: "2026-10-30"
ia: codex
maquina: macos
---

# Sessao: Safari nativo no iPhone

## Objetivo e estado
- Preparar simulador, testar Safari mobile, corrigir/publicar e atualizar cerebro.
- Contrato Apple e limpeza de quatro caches explicitamente autorizados pelo dono; concluidos.
- Main/origin limpos a5ce629d26f123633e07a8f0f97873e4a1a3fe74; PR65/66 integradas, CI final PR/main e Production Ready/publico verificados em [[release-status]].

## Decisoes e limites
- Instalar somente o necessario e usar Safari nativo do simulador; nao alegar aparelho fisico.
- Corrigir input13px que causava zoom/recorte: 16px em mobile/touch, filtros empilhados abaixo360px, zoom do usuario preservado.
- Corrigir corrida da fixture FX exposta no CI main; esperar resposta renderizada, sem relaxar timeout/prazos/contagens do produto.
- Fluxos e resultados completos em [[validation-workflow]]; carga anterior separada, capacidade da hospedagem nao medida.
- MET Lisboa permaneceu stale em duas observacoes pontuais; outros oito feeds ready. Nao mascarar estado.

## O que evitar
- Nao baixar outro runtime para resolver falha do download secundario; o instalado funciona. Verificar disco antes de instalar mais.
- Xcode27 usa DeviceHub, nao o caminho antigo Simulator.app; AX nativo nao expande DOM web.
- Nao contar inicio da rota como fim da resposta ao avancar relogio fake. Intl en-GB difere em pontuacao Chromium/WebKit.
- Nao repetir conector Vercel403, alterar seguranca, copiar credenciais ou confundir codigo pronto com publicacao.

## Proximo passo concreto
- Safari nativo concluido; aparelho fisico/banda/CPU permanecem limites, nao bloqueios ocultos da entrega.
- Se priorizar atualidade MET, investigar somente Lisboa e o contrato em docs/OPERATIONS.md sem alterar dados/intervalos por suposicao.
- Dominio/nome e NBA permanecem nas decisoes anteriores em [[launch-readiness]].

## Prompt inicial
1. Sincronize cerebro e confirme Git/CI/host, sem sobrescrever trabalho.
2. Para investigar MET Lisboa, leia validation-workflow, release-status e docs/OPERATIONS.md; diferencie stale de indisponivel.
3. Use uma verificacao limitada, confirme a causa e preserve expiry, timestamps e backoff. Nao mudar outras categorias ou automacoes.
4. Se houver correcao autorizada, complete gates e recibos antes de salvar/sincronizar.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[validation-workflow]] - Fluxos, falhas e limites.
- [[release-status]] - Commits, CI e Production.
- [[launch-readiness]] - Pendencias de lancamento.
