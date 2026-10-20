---
tipo: conceito
projeto: global-live-data
resumo: "Dominio proprio e Google: .com cotado, registros ainda nao adquiridos."
tags: [global-live-data, conceito, validacao, lancamento]
atualizado: "2026-10-19"
---

# Preparacao do lancamento

O site ja esta publico em https://global-live-data.vercel.app. Em 19/10/2026, Settings/Domains do projeto mostrou somente esse dominio, Valid Configuration/Production; a equipe exibia Pro. Isso nao verifica fatura total, cotas ou custo futuro. Nenhuma configuracao alterada.

## Dominio, consulta pontual

API publica Vercel `POST https://api.vercel.com/v1/registrar/domains/search`, resposta retida em 2026-10-19T15:00:38.102285+00:00. Sem autenticacao, reserva ou compra. USD por um ano; valores podem mudar e nao incluem conversao/encargos nao cotados.

| Dominio | Disponibilidade confirmada | Registro | Renovacao | Premium |
| --- | --- | --- | --- | --- |
| globallivedata.com | sim | 11.25 | 11.25 | nao |
| globallivedata.net | sim | 13.50 | 13.50 | nao |
| globallivedata.app | sim | 14.99 | 15.00 | nao |
| globallivedata.live | sim | 3.99 | 35.00 | nao |
| globaldatapulse.com | sim | 11.25 | 11.25 | nao |

liveworlddata.com, globaldatanow.com e globallivedata.com.br retornaram available=false: indisponibilidade ou verificacao nao confirmada pela Vercel, nao prova de registro por terceiro. Recomendacao ainda nao escolhida: globallivedata.com, por preservar o nome global e ter cotacao anual menor. Nao houve busca juridica de marca.

## Evidencia publica de busca

HTTP anonimo em /robots.txt, /sitemap.xml, /en, /pt, /es, /pt/weather/mexico-city e /pt/elections/brazil: 200/HTTPS. Sitemap69 URLs/207 alternates, somente origin publicado, sem labs. Pages publicas amostradas sem noindex. Previsao/comparacao tem canonical correto; home EN/PT/ES nao tem canonical explicito. Fonte de origin: lib/editorial/catalog.ts#siteOrigin. Nao foi acessado Search Console e nenhuma indexacao foi demonstrada.

## Proximo passo concreto

1. Obter escolha do dominio, termo, preco maximo/encargos e preferencia de renovacao; conferir cotacao atual antes de qualquer compra. Dados de registrante devem vir do proprietario e nunca ir ao cerebro/Git.
2. Apos registro autorizado, associar ao projeto existente, ler os DNS exigidos para aquele dominio, escolher apex/www principal e redirecionar o alternativo. Preservar MX/TXT de email. Validar DNS e HTTPS; nao usar um A/CNAME universal inventado.
3. Alterar origin e metadados EN/PT/ES/canonical/hreflang/sitemap juntos. Adicionar canonical da home e revisar redirecionamento do vercel.app sem loop/404 nem perder queries validas. Testar e publicar pelo fluxo existente.
4. Verificar propriedade no Google Search Console (DNS TXT para propriedade de dominio), enviar sitemap e inspecionar home, artigo e categoria. Envio nao garante indexacao/posicao. Sem necessidade de adicionar analytics para essa verificacao.
5. Antes de promocao ampla, concluir iPhone Safari nativo e medir trafego/custo real por instancia. Evidencia atual de emulacao/carga em [[validation-workflow]]. Nao inferir capacidade Vercel dos numeros locais.

Referencias primarias consultadas19/10: https://vercel.com/docs/domains/registrar-api ; https://vercel.com/docs/domains/set-up-custom-domain ; https://support.google.com/webmasters/answer/9008080 ; https://developers.google.com/search/docs/crawling-indexing/sitemaps/build-sitemap .

## Conexoes
- [[index]] - Mapa.
- [[current]] - Proximo passo.
- [[2026-10-19-mobile-load-launch]] - Handoff verificado.
- [[2026-10-19-mobile-load-and-domain-research]] - Escolha e autorizacao.
- [[validation-workflow]] - Evidencias e limites.
- [[release-status]] - Correcao publicada.
- [[2026-10-19-getafe-editorial-release]] - Editorial publicado sem alterar pendencia de dominio.
- [[2026-10-19-usd-fx-refresh-release]] - Correcao USD sem alterar pendencia de dominio.
