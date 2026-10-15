---
tipo: "procedimento"
projeto: "global-live-data"
resumo: "Retomar hospedagem somente com nova instrucao e alvo confirmado."
tags: ["global-live-data", "procedimento"]
atualizado: "2026-10-15"
---

# Retomar publicacao

Publicacao inicial concluida em [[2026-10-15-production-launch]] por [[2026-10-15-authorize-publication]]. Este procedimento orienta futuras entregas, nao um pedido para repetir o deploy.

1. Verificar o escopo da instrucao atual. A espera historica foi revogada para a entrega inicial; nao solicitar novamente autorizacao para acoes ja concluidas. Futuras mudancas precisam estar no escopo autorizado.
2. Revalidar main (PRs #1/#2/#3 integradas), SHA remoto, CI, time Vercel e repositorio/branch; push a main agora publica Production. Conferir identidade legal e informacoes de privacidade pendentes.
3. Reinspecionar formulario no browser autorizado ou conector com acesso. Valores reais apenas via configuracao ignorada/host; nao imprimir nem pedir credenciais em texto.
4. Verificar ambiente efetivo da primeira publicacao e documentacao atual do provedor. Integrar/publicar somente no escopo autorizado.
5. Registrar status READY e URL observada; validar EN/PT/ES desktop/mobile, APIs, horarios, estados de falha, atribuições e volume/cache sem sobrecarregar fontes.
6. Atualizar GitHub e cerebro com evidencias. Nao afirmar controle distribuido ou URL publicada a partir de build/configuracao.

## Conexoes
- [[2026-10-15-defer-publication]] - Escolha historica de nao publicar; merge posterior observado nao autoriza deploy.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[release-status]] - Evidencias de GitHub e limites da preparacao Vercel.
- [[repo-deployment-original]] - Copia da fonte docs/DEPLOYMENT.md.

- [[2026-10-15-authorize-publication]] - Escopo da autorizacao inicial.
- [[2026-10-15-production-launch]] - Resultado verificado.
