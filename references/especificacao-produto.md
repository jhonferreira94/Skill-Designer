# Especificação de Produto (end-to-end)

Playbook do **modo "produto completo"**: usado quando o pedido não é uma tela
isolada, mas **projetar/documentar um produto inteiro** (ou módulo grande) de
ponta a ponta, pronto para ser desenhado no Figma e depois desenvolvido.

> Para uma **tela ou fluxo único**, use a *saída por-tela* (10 pontos) do
> SKILL.md. Este playbook é a escala maior.

## Quando usar
- "Crie o produto X", "monte o sistema de Y", "especifique o app de Z".
- Escopo com múltiplos perfis, módulos, regras de negócio e estados.

## Antes de começar
1. Peça os **projetos de referência** (regra obrigatória da skill).
2. Confirme o **escopo** e as **restrições** (plataforma, prazo, integrações).
3. Rode [Product Thinking](./product-thinking.md) para fixar problema/usuário/valor.

## Roteiro de entrega (ordem fixa)
Entregue nesta sequência, com profundidade de PD Sênior:

1. **Visão geral do produto** — problema, objetivos de negócio, objetivos do
   usuário, funcionalidades principais × secundárias, dependências e regras-chave.
2. **Perfis de usuário** — ver [Perfis e Permissões](./perfis-e-permissoes.md)
   (matriz de permissões por perfil).
3. **Jornada de cada perfil** — entrada, fluxo principal, alternativos, erro,
   aprovação, cancelamento, recuperação (passo a passo). Base em [IA](./info-architecture.md).
4. **Arquitetura da informação** — módulos, seções, subseções, navegação
   principal/secundária, breadcrumbs, relações entre páginas (hierárquico).
5. **Sitemap completo** — todas as páginas em árvore (ver formato abaixo).
6. **Fluxos detalhados** — para cada funcionalidade, ver
   [Ações de Componentes](./acoes-de-componentes.md) (ação → sistema → tela →
   feedback → próximo passo). Cobrir: 1º acesso, login, cadastro, recuperação de
   senha, criar, editar, excluir, aprovar, reprovar, buscar, filtrar, exportar,
   upload, notificações, encerramento.
7. **Lista de telas** — objetivo, informações exibidas, campos, botões, cards,
   tabelas, modais, drawers, tooltips, mensagens.
8. **Componentes de cada tela** — mapeados ao [Gluestack](./gluestack-components.md).
9. **Ações de todos os botões** — ver [Ações de Componentes](./acoes-de-componentes.md).
10. **Modais, drawers e feedback** — ver [Estados de Interface](./estados-de-interface.md)
    (modais e sistema de feedback).
11. **Estados das interfaces** — default, loading, vazio, erro, sucesso,
    confirmação (ver [Estados de Interface](./estados-de-interface.md)).
12. **Regras de negócio** — campos obrigatórios, status e transições; ver
    [Regras de Negócio](./regras-de-negocio.md) (tabelas de estado).
13. **Componentes do Design System** — inventário (ver lista no SKILL.md / Gluestack).
14. **Casos extremos e exceções** — ver [Fluxos Excepcionais](./fluxos-excepcionais.md).

## Formato de sitemap
```
Dashboard
- Visão geral
- Indicadores
- Atividades recentes
Usuários
- Lista de usuários
- Cadastro
- Detalhes
- Editar usuário
- Histórico
Configurações
- Perfil
- Segurança / Permissões
- Preferências
```

## Princípios ao longo de toda a entrega
- **Fluxo feliz primeiro**, depois erros e exceções.
- **Consistência** de padrões entre perfis e módulos.
- **Acessibilidade** ([WCAG](./accessibility.md)) e **usabilidade**
  ([Nielsen](./nielsen-heuristics.md), [Leis de UX](./ux-laws.md)) em todos os fluxos.
- Cada componente tem **função clara** — nada por estética.
