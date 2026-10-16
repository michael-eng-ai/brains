---
tipo: conceito
projeto: global-live-data
resumo: "Buscas regionais e programacao de TV com fontes reais, cobertura e direitos explicitos."
tags: [global-live-data, conceito, discovery]
atualizado: "2026-10-15"
---

# Trends e programacao de TV

Implementacao da PR #5: docs/TRENDS-TV-RELEASE.md no repositorio concentra pesquisa e limites. /[lang]/trending e /[lang]/screen existem em EN/PT/ES e entram na home como cards com dados atuais e navegacao interna. Creditos/licencas ficam na metodologia interna, sem links brutos nos resultados.

Google Trending now e RSS foram consultados em 15 de outubro local. Seis mercados, US/BR/GB/ES/JP/IN, retornaram dez entradas cada. Esportes e entretenimento apareceram; e uma fotografia regional, nao estudo representativo, ranking global ou previsao de audiencia. Nenhum nome de pessoa ou consulta individual foi armazenado aqui. RSS export e documentado em https://support.google.com/trends/answer/3076011?hl=en. Preservar texto original, inicio da tendencia e faixas aproximadas de buscas; nao somar volumes, inferir fatos nem criar noticias automaticamente.

TVmaze oferece API publica sem chave, https://www.tvmaze.com/api, com dados sob CC BY-SA 4.0. A adaptacao de metadados factuais mantem a mesma licenca e credito com JSON acessivel na metodologia. Nao copiar resumos, imagens ou videos. A categoria cobre streaming global e emissoras/streaming local dos EUA/Reino Unido, hoje/amanha em UTC. Filtros de texto/canal sao locais; lista incremental e detalhes nativos mostram temporada/episodio/duracao. Horario ausente permanece desconhecido mesmo com timestamp padrao da fonte; zero difere de ausente. Nao garantir disponibilidade no pais, exibicao concluida ou correspondencia de cada busca com a agenda.

Fronteiras: lib/discovery/schema.ts normaliza queries/fontes, service.ts faz transporte testavel, index.ts isola servidor e cache compartilhado. /api/discover aceita somente combinacoes de kind/market/day permitidas; parametros duplicados/desconhecidos, datas arbitrarias e URLs sao rejeitados antes de I/O. Hook aborta consultas anteriores, limpa dado em erro/troca e atualiza em primeiro plano a cada dez minutos.

Cache Trends: seis chaves, TTL 10min, idade maxima 1h. TV: tres mercados e dois dias, TTL 1h, idade maxima 6h, chaves diarias; cache do processo limitado a 32 entradas. Idade reavaliada apos leitura compartilhada. Transporte com origens HTTPS fixas, redirects rejeitados, timeout 8s incluindo corpo, limite 1MB, single-flight e pausas Retry-After/403/429 por processo. RSS escalar limitado rejeita entidades/DOCTYPE, duplicatas, datas invalidas/futuras e entradas acima de 48h. Nao fabrica fallback.

Estimativa ideal com todas as chaves ativas: 864 consultas Trends e 144 TV/dia por populacao de cache compartilhado. Nao e quota global medida; regioes, previews, cold starts e corridas multiplicam trafego. Sem agendamento em background. Medir antes de promover em escala.

NFL/MLB e mais futebol: interesse observado, mas nenhum novo feed com direitos de redistribuicao confirmados foi escolhido. Jolpica F1 exige tratamento comercial separado em https://github.com/jolpica/jolpica-f1/blob/main/TERMS.md. Eleicoes exigem fonte por jurisdicao, estado dos resultados e acesso adequado; AP continua sem chave. Ticketmaster e financas intradiarias continuam com acesso/licenciamento pendentes. Nao houve compra, conta, assinatura, anuncios ou analytics.

## Conexoes
- [[index]] - Entrada do conceito.
- [[category-research]] - Pesquisa inicial e candidatos remanescentes.
- [[project]] - Produto com cinco categorias.
- [[architecture]] - Fronteiras da implementacao.
- [[provider-cache]] - Limites de cache e escala.
- [[2026-10-15-publish-discovery]] - Autorizacao de publicacao desta expansao.
- [[release-status]] - Provas hospedadas e revisao exata.
- [[validation-workflow]] - Testes separados dos probes reais.
- [[current]] - Estado de retomada.
- [[2026-10-15-discovery-release]] - Handoff.
