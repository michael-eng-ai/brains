---
tipo: "procedimento"
projeto: "global-live-data"
resumo: "Procedimento local e remoto para validar a revisao exata."
tags: ["global-live-data", "procedimento"]
atualizado: "2026-10-15"
---

# Verificar release

1. Confirmar cwd, origin, git status, branch e git fetch. Ler main, PR documental #3 e checks da revisao exata; PR #2 ja foi integrada.
2. Confirmar Node 24. Instalar dependencias com npm ci --ignore-scripts apenas quando necessario; preservar .env.local.
3. Rodar npm run check com GLD_LIVE_SMOKE=0 e variaveis de operador vazias para fixtures. Registrar codigo de saida e testes.
4. Verificar browser instalado e porta 3000 livre. Rodar npm run test:e2e depois do check; nunca junto ao outro build.
5. Inspecionar screenshots desktop/mobile sinteticos e diagnosticos. Nao apresentá-los como leitura atual da fonte.
6. Rodar npm audit e npm audit --omit=dev separadamente; manter achados conhecidos visiveis.
7. Conferir diff e arquivos ignorados, documentar resultado no handoff. Enviar apenas alteracoes autorizadas e observar CI do novo SHA.
8. Consultas reais sao separadas e limitadas. Verificacao local nao substitui validacao hospedada.

Procedimento check/browser/audits executado com sucesso funcional nesta sessao; auditoria completa manteve falha conhecida. Instalacao npm ci nao repetida.

## Conexoes
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[validation-workflow]] - Checks locais e CI sem confundir fixtures com dados reais.
