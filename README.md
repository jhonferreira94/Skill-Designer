# Skill-Designer

## O que é isto, em uma frase

É um "manual de instruções" que ensina a inteligência artificial do
**GitHub Copilot** (dentro do programa VS Code) a se comportar como um
**designer de aplicativos experiente**. Quando esse manual está ligado, a IA
ajuda a planejar telas, fluxos e a aparência de um app — seguindo boas práticas
de verdade, e não só "deixando bonito".

> **O que é uma "skill"?** Pense numa skill como um caderno de regras que a IA
> lê antes de te ajudar. Esse caderno faz a IA responder de um jeito mais
> profissional e organizado sobre um assunto específico — aqui, o assunto é
> **design de produtos digitais (apps e telas)**.

---

## O que essa skill sabe fazer

Quando ativada, a IA passa a pensar como um designer sênior e te ajuda com:

- **Entender o problema antes de desenhar** — quem vai usar o app, qual a
  dificuldade da pessoa e o que o negócio precisa.
- **Organizar a informação** — onde fica cada coisa, como é o menu, qual o
  caminho que o usuário percorre.
- **Olhar exemplos de referência** — comparar com apps que servem de modelo
  para seguir um bom padrão.
- **Definir o visual** — cores, tamanhos de texto, espaçamentos, sempre de forma
  organizada e reutilizável.
- **Montar as telas** usando componentes prontos da biblioteca
  **[Gluestack UI](https://gluestack.io/)** (botões, campos, caixas de aviso etc.).
- **Checar se está fácil de usar** — usando regras conhecidas de usabilidade
  (Heurísticas de Nielsen, Lei de Hick, Lei de Fitts).
- **Garantir acessibilidade** — que pessoas com dificuldades visuais ou motoras
  também consigam usar (contraste de cores, navegação por teclado etc.).

> **Regra importante:** toda vez que a skill é usada, a IA **primeiro pergunta
> quais projetos servem de modelo (referência)** antes de começar a desenhar.
> Assim ela segue o estilo que você já tem.

---

## O que tem dentro deste repositório (os arquivos)

Cada arquivo é um pedaço do "caderno de regras". Você não precisa editar nada
para usar — eles existem para a IA ler.

```
SKILL.md            -> o arquivo principal (o resumo de tudo)
references/         -> explicações mais detalhadas de cada tema:
├── product-thinking.md        -> pensar no problema antes da tela
├── info-architecture.md       -> organização e menus do app
├── benchmarking.md            -> comparar com apps de referência
├── design-systems.md          -> o conjunto de padrões visuais
├── design-tokens.md           -> cores, textos e espaçamentos
├── gluestack-components.md    -> os componentes prontos (botões, campos...)
├── nielsen-heuristics.md      -> regras de "fácil de usar"
├── ux-laws.md                 -> leis de design (Hick, Fitts...)
└── accessibility.md           -> incluir todo mundo (acessibilidade)
rules/              -> regras práticas operacionais:
├── espacamento-figma.md       -> padding fantasma de 10px no Auto Layout
└── acesso-inicial-figma.md    -> login + link do arquivo antes de editar
scripts/            -> atalhos para sincronizar com o GitHub (ver mais abaixo)
```

---

## Como usar a skill no dia a dia

Depois de instalada (veja a seção de instalação), é só conversar com o Copilot
no VS Code. Há duas formas:

**1. Chamando direto:** digite uma barra e o nome da skill no chat:

```
/designer
```

Você pode completar com o pedido, por exemplo:
`/designer me ajude a montar a tela de login`.

**2. Sem chamar nada:** basta escrever um pedido sobre design que a IA já liga a
skill sozinha. Exemplos:

- "Me ajuda a desenhar a tela de cadastro"
- "Quais cores combinam para esse app?"
- "Esse fluxo está fácil de usar?"

### Fluxo obrigatório para tarefas em Figma

Sempre que a demanda envolver criar/editar no Figma, a IA deve pedir isso
antes de começar:

1. Confirmar que o usuário está logado no Figma.
2. Pedir o link completo do arquivo.
3. Pedir, quando possível, o link da seção/frame com `node-id`.

Sem essas 3 confirmações, a IA não deve iniciar edição.

Onde pegar o link do Figma:
- barra de endereço do navegador;
- botão **Share** -> **Copy link**;
- link da seleção/frame (para incluir `node-id`).

Regra detalhada: [rules/acesso-inicial-figma.md](rules/acesso-inicial-figma.md).

---

## Como instalar (passo a passo)

A skill precisa ficar numa pasta específica do seu computador para o Copilot
encontrá-la. O endereço dessa pasta é:

- **Windows:** `C:\Users\SEU-USUARIO\.copilot\skills\designer\`
- **Mac ou Linux:** `~/.copilot/skills/designer/`

Você tem duas opções:

**Opção A — Baixar do GitHub (mais simples):**
1. Baixe este repositório (botão verde **Code** → **Download ZIP**).
2. Descompacte.
3. Copie os arquivos (`SKILL.md`, a pasta `references` etc.) para a pasta acima.

**Opção B — Usar o script pronto:** veja a seção de sincronização logo abaixo.

---

## Manter atualizado (sincronização)

Esta skill existe em **dois lugares ao mesmo tempo**:

1. **No seu computador** (a pasta que o Copilot lê).
2. **Aqui no GitHub** (onde fica guardada e versionada).

Para os dois lados ficarem sempre iguais, há dois "atalhos" prontos na pasta
`scripts/`. Você não precisa entender de programação — é só rodar o comando.

- **Enviei mudanças do computador para o GitHub** (depois de editar a skill):

  ```powershell
  powershell -ExecutionPolicy Bypass -File .\scripts\sync-to-git.ps1 -Message "o que você mudou"
  ```

- **Trazer do GitHub para o computador** (depois que algo foi atualizado aqui):

  ```powershell
  powershell -ExecutionPolicy Bypass -File .\scripts\sync-from-git.ps1
  ```

> **Como rodar esses comandos?** Abra o programa **PowerShell** (ou o terminal
> do VS Code), entre na pasta deste projeto e cole o comando. O `-Message` é só
> um bilhetinho dizendo o que mudou (ex.: `"ajustei as cores"`).
>
> Se você tiver o PowerShell 7 instalado, pode trocar a palavra `powershell` por
> `pwsh`. Se não tiver, use `powershell` mesmo — funciona igual.

---

## Resumo rápido

| Quero... | Faça isto |
|---|---|
| Usar a skill | Digite `/designer` no chat do Copilot |
| Instalar | Copie os arquivos para a pasta `.copilot/skills/designer/` |
| Salvar mudanças no GitHub | Rode `sync-to-git.ps1` |
| Pegar a versão mais nova | Rode `sync-from-git.ps1` |
