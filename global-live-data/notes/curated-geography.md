---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Catalogo limitado de 42 cidades e geometria do mapa."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-19"
---

# Geografia curada

Confirmado em lib/geography.ts: 42 cidades com centros representativos e fusos IANA; busca com pais/regiao/aliases e normalizacao de acentos. Nao existe geocodificacao universal ou delimitacao municipal de terremotos.

Distancia e raio usam o centro selecionado. Mapa local: Natural Earth via world-atlas, topojson-client e d3-geo; dados gerados em lib/world-paths.json. Antimeridiano exige clipping; nao conectar aneis de +180 a -180 como uma faixa cheia. Gerador em scripts/generate-world-map.mjs, tres regressoes em tests/world-map.test.ts.

Atribuicoes/licencas de dados e ferramentas constam em docs/DATA-SOURCES.md; revisar quando regenerar.

## Revisao mexicana 19/10

Catalogo conferido: Ciudad de Mexico e a unica entrada mexicana; Monclova nao consta. [[2026-10-19-mexico-weather-preview]] usa apenas a entrada existente na previa local. Nenhuma coordenada, fuso ou quantidade de cidades foi alterada. Validar geografia e escopo antes de ampliar.

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[2026-10-19-mexico-weather-preview]] - Handoff da previa mexicana.
