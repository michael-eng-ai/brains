# Sequencia para um notebook de projeto unico

Objetivo: chegar num notebook que trabalha em um projeto so, criar o cerebro dele em uma sessao,
absorver tudo o que as IAs daquela maquina ja aprenderam, e deixar tudo acessivel para Claude
Code, Codex e qualquer outra IA. Siga na ordem. Cada prompt e autocontido: cole como esta,
trocando `<id>` pelo id do projeto (nome curto, sem espaco, igual em todas as maquinas) e
`<caminho>` pelo caminho do repositorio.

## Passo 0: instalar o kit (terminal, sem admin)

Se o repositorio `brains` ja tem remoto:

```bash
git clone <URL-DO-REMOTO> ~/brains && ~/brains/install.sh
```

```powershell
git clone <URL-DO-REMOTO> "$HOME\brains"; Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; & "$HOME\brains\install.ps1"
```

Se ainda nao tem remoto (primeiro notebook): copie a pasta `brains` (zip ou pendrive) para a
home, rode o `install`, e publique no fim (Prompt 6).

Depois, na raiz do repositorio do projeto:

```bash
~/brains/link.sh <id>
```

```powershell
& "$HOME\brains\link.ps1" -ProjectId <id>
```

Sem terminal disponivel? Pule direto para o Prompt 1: a IA faz o `link` manualmente.

## Prompt 1: criar o cerebro e absorver o que ja existe em arquivos

Abra o projeto no Claude Code (CLI, extensao do VS Code ou app) e cole:

```text
Siga a skill brain (~/.claude/skills/brain/SKILL.md) no modo init para o projeto <id>,
repositorio em <caminho>. Se ~/brains/<id>/ nao existir, execute o modo link primeiro
(manualmente se os scripts nao rodarem).

Nesta etapa colete apenas as fontes 1 a 6 da secao 3.1 da skill: README e docs do repo,
CLAUDE.md, CLAUDE.local.md, AGENTS.md, regras de Cursor/Copilot/Gemini, skills em
~/.claude/skills e ~/.codex/skills que citem o projeto, auto memory em
~/.claude/projects/*/memory, ~/.codex/memories e ~/.codex/rules, git remote/branches/log.

Copie cada fonte original em sources/ com origem e data. Destile em notas atomicas em notes/
(um conceito por arquivo: tabela, pipeline, componente, termo, pessoa/papel) e nos arquivos
AGENTS.md (menos de 200 linhas), project.md, architecture.md, environment.md, current.md,
decisions/, traps/ e runbooks/, que devem linkar para as notas em vez de repetir fatos.
Aplique a disciplina de grafo da secao 0.1 da skill: frontmatter com resumo e tags, secao
## Conexoes em todo arquivo, links reciprocos, index.md como MOC listando tudo. Marque
confirmado, hipotese ou pendente.

Segredos: enumere toda variavel de ambiente que o codigo, os docs e o CI usam e preencha a
tabela de environment.md com nome, onde e usada, tipo, onde obter o valor e se e obrigatoria.
Nunca o valor. Confira se .env esta no .gitignore do projeto e me avise se nao estiver; se nao
existir .env.example, proponha um com os nomes e valores vazios sem criar no repositorio do
time. Nao altere arquivos do repositorio do time.

Ao final rode ~/brains/graph.sh <id> (Windows: graph.ps1 -ProjectId <id>) e corrija links
quebrados e notas orfas. Entregue: arquivos criados com numero de linhas, numero de notas e de
links, fontes usadas, lacunas, resultado do scan de segredos. Ainda nao faca commit.
```

## Prompt 2: minerar o historico que a IA ja acumulou nesta maquina

```text
Continue o brain init do projeto <id>, agora com a fonte 7 da secao 3.1 da skill: as
transcricoes de sessoes desta maquina.

Localize as sessoes deste projeto em ~/.claude/projects/ (a pasta cujo nome corresponde ao
caminho <caminho> com barras trocadas por hifens), em ~/.claude/history.jsonl filtrando por
esse cwd, e em ~/.codex/sessions, ~/.codex/archived_sessions e ~/.codex/session_index.jsonl.
Liste as sessoes encontradas com data e tamanho antes de ler qualquer uma.

Nao leia os arquivos inteiros nem copie transcricoes para o cerebro. Extraia por grep ou jq:
mensagens do usuario, resumos finais do assistente, comandos executados, erros repetidos e
frases com decid, nunca, sempre, erro, funcionou, PR, branch. Processe em ordem cronologica.

Grave o resultado em: notes/ (conceitos novos), decisions/ (uma por arquivo, com data e
evidencia "transcricao <arquivo>"), traps/ (um por arquivo), runbooks/ (procedimentos que
apareceram mais de uma vez), current.md (estado mais recente) e sessions/historico.md (uma
linha por sessao: data, ferramenta, o que foi feito, evidencia). Cada arquivo novo linka para
as notas que toca e recebe o link de volta; atualize index.md. Rode graph.sh <id> e corrija o
que ele apontar. Ao final, diga quantas sessoes foram mineradas, quantas notas, decisoes e
traps surgiram, e o que ficou sem fonte.
```

