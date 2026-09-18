# brains: segundo cerebro por projeto para qualquer IA

> **English summary.** `brains` is a portable, file-based "second brain" per project: plain
> Markdown organized as a graph (wikilinks, atomic notes, a map of content), read by Claude
> Code, Codex, Cursor, Copilot, Gemini or any AI that can open files, and carried between
> machines with Git. No server, no database, no symlinks, no admin rights. Works on macOS,
> Linux and Windows. Documentation is in Brazilian Portuguese; scripts and the skill are in English.

Conhecimento persistente de cada projeto, em Markdown, organizado como um grafo, lido por
qualquer IA e levado entre maquinas por Git. Sem servidor, sem banco, sem symlink, sem
direitos de administrador. Funciona em macOS, Linux e Windows.

## Por que existe

Toda IA de codigo comeca a sessao do zero. O que ela aprendeu sobre o seu projeto (decisoes,
comandos que funcionam, erros que se repetem, quem decide o que) fica preso na ferramenta e na
maquina onde aconteceu. Este kit tira esse conhecimento de dentro das ferramentas e coloca em
arquivos que qualquer IA le, em qualquer computador, e que voce mesmo consegue abrir e editar.

## Como funciona

```text
~/brains/                      <- este repositorio
  _template/                   <- estrutura copiada para cada projeto novo
  _skills/brain/SKILL.md       <- skill instalada em ~/.claude/skills e ~/.codex/skills
  _global/*.block.md           <- bloco adicionado em ~/.claude/CLAUDE.md e ~/.codex/AGENTS.md
  _stubs/                      <- arquivos locais escritos dentro de cada projeto
  install.sh | install.ps1     <- instala a integracao na maquina (uma vez por maquina)
  link.sh    | link.ps1        <- liga um repositorio ao seu cerebro (uma vez por projeto por maquina)
  unlink.sh  | unlink.ps1      <- desfaz o link (remove so os arquivos locais do projeto)
  graph.sh   | graph.ps1       <- lint do grafo (links quebrados, orfaos) e gera catalog.md
  sync.sh    | sync.ps1        <- commit + pull --rebase + push
  PROMPTS.md                   <- sequencia de prompts para criar o cerebro de um projeto
  <projeto>/                   <- o cerebro de cada projeto (um por pasta)
    AGENTS.md  index.md (MOC)  catalog.md (gerado)  project.md  current.md  architecture.md  environment.md
    notes/  decisions/  traps/  runbooks/  sessions/  sources/
```

Cada IA descobre o cerebro por tres caminhos redundantes:

1. Bloco global em `~/.claude/CLAUDE.md` e `~/.codex/AGENTS.md`: manda ler `~/brains/<id>/` antes da primeira tarefa.
2. Arquivos locais no projeto, fora do Git do time: `.brain` (id), `CLAUDE.local.md` (import do Claude Code) e um stub `AGENTS.md` (so se o repositorio nao tiver um).
3. A skill `brain`, com os modos `init`, `resume`, `save` e `link`.

Fluxo de uma sessao:

```text
abrir o projeto -> brain resume (le index, current, ultimo handoff, catalogo)
trabalhar        -> a IA segue [[links]] e abre so as notas que a tarefa exige
encerrar         -> brain save (handoff em sessions/, current.md, graph.sh, commit, push)
outra maquina    -> git pull acontece dentro do resume
```

## Instalar em uma maquina (sem admin)

Pre-requisito unico: `git`. Sem `git` na maquina, o GitHub Desktop e o Git portatil (Windows)
instalam por usuario.

macOS ou Linux:

```bash
git clone https://github.com/michael-eng-ai/brains.git ~/brains
~/brains/install.sh
```

Windows (PowerShell 5.1 ou 7, sem admin):

```powershell
git clone https://github.com/michael-eng-ai/brains.git "$HOME\brains"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
& "$HOME\brains\install.ps1"
```

O instalador so escreve em `~/.claude` e `~/.codex`. Rodar de novo e seguro: ele substitui o
bloco entre os marcadores `brains:start` e `brains:end` e recopia a skill.

Os cerebros dos seus projetos sao dados privados. Mantenha-os em um fork ou clone privado
deste repositorio (ou em outro remoto privado, inclusive Azure DevOps ou GitLab) e use este
repositorio publico apenas como origem do kit.

## Ligar um projeto

Na raiz do repositorio do projeto:

```bash
~/brains/link.sh meu-projeto
```

