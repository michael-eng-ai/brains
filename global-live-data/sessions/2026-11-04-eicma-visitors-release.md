---
tipo: sessao
projeto: global-live-data
resumo: "EICMA em três idiomas e correção do botão Voltar publicados na PR69."
tags: [global-live-data, sessao, editorial, release]
atualizado: "2026-11-04"
data: "2026-11-04"
ia: codex
maquina: macos
---

# Guia da EICMA em Rho

A edição responde à busca espanhola de 07:01 UTC em 4 de novembro. A organização da feira, a bilheteria oficial e a operadora ATM sustentam a distinção entre os dias públicos, o ingresso da tarde e o transporte até Rho Fiera. A pesquisa das 12:57 UTC também consultou os seis mercados; a edição em andamento foi concluída sem abrir outra pauta.

Na leitura, o botão Voltar após uma referência e uma visita ao câmbio trazia a URL do artigo, mas deixava a tela do câmbio visível. Os links internos passaram a usar a navegação por fragmento do Next. O teste permanente verifica a URL e o título realmente exibido após Voltar. As fontes externas continuam links comuns.

PR69 integrada em 1389f4e9030b1a1b9ef1890087686454efa2201c. CI da PR e main, Production Ready e leitura pública foram verificados. Recibos em [[release-status]]. Site com 47 artigos; Feiras é apenas um filtro de leitura. O teste local WebKit usou perfil iPhone 13, sem alegação de Safari nativo. A amostra de feeds é separada da verificação do artigo.

## Próxima rodada

1. Sincronizar o cérebro e verificar main e a árvore Git antes de editar.
2. Rodar editorial:research nos mercados suportados e cotejar os resultados com os 47 artigos.
3. Selecionar no máximo uma pergunta nova com duas fontes primárias; se houver material, seguir docs/EDITORIAL.md. Ao testar a navegação, verificar o título visível além da URL.

## Conexoes
- [[index]] - Mapa do projeto.
- [[current]] - Estado atual.
- [[historico]] - Cronologia.
- [[editorial-publishing]] - Pauta e fontes.
- [[release-status]] - Evidência da publicação.
