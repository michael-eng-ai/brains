---
tipo: "armadilha"
projeto: "global-live-data"
resumo: "Diretorio node@24 nao prova que o executavel roda Node 24."
tags: ["global-live-data", "armadilha"]
atualizado: "2026-10-15"
---

# Verificar o runtime real

Observado nesta sessao: shell padrao retornou Node 22.22.3; /opt/homebrew/opt/node@24/bin/node retornou 25.8.0. O nome do caminho nao cumpria a versao requerida.

Solucao verificada sem mudar dependencias do projeto: npm exec com node@24.22.0 e npm@11.21.1; verificar ambas as versoes antes dos checks. Nao instalar ou substituir globalmente o runtime de outros projetos.

## Conexoes
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
