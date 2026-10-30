---
tipo: sessao
projeto: global-live-data
resumo: "WebKit 36 e carga de 4.836 HTTP passaram; PR64 consolida docs, sem patch funcional."
tags: [global-live-data, sessao, validacao, release]
data: "2026-10-30"
atualizado: "2026-10-30"
ia: codex
maquina: macos
---

# Sessao: WebKit mobile e carga

## Objetivo e estado
- Pedido direto: testar Safari mobile/carga, corrigir/publicar se necessario e salvar cerebro.
- Main/origin limpos 3e0025dbec4c12be9f5db272e6f36065ba72aacb; PR64 integrada, CI PR/main e Production Ready/SHA/publico verificados.
- Sem defeito funcional; somente documentacao mudou. Codigo 58e83db mantido.

## Resultados e limites
- WebKit iPhone-profile 36/36, publico EN/PT/ES 390 px sem overflow/overlay/console errors.
- Carga 4.836 HTTP, ate 30 clientes, zero falha final, pico P95 132.20 ms e 169.15 req/s.
- 30 clientes frios compartilharam 1 fetch; total 2 simulados separados por 60.877 s.
- Transicao stale 394 ms apos expiry correta; recuperacao com fonte nova.
- Harness inicial ready-only corrigido; nenhum gate de produto relaxado.
- simctl indisponivel: Safari iOS nativo/aparelho fisico nao testados.
- Local/sintetico nao prova Vercel/CDN/multirregiao, banda/CPU ou capacidade de provedor.
- Sete JSON historicos intactos; sem conta/custo/chave/analytics/automacoes alteradas.

## Proximo passo concreto
- Para completar Safari nativo, usar iPhone ou simulador iOS disponibilizado pelo proprietario.
- Antes de promocao ampla, medir hospedagem/agregacao/custo; nao extrapolar benchmark local.
- Browser plugin ausente; CLI WebKit 2368 nao instalado. Usar biblioteca 2370 do repositorio, sem instalar/copiar credenciais.

## Prompt inicial
1. Sincronize cerebro/Git e confirme o estado real, sem sobrepor trabalho.
2. Para nova validacao, leia docs/OPERATIONS.md e validation-workflow; preserve limites de carga e dados reais.
3. Nao repetir testes sem mudanca/falha que justifique nem afirmar Safari nativo sem aparelho/simulador.
4. Editorial/TSE continuam separados, autorizacoes e escopos preservados.

## Conexoes
- [[index]] - Entrada.
- [[current]] - Estado.
- [[historico]] - Linha do tempo.
- [[validation-workflow]] - Metricas e limites.
- [[release-status]] - Recibos.
