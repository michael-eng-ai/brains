---
tipo: "regras"
projeto: "global-live-data"
resumo: "Regras de retomada e limites que precisam sobreviver entre sessoes."
tags: ["global-live-data", "regras"]
atualizado: "2026-10-15"
---

# Regras do projeto

Leia index, current e a sessao mais recente; depois confira AGENTS.md e docs/HANDOFF.md no repositorio. Memoria e contexto, nao prova atual de merge, teste ou deploy.

- PRs #1/#2/#3 integradas e publicacao inicial concluida por instrucao explicita. Pushes a main agora publicam Production; conferir escopo de futuras alteracoes.
- Conferir origin e branch antes de editar. A pasta correta e o clone global-live-data; nao alterar o projeto distinto site-busca-eventos.
- Node.js 24 e npm com package-lock.json. Verificar a versao real do executavel.
- Ler guias instalados em node_modules/next/dist/docs antes de escrever codigo Next.js.
- Manter EN/PT/ES, cidades curadas, atribuicao, teclado, estados de erro e timestamps honestos.
- Zero chamadas ao MET sem identificador legitimo autorizado. Nunca inventar contato ou reaproveitar dados privados.
- Nao registrar valores de configuracao, dados pessoais ou credenciais aqui. Apenas nomes de variaveis e referencias a arquivos ignorados.
- Separar testes com fixtures de consultas reais e de verificacao hospedada. Cache por processo nao limita trafego global.
- Nao incluir novas integracoes, banco, IA, anuncios, contas ou custos sem escopo e autorizacao apropriados.
- Documentacao do GitHub continua sendo o handoff portavel. Sincronizar este cerebro com commit/push apos salvar; declarar qualquer falha.

Expansao atual: categorias globais autorizadas para pesquisa e previa local; avaliacao do proprietario antes de publicar. Nao reutilizar a autorizacao antiga da PR #3 para enviar a branch codex/mobile-category-lab.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[project]] - Objetivo de produto e limites das fases.
- [[repo-agents-original]] - Copia da fonte AGENTS.md.

- [[release-status]] - Publicacao e configuracao hospedada verificadas.
