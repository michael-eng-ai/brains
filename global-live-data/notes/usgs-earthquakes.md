---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Fonte USGS limitada a janela movel de 24 horas."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-15"
---

# Terremotos USGS

Confirmado no adapter: all_day.geojson, apenas registros explicitamente classificados earthquake. Explosoes e tipos indefinidos entram em contagem de exclusao. Magnitude nula nao vira zero; coordenadas/URLs invalidas sao rejeitadas.

A janela e de 24h, nao um arquivo historico. Publicacao usa metadata.generated; ocorrencia vem de properties.time. Contagens por hora preservam a hora parcial mais antiga.

Documentacao do projeto registra feed com atualizacao por minuto, possiveis atrasos/revisoes e atribuicao USGS; direitos de terceiros sao separados do dominio publico dos dados produzidos pelo orgao. Nao houve nova revisao dos termos nesta sessao.

Consulta real anterior documentada em docs/HANDOFF.md; o resultado nao garante disponibilidade atual.

## Conexoes
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[nature-portal]] - Produto implementado, idiomas e limites de informacao.
- [[provider-cache]] - Cache do framework, cache por processo e timestamps diferentes.