```powershell
& "$HOME\brains\link.ps1" -ProjectId meu-projeto
```

O id e o nome da pasta em `~/brains/`: curto, sem espaco, sem acento, igual em todas as
maquinas mesmo que o caminho do repositorio mude. Nada usa symlink, entao nao precisa de
Developer Mode nem de `core.symlinks` no Windows.

## Primeira carga: a IA despeja tudo o que ja sabe

Siga a sequencia numerada em [PROMPTS.md](PROMPTS.md). Em resumo:

| Passo | O que faz |
| --- | --- |
| 0 | Instala o kit e liga o projeto (terminal) |
| 1 | A IA absorve o que esta em arquivos: README, docs, `CLAUDE.md`, `AGENTS.md`, skills, auto memory, git log |
| 2 | A IA minera as transcricoes de sessao que Claude Code e Codex guardam na maquina |
| 3 | Auditoria: links quebrados, fatos repetidos, comandos nao verificados, segredos |
| 4 | Handoff e commit |
| 5 | Teste de aceitacao com a segunda IA |
| 6 | Publica o remoto e gera o runbook de replicacao |

A carga inicial roda uma vez por projeto; nas outras maquinas o conhecimento chega pelo `git clone`.

## O cerebro e um grafo

Os arquivos se conectam por wikilinks `[[nome]]`, o mesmo formato do Obsidian: abra `~/brains`
como vault e o Graph View mostra as conexoes. Regras que a skill aplica em toda escrita:

- Todo arquivo tem frontmatter com `tipo`, `projeto`, `resumo` (uma linha), `tags` e `atualizado`.
- Todo arquivo termina com `## Conexoes`; um link so conta quando e reciproco.
- Um conceito por nota em `notes/`; decisoes, traps, runbooks e sessoes linkam para as notas
  em vez de repetir fatos. `index.md` e o MOC: lista tudo e recebe link de volta de tudo.
- `graph.sh <id>` verifica links quebrados, notas orfas, nomes duplicados, frontmatter e
  `## Conexoes` ausentes, e gera `catalog.md` (uma linha por nota com tipo, resumo, tags e
  contagem de links). A IA le o catalogo e abre so o que a tarefa precisa: e isso que mantem o
  contexto curto mesmo com um cerebro grande.

## Segredos: sempre um `.env`, nunca no cerebro

Regra do kit, aplicada pela skill em todos os modos:

- Todo segredo, token, chave de API, senha ou connection string do projeto vive em um arquivo
  `.env` na raiz do repositorio do projeto, listado no `.gitignore` e nunca commitado.
- O cerebro guarda apenas os **nomes** das variaveis, onde cada uma e usada e onde obter o valor
  (portal, cofre, pessoa responsavel). A tabela fica em `environment.md`.
- Na carga inicial (`brain init`) a IA enumera as variaveis que o codigo le (`os.environ`,
  `getenv`, `process.env`, `${VAR}`, `dbutils.secrets`, etc.), confere se `.env` esta no
  `.gitignore`, e sugere um `.env.example` com os nomes e valores vazios para ser commitado.
- Antes de cada `save` a skill roda um scan de segredos no cerebro. Se encontrar um valor,
  remove e avisa.
- Em maquina nova: clonar o projeto, copiar `.env.example` para `.env`, preencher os valores,
  e conferir com a tabela de `environment.md` se falta alguma variavel.

Ler o cerebro com uma IA hospedada envia o conteudo consultado ao provedor dela; por isso o
cerebro nunca pode conter valores, so ponteiros.

## Estrutura de um cerebro

| Arquivo ou pasta | Papel |
| --- | --- |
| `AGENTS.md` | Entrada canonica para qualquer IA: regras, comandos verificados, ponteiros. Menos de 200 linhas. |
| `index.md` | MOC: mapa de conhecimento com todas as notas linkadas por secao. |
| `catalog.md` | Gerado por `graph.sh`: uma linha por nota com tipo, resumo, tags e links. |
| `project.md` | Objetivo, escopo, pessoas e papeis, vocabulario. |
| `current.md` | Foco atual, em andamento, proximos passos. Volatil, reescrito a cada `save`. |
| `architecture.md` | Componentes, fluxo de dados, dependencias, ambientes. |
| `environment.md` | Setup por sistema operacional, comandos verificados, tabela de variaveis do `.env`. |
| `notes/` | Notas atomicas: um conceito por arquivo. Os fatos moram aqui. |
| `decisions/` | Uma decisao por arquivo, com motivo, alternativas e evidencia. Nunca apaga. |
| `traps/` | Um erro conhecido por arquivo, ligado ao componente e ao runbook que o evita. |
| `runbooks/` | Procedimentos passo a passo com comandos exatos. |
| `sessions/` | Handoff por sessao e `historico.md` com a linha do tempo. |
| `sources/` | Copias verbatim de fontes (skills antigas, docs, transcricoes) com origem e data. |

