---
tipo: sessao
projeto: global-live-data
resumo: "PR 8 publicada com arquivo historico eleitoral e esportivo, checks e dados hospedados verificados."
tags: [global-live-data, sessao, historico]
atualizado: "2026-10-16"
data: "2026-10-16"
ia: codex
maquina: local
---

# Sessao 2026-10-16: arquivo historico

## Objetivo
Persistir pelo menos a edicao anterior, com todos os cargos de 2022 no Brasil e temporadas anteriores dos campeonatos existentes.

## Estado
- PR #8 integrada; main 56d255d6880ce1b727a3586cd06eac57fdbe2332, limpa e igual ao remoto; arvore identica ao head f5b1aac1e81eaf8d04d1ef15e8102c46b0592d7d.
- CI PR/main passou dois jobs; Vercel Production Ready no commit exato, dpl_DtJKczY9hNpyJDH2Vxwn1MNmffiQ. Recibos em [[release-status]].
- Cinco edicoes: Brasil 2022 com seis cargos e 1.002 jogos de quatro ligas em 2025/26. Os cinco exports publicados foram comparados integralmente aos arquivos locais.
- Check local: 69 unidades, lint/types/build, 54 paginas HTTP; 3 testes Python separados; 15 casos Chromium. Desktop/mobile e filtro exterior hospedados sem overflow ou erros.

## Decisoes e limites
- JSON em Git e backup remoto sao a fonte duravel; SQLite somente leitura e reproduzivel. Sem nova conta/chave/dependencia/API paga.
- Gate bloqueia avancar temporada sem predecessora arquivada. Novas cargas ainda sao revisadas; nenhum scheduler foi criado para historico.
- Apuracao Brasil 2026, candidatos/cadeiras, outros historicos, banco cloud gravavel, carga/Safari/aparelhos fisicos permanecem fora desta entrega.
- Heartbeat editorial de seis horas segue ativo e independente; nao foi duplicado ou alterado.

## O que evitar
- Nao duplicar TSE BRASIL + UFs, aceitar suplementares pelo ano-base ou somar votos convertidos duas vezes.
- Partidos podem repetir por coligacao no grao bruto. Reconciliar todos os recortes com arquivo oficial separado.
- SQLite pode escolher scan numa fixture de duas linhas; nao exigir plano com indice para dataset minusculo. Planos reais do banco completo usam indices.
- Selects precisam aria-label explicito para nome acessivel estavel. Probe hospedado deve aceitar data-dpl-id antes de lang no elemento html.

## Proximo passo
Receber avaliacao do historico ou continuar a rotina editorial autorizada. Para proxima edicao, seguir docs/HISTORY.md antes de alterar catalogos e reconstruir/testar/publicar.

## Prompt de retomada
1. Leia index/current e este handoff; compare main/CI/Production reais.
2. Para um novo historico solicitado, confirme fonte e direitos, importe em staging e reconcilie sem substituir edicoes anteriores.
3. Execute checks/QA da mudanca, publique somente no escopo autorizado e salve o cerebro sem valores privados.

## Conexoes
- [[historical-editions]] - Persistencia historica, contratos e evidencia de retomada.
- [[2026-10-16-retain-editions]] - Direcao confirmada de retencao por edicao.
- [[index]] - Handoff do historico publicado.
- [[current]] - Handoff do historico publicado.
- [[historico]] - Handoff do historico publicado.
- [[release-status]] - Handoff do historico publicado.
- [[validation-workflow]] - Handoff do historico publicado.
