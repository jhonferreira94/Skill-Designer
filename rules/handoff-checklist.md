# Checklist de Handoff (certificação)

Regra que **certifica** que o entregável está completo e pronto para
desenvolvimento. Use sempre que o trabalho entrar em fase de handoff
(ver playbook [handoff-documentacao](../references/handoff-documentacao.md)).

> Objetivo de aceite: **um desenvolvedor implementa o produto sem precisar
> fazer perguntas adicionais.** Se alguma pergunta ainda é necessária, o
> handoff NÃO está pronto.

## Como certificar
1. Rode os **3 blocos de checklist** abaixo (seções, dev-handoff, por tela).
2. Marque cada item como ✅ (feito), ⚠️ (parcial) ou ❌ (faltando).
3. Liste explicitamente os ⚠️/❌ como pendências — não declare "pronto" com itens abertos.
4. Só declare **"Pronto para desenvolvimento"** quando todos os itens aplicáveis estiverem ✅.

## Bloco 1 — Presença das 19 seções
Confirme que o arquivo contém, nomeadas e na ordem, as seções do
[playbook de handoff](../references/handoff-documentacao.md):

- [ ] 01. Cover (nome, versão, data, responsáveis)
- [ ] 02. Overview (objetivo, problema, perfis, regras principais)
- [ ] 03. User Flows (todos os fluxos, com exceções e saídas)
- [ ] 04. Sitemap (Módulo → Página → Subpágina → Modal → Drawer)
- [ ] 05. Wireframes (baixa fidelidade)
- [ ] 06. UI Design (telas por módulo, com estados)
- [ ] 07. Modais (um doc por modal)
- [ ] 08. Drawers (abertura/fechamento/overlay/scroll/comportamento)
- [ ] 09. Componentes (anatomia, variações, regras de uso)
- [ ] 10. Tokens (cores 50–950 light/dark, tipografia, espaçamento, radius, sombras, opacidade)
- [ ] 11. Especificações das páginas (uma por página)
- [ ] 12. Interações (passo a passo + caminho de erro)
- [ ] 13. Tabelas (ordenação, busca, filtros, paginação, exportação, seleção, estados)
- [ ] 14. Formulários (um doc por campo)
- [ ] 15. Estados das interfaces (default…sessão expirada…primeiro acesso)
- [ ] 16. Responsividade (1440/1280/768/390 + breakpoints e adaptações)
- [ ] 17. Protótipos (principal, alternativos, erro, sucesso, 1º acesso, permissão, exceção)
- [ ] 18. Anotações para desenvolvimento (por tela)
- [ ] 19. Checklist de handoff (este)

> Aplicabilidade: se uma seção não fizer sentido para o produto (ex.: não há
> drawers), marque-a como **N/A** com justificativa — não deixe em branco.

## Bloco 2 — Checklist de handoff (qualidade)
- [ ] Componentes vinculados ao Design System (sem peças soltas).
- [ ] Auto Layout aplicado em todos os frames.
- [ ] Variants configuradas nos componentes.
- [ ] Tokens aplicados (cores/tipografia/espaçamento/radius — nenhum valor solto).
- [ ] Constraints definidas (comportamento de redimensionamento).
- [ ] Nomeação consistente (telas/camadas/componentes/tokens iguais ao código).
- [ ] Estados documentados (loading, vazio, erro, sucesso, etc.).
- [ ] Protótipos criados (principal + alternativos + erro + sucesso).
- [ ] Fluxos completos (com exceções e saídas).
- [ ] Responsividade documentada (breakpoints + adaptações).
- [ ] Feedbacks definidos (toast/inline/modal por ação).
- [ ] Modais documentados (objetivo, campos, validações, feedbacks).
- [ ] Regras de negócio descritas (campos, status, transições).
- [ ] **Pronto para desenvolvimento** (nenhuma pergunta pendente).

## Bloco 3 — Por tela (anotação de dev obrigatória)
Cada tela do entregável precisa conter (ver template em
[handoff-documentacao](../references/handoff-documentacao.md)):

- [ ] ID da tela e Nome
- [ ] Objetivo
- [ ] Endpoints envolvidos
- [ ] Regras de negócio
- [ ] Permissões (por perfil; oculta vs. desabilita)
- [ ] Feedbacks
- [ ] Validações
- [ ] Transições (de/para)
- [ ] Dependências

## Convenções de organização do arquivo (Figma)
- **Seções numeradas** `01. Cover` … `19. Checklist` para ordenar o índice.
- **Capa primeiro**, índice navegável; agrupe a seção UI Design **por módulo**
  (e, quando útil, por perfil — ver faixas por persona).
- **IDs estáveis** nas telas (`NN · Nome`) referenciados por fluxos e sitemap.
- **Pills/legendas discretas**: status e legendas não devem competir com a tela
  (evite poluição visual; o usuário já rejeitou "status pills" carregadas).

## Limitações do Talk to Figma (MCP) no handoff
- O plugin **não cria Figma Sections, Variables/Styles nem Variants reais** e
  **não renomeia frames**. Portanto:
  - As **Sections 01–19** são criadas pelo usuário; você posiciona os frames dentro.
  - O **Design System "real"** (tokens/variáveis/componentes com variants) vive no
    **código** (Gluestack `config.ts`); no Figma é um board visual de referência.
  - **Conectores nativos** de fluxo só existem em arquivos **FigJam**; em arquivo
    de design, use setas (TEXT "→") como fallback.
- Confirme acesso e contexto antes de editar: ver
  [acesso-inicial-figma](./acesso-inicial-figma.md) e a checklist de
  [espaçamento-figma](./espacamento-figma.md).
</content>
