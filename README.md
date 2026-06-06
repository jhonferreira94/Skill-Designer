# Skill-Designer

Skill completa de **Product Design / UX-UI** para GitHub Copilot (VS Code),
baseada na biblioteca **[Gluestack UI](https://gluestack.io/)**.

A skill cobre:

- **Product Thinking** — problema, usuário, JTBD, MVP, métricas
- **Arquitetura da Informação** — estrutura, navegação, user flows
- **Análise de produtos de referência (benchmarking)**
- **Design System & Tokens (Gluestack)** — cores, tipografia, espaçamento
- **Componentes (Gluestack)** — toda a biblioteca
- **Heurísticas de Nielsen** — checklist de usabilidade
- **Acessibilidade** — WCAG 2.2 AA
- **Qualidade visual**

> Regra obrigatória: ao usar a skill, o agente **sempre pede/confirma os
> projetos de referência** antes de começar.

## Estrutura

```
SKILL.md
references/
├── product-thinking.md
├── info-architecture.md
├── benchmarking.md
├── design-systems.md
├── design-tokens.md
├── gluestack-components.md
├── nielsen-heuristics.md
└── accessibility.md
```

## Instalação (skill pessoal do Copilot)

Copie o conteúdo deste repositório para a pasta de skills do Copilot:

- Windows: `%USERPROFILE%\.copilot\skills\designer\`
- macOS/Linux: `~/.copilot/skills/designer/`

## Sincronização com a skill local

Os scripts em `scripts/` mantêm o repositório e a pasta local
(`~/.copilot/skills/designer/`) sincronizados:

- **`scripts/sync-to-git.ps1`** — copia da skill local → repositório, commita e
  faz push (use depois de editar a skill localmente).
- **`scripts/sync-from-git.ps1`** — faz `git pull` e copia do repositório →
  skill local (use depois de atualizar o repositório).

### Como rodar (Windows)

```powershell
# Local -> GitHub (após editar a skill)
powershell -ExecutionPolicy Bypass -File .\scripts\sync-to-git.ps1 -Message "sua mensagem"

# GitHub -> Local (após atualizar o repositório)
powershell -ExecutionPolicy Bypass -File .\scripts\sync-from-git.ps1
```

> Se você tiver o PowerShell 7 instalado, pode trocar `powershell` por `pwsh`.