## Prompt 3: auditar antes de confiar

```text
Rode ~/brains/graph.sh <id> e leia catalog.md. Depois leia ~/brains/<id>/ inteiro, exceto
sources/. Aponte e corrija: links quebrados e notas orfas; fatos repetidos em mais de uma nota
(deixe o fato na nota do conceito e troque as copias por links); notas com menos de 2 links de
saida; afirmacoes sem data ou sem evidencia; comandos marcados como verificados que nao foram
executados nesta maquina (execute os que forem seguros e somente leitura, marque os outros como
"nao verificado"); decisoes sem motivo; qualquer segredo, token, senha ou PII (o cerebro so
pode ter nomes de variaveis, os valores ficam no .env do projeto); variaveis que o codigo le
e que faltam na tabela de environment.md; arquivos
ausentes em index.md; conteudo de current.md que deveria estar em sessions/; AGENTS.md acima
de 200 linhas. Aplique so as correcoes que nao mudam o significado, rode graph.sh de novo ate
zerar links quebrados e orfaos, e liste o que precisa da minha decisao.
```

## Prompt 4: fechar a carga inicial

```text
brain save para o projeto <id>. Crie sessions/<data>-init.md descrevendo o que foi absorvido
(fontes de arquivo e transcricoes), lacunas e o proximo passo. Reescreva current.md. Rode
~/brains/sync.sh "feat(<id>): initial brain load" (Windows: sync.ps1). Se nao houver remoto,
faca apenas o commit local e diga "publicacao pendente".
```

## Prompt 5: teste de aceitacao com a segunda IA

Abra o mesmo projeto no Codex (ou Cursor) e cole:

```text
Leia ~/brains/<id>/index.md, current.md e o arquivo mais recente em sessions/. Depois
responda, citando o arquivo de origem de cada resposta: qual e o foco atual do projeto, qual
foi a ultima decisao registrada e por que, e qual e o proximo passo concreto. Se nao conseguir
ler os arquivos, diga isso em vez de responder de memoria.
```

Passou se as tres respostas vierem do cerebro, com o arquivo citado. Se a IA nao achou a pasta,
rode o Passo 0 de novo (o bloco global em `~/.codex/AGENTS.md` e quem aponta o caminho).

## Prompt 6: publicar e preparar a replicacao

No terminal (uma vez, no primeiro notebook):

```bash
cd ~/brains && git remote add origin <URL-PRIVADA> && git push -u origin main
```

Depois, para a IA:

```text
Confirme que ~/brains tem remoto configurado e esta sincronizado (git status, git log -1,
git remote -v). Escreva em ~/brains/<id>/runbooks/replicar-em-outra-maquina.md o passo a passo
exato para macOS/Linux e Windows: clone, install, link com o id <id>, brain resume. Inclua o
que fazer sem admin e sem acesso ao GitHub. Rode brain save.
```

## Uso diario (depois da carga inicial)

Abrir o projeto:

```text
brain resume para o projeto <id>. Rode git pull no ~/brains antes de ler. Em ate 10 linhas:
ultimo handoff, foco atual, proximo passo registrado e divergencias com o estado real do
repositorio. Depois: <TAREFA>.
```

Encerrar ou apos um marco (PR aberto, decisao, trap descoberto):

```text
brain save. Registre so o que foi comprovado nesta sessao: decisoes e motivos, o que evitar,
proximo passo concreto com caminhos e comandos, e um prompt inicial autocontido para a proxima
sessao. Atualize current.md, faca commit e push, e me diga se o push chegou ao remoto.
```

## Opcional: enxugar uma skill antiga que virou redundante

```text
A skill ~/.claude/skills/<nome>/SKILL.md tem conhecimento do projeto <id> que ja esta em
~/brains/<id>/ (a copia verbatim esta em sources/). Reescreva a skill com no maximo 40 linhas:
descricao, gatilhos e a instrucao "leia ~/brains/<id>/index.md antes de qualquer tarefa".
Mostre o diff antes de gravar.
```

## Ordem de chegada num notebook novo do mesmo projeto

Passo 0 (clone + install + link) e depois direto "brain resume". A carga inicial (Prompts 1 a
4) so roda uma vez por projeto; nas outras maquinas o conhecimento chega pelo `git clone`.