## Windows: detalhes que importam

- `install.ps1`, `link.ps1` e `graph.ps1` gravam UTF-8 sem BOM e usam barras normais nos
  caminhos dentro dos arquivos Markdown, para o import `@` do Claude Code funcionar.
- Se a politica de execucao bloquear scripts, use `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
  na mesma janela; nao exige admin e vale so para a sessao.
- Se ate isso for bloqueado, a IA faz os passos do `link` manualmente com as ferramentas de
  arquivo dela; a skill descreve os passos.

## Maquinas restritas (sem admin)

Instale so o que roda por usuario: extensao Claude Code no VS Code ou Cursor (traz o CLI
embutido), extensao Codex (login com conta ChatGPT), e o instalador nativo do Claude Code se
quiser o CLI no terminal (`curl -fsSL https://claude.ai/install.sh | bash` ou
`irm https://claude.ai/install.ps1 | iex`; ambos gravam em `~/.local`). Homebrew, gerenciadores
de dotfiles, MCP servers e plugins extras ficam para as maquinas com admin. O cerebro nao
depende de nenhum deles.

## Convencoes profissionais

Valem para este repositorio, para cada cerebro e para qualquer commit feito pela skill:

- Commits e pull requests sem assinatura de nenhum tipo: sem `Co-Authored-By`, sem "Generated
  with", sem nome de IA, sem nome ou e-mail de pessoa no corpo da mensagem. O repositorio ja
  registra a autoria.
- Mensagens de commit em Conventional Commits (`feat:`, `fix:`, `docs:`, `chore:`,
  `refactor:`, `test:`), uma mudanca logica por commit, assunto em ingles, imperativo, ate 72
  caracteres. Nunca commit direto em `main` de um repositorio compartilhado: sempre via pull request.
- Sem emojis em lugar nenhum: notas, commits, nomes de arquivo, logs, scripts.
- Nomes de arquivo em kebab-case, ASCII, sem acento. Codigo, variaveis e comentarios em ingles.
- Nenhuma nota diz qual IA a escreveu. A ferramenta aparece apenas no campo `ia:` dos arquivos
  de sessao, como metadado operacional.

## Regras

- Nunca gravar segredo, token, senha ou PII no cerebro. Apenas ponteiros para o `.env`.
- Nunca alterar `CLAUDE.md`, `AGENTS.md` ou `README` que pertencam ao repositorio do time. Os
  arquivos locais ficam em `.git/info/exclude`.
- Uma maquina edita e faz push; a outra faz pull antes de editar. Conflito de Git se resolve na
  mao; o `sync` nao sobrescreve nada.
- `current.md` e volatil; `sessions/` e historico; `decisions/` nunca apaga, so marca como substituida.

## Perguntas frequentes

**Por que nao um MCP de memoria ou um servico hospedado?** Porque agentes em nuvem (Claude
Code web, Codex cloud, Cursor cloud, Copilot) so enxergam o que esta em arquivos, e porque
arquivos funcionam em maquina sem admin, sem rede corporativa liberada e sem conta extra. Um
MCP de busca semantica pode ser adicionado por cima, apontando para `~/brains`.

**O Claude Code le `AGENTS.md`?** Nao nativamente. Por isso o `link` escreve `CLAUDE.local.md`
com um import `@` para o `AGENTS.md` do cerebro. Codex, Cursor, Copilot e outros leem
`AGENTS.md` direto.

**E se o repositorio do time ja tem `AGENTS.md`?** O `link` nao toca nele. O bloco global em
`~/.codex/AGENTS.md` e quem manda a IA procurar `~/brains/<id>/`.

**Posso usar o vault Obsidian que ja tenho?** Sim. Abra `~/brains` como um segundo vault, ou
mova a pasta para dentro do vault existente e ajuste `BRAINS_DIR` na variavel de ambiente.

## Licenca

MIT. Veja [LICENSE](LICENSE).
