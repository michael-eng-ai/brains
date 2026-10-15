---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Copia de exemplo pode apagar configuracao local ja autorizada."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-15"
---

# Preservar configuracao existente

README e handoff mandavam copiar .env.example sobre .env.local. Em uma retomada com contato ja configurado, isso apagaria os valores. Nenhuma configuracao foi sobrescrita nesta sessao.

Instrucao corrigida: `[ -e .env.local ] || cp .env.example .env.local`. O arquivo segue ignorado e os valores nunca entram em Git ou memoria. Presenca de variavel nao equivale a comprovacao de configuracao salva no host.

## Conexoes
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
