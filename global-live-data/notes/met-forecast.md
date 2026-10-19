---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Previsao MET condicionada a identificacao publica autorizada."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-19"
---

# Previsao MET Norway

Confirmado: endpoint Locationforecast compact, coordenadas da cidade curada com ate quatro casas decimais, consultas somente no servidor. Sem MET_USER_AGENT valido deve haver zero chamadas upstream.

Representa previsao de modelo, nao observacao ou alerta. Unidades: Celsius, m/s no contrato, umidade percentual e mm. Totais de 6/12h ficam separados da chuva da proxima hora. Tempos posteriores podem ter intervalos maiores.

Codigo honra Expires, Last-Modified/If-Modified-Since, Retry-After, timeout e limites de resposta. A politica de licenca/atribuicao e limite agregado do fornecedor esta registrada em docs/DATA-SOURCES.md; revalidar termos antes do lancamento.

Confirmado por historico direto do proprietario: contato autorizado em 2026-10-15. Valor somente em .env.local. Presenca verificada sem revelar valor. Sondagem local anterior foi ready; naquela data, a fonte ainda nao havia sido validada em hospedagem.

## Previa mexicana 19/10/2026

[[2026-10-19-mexico-weather-first]] autoriza somente previa. Commit local 3ad3bf7c06093d0e3b5ff2539d01102b308e3ea1; implementacao e fontes em docs/WEATHER-MEXICO-PREVIEW.md. Rota /[lang]/lab/weather/mexico-city requer GLD_ENABLE_LAB=1 e sempre 404 na Vercel; noindex, sem sitemap/link publico. Reaproveita o mesmo servico MET/cache no servidor e nao consulta USGS. Nenhuma cidade/API ou identidade nova.

Sete datas no fuso da cidade com selecao de dia/tabela, unidades, ausencias, chuva 1/6/12h sem somas. Faixa de temperaturas representa pontos exibidos, nao extremos do dia inteiro. SSR inicial; relogio local envelhece estado e descarta apos 24h de idade de fonte. Mudanca de dia nao consulta rede; refresh manual e idiomas preservaram datas em verificacao local. Nao e rate limiter global nem arquivo historico.

Observado ready com fonte 2026-10-19T11:26:28Z, consulta 12:58:02Z, validade 13:27:34Z; sete datas 19-25/10. Prova unica, nao monitoramento. Finais: 90 unidades/check e 25 Chromium; UI 390/1280 EN/PT/ES, teclado, refresh, tabela com rolagem e datas 12px sem erro/overflow. HTTP200/noindex/SSR nas tres linguas; outras cidades/idioma 404 e VERCEL=1 bloqueou mesmo com opt-in. Testes offline nao substituem esta observacao real. Sem telefone fisico/mobileSafari/carga/CI/publicacao.

Revisao primaria confirmou modelo/intervalos e termos/atribuicao existentes. Docs MET divergem nove dias no endpoint e dez no modelo; exibir somente pontos recebidos evita garantia falsa. Monclova e candidata; a unica cidade mexicana registrada segue Ciudad de Mexico. FIRMS area API exige MAP_KEY; nenhuma chave/prova autenticada. Demanda do relatorio nao foi medida novamente.

## Conexoes
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
- [[public-contact]] - Contato publico separado do identificador MET e lacunas de privacidade.
- [[repo-data-sources-original]] - Copia da fonte docs/DATA-SOURCES.md.
- [[api-data-adequacy]] - Auditoria transversal de adequacao dos dados.
- [[2026-10-19-mexico-weather-first]] - Escopo local selecionado pelo proprietario.
- [[2026-10-19-mexico-weather-preview]] - Handoff da previa mexicana.
