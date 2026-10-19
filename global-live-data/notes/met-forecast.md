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

## Cidade do Mexico publicada em 19/10/2026

A previa local inicial 3ad3bf7 foi autorizada para publicacao por [[2026-10-19-publish-mexico-weather]]; PR16/main e Production verificadas em [[release-status]]. Contrato atual em docs/WEATHER-MEXICO.md; o antigo WEATHER-MEXICO-PREVIEW.md pertence apenas ao commit historico. Publico /[lang]/weather/mexico-city EN/PT/ES; canonical/hreflang/sitemap e links portal/natureza. A rota lab continua exigindo opt-in local, rejeita Vercel e redireciona para a pagina publica apenas localmente.

Sete datas no fuso America/Mexico_City, com pontos recebidos e tabela de temperatura/chuva/vento/umidade. Faixa de temperatura representa pontos exibidos, nao extremos diarios. Chuva 1/6/12h permanece no intervalo recebido, sem somar sobreposicoes ou inventar probabilidades. Zero distinto de ausencia. Relogio local envelhece estado e descarta dados apos 24h de idade de fonte.

Request-time SSR via connection/getWeatherSnapshot compartilha o servico MET/cache existente, sem consulta USGS na pagina. Selecao de dia local; refresh manual reexecuta renderizacao pelo mesmo servico. Links de entrada/idioma com prefetch desativado. Nenhuma nova cidade/chave de cache geograficamente distinta, auto-polling ou coleta persistente; nao equivale a rate limiter global ou economia medida. Avaliar bursts/instancias antes de ampliar/promover.

Observacao publicada: fonte 2026-10-19T13:20:47.000Z, consulta 13:34:00.000Z e validade 13:58:39.000Z, estado ready, sete datas 19-25/10. Refresh manteve dia selecionado e timestamps; linguas preservaram cidade. Observacao local anterior stale apos validade foi explicitamente marcada, nao escondida. Checks/provas em [[validation-workflow]] e [[release-status]], sem promessa de disponibilidade continua.

Revisao primaria anterior confirmou modelo/intervalos e termos/atribuicao existentes. Docs MET divergem nove dias no endpoint e dez no modelo; exibir apenas pontos recebidos evita garantia falsa. Monclova permanece candidata; unica cidade mexicana registrada e Ciudad de Mexico. FIRMS exige revisao propria, nenhuma chave/coleta implementada. Demanda do relatorio nao foi medida novamente.

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
- [[current]] - Estado atual.
- [[2026-10-19-publish-mexico-weather]] - Autorizacao publica.
- [[2026-10-19-mexico-weather-release]] - Handoff da entrega.
- [[release-status]] - Recibos de publicacao.
- [[validation-workflow]] - Gates e verificacao.
