---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Previsao MET condicionada a identificacao publica autorizada."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Previsao MET Norway

Confirmado: endpoint Locationforecast compact, coordenadas da cidade curada com ate quatro casas decimais, consultas somente no servidor. Sem MET_USER_AGENT valido deve haver zero chamadas upstream.

Representa previsao de modelo, nao observacao ou alerta. Unidades: Celsius, m/s no contrato, umidade percentual e mm. Totais de 6/12h ficam separados da chuva da proxima hora. Tempos posteriores podem ter intervalos maiores.

Codigo honra Expires, Last-Modified/If-Modified-Since, Retry-After, timeout e limites de resposta. A politica de licenca/atribuicao e limite agregado do fornecedor esta registrada em docs/DATA-SOURCES.md; revalidar termos antes do lancamento.

Confirmado por historico direto do proprietario: contato autorizado em 2026-10-15. Valor somente em .env.local. Presenca verificada sem revelar valor. Sondagem local anterior foi ready; a fonte ainda nao foi validada em hospedagem.

## Conexoes
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[repo-data-sources-original]] - Copia da fonte docs/DATA-SOURCES.md.
