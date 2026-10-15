---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Auditoria de dependencias e restricao de compatibilidade do lint."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Dependencias de desenvolvimento

Confirmado por npm audit nesta sessao: auditoria completa retorna codigo 1 e cinco achados altos; producao retorna codigo 0 e zero achados. Cadeia: eslint-config-next > @next/eslint-plugin-next > fast-glob > micromatch > braces.

Nao alterar dependencias incidentalmente ou forcar downgrade/peer overrides. docs/DEPENDENCIES.md registra o advisory e falta de correcao compativel observada em 2026-10-15; reavaliar upstream em manutencao e antes do lancamento.

Codigo de saida nao zero da auditoria completa e pendencia conhecida, nao falha dos testes funcionais. Lint roda sem segredos, com permissoes CI de leitura e timeout. Esses controles nao corrigem o pacote vulneravel.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[repo-dependencies-original]] - Copia da fonte docs/DEPENDENCIES.md.
- [[validation-workflow]] - Checks locais e CI sem confundir fixtures com dados reais.
