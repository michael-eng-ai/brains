---
tipo: "conceito"
projeto: "global-live-data"
resumo: "Contato publico separado do identificador MET e lacunas de privacidade."
tags: ["global-live-data", "conceito"]
atualizado: "2026-10-16"
---

# Contato publico e privacidade

Confirmado: GLD_PUBLIC_CONTACT_EMAIL e validado no servidor e exibido como mailto nas tres paginas de privacidade. Nao e extraido de MET_USER_AGENT. Contato ausente/invalido fica oculto; aviso especifico de contato indisponivel permanece.

O proprietario autorizou o contato em conversa anterior. Nao guardar valor no cerebro, fonte, logs ou capturas. Os testes de browser zeram as duas variaveis para serem independentes da configuracao local.

Hospedagem Vercel e operador publico Datasanti Insights divulgados nas tres linguas conforme [[2026-10-16-publish-consolidation]]. O proprietario declarou nao exportar/guardar logs externos; Settings/Drains do projeto mostrou nenhuma associacao em 16/10. Vercel ainda processa metadados tecnicos. Prazo efetivo de todos os registros/retencao da conta nao foi auditado; nao prometer exclusao universal. Isso nao e certificacao juridica.

Texto tipado em lib/i18n.ts, privacyDictionaries; app/[lang]/privacy/page.tsx mantem contato server-only separado. Inclui procedimento publico de correcao e esclarece RSS apenas editorial. docs/OPERATIONS.md e fonte atual para procedimento operacional.

## Conexoes
- [[architecture]] - Mapa dos componentes e fronteiras do servidor.
- [[environment]] - Configuracao por nomes e comandos verificados, sem valores privados.
- [[index]] - Mapa de conhecimento e entrada do projeto.
- [[met-forecast]] - Previsao MET condicionada a identificacao publica autorizada.
- [[consolidation-audit]] - Auditoria atual, evidencia e limites de consolidacao.
- [[2026-10-16-consolidation-release]] - Handoff da consolidacao publicada.
- [[2026-10-16-publish-consolidation]] - Autorizacao especifica de consolidacao e publicacao.
