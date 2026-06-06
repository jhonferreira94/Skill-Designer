---
name: designer
description: 'Skill completa de Product Design / UX-UI com base na biblioteca Gluestack UI. Use ao criar ou revisar produtos e telas: arquitetura da informação, design system e tokens (cores, tipografia, espaçamento), componentes, product thinking, heurísticas de Nielsen, análise de produtos de referência (benchmarking), acessibilidade (WCAG) e qualidade visual. Tokens e componentes seguem o Gluestack; paleta de cores e tipografia podem ser customizadas. Trigger words: design, designer, UX, UI, produto, product thinking, arquitetura da informação, fluxo, jornada, heurísticas, Nielsen, usabilidade, benchmarking, referência, layout, cores, tipografia, espaçamento, tokens, contraste, acessibilidade, WCAG, ARIA, componente, tema, gluestack, gluestack-ui, design system.'
argument-hint: 'Descreva o produto, fluxo, tela ou componente a criar/revisar'
---

# Designer

Skill completa de **Product Design / UX-UI**: do entendimento do problema
(product thinking, arquitetura da informação) até a interface final
(design system, componentes, acessibilidade e qualidade visual), com base na
biblioteca **Gluestack UI**.

## ⚠️ Regra obrigatória: sempre pedir os projetos de referência
**Antes de iniciar qualquer trabalho com esta skill**, confirme com o usuário
**quais projetos/produtos devem ser usados como modelo (referência)**.

### Referências padrão (Figma)
Use estes dois projetos como modelo base, salvo indicação contrária do usuário:
- **WK – Protótipo**: https://www.figma.com/design/prkihUzzfMmLed4YzC8qcS/WK-Prot%C3%B3tipo?node-id=2-2919
- **Aplicativo**: https://www.figma.com/design/g62K87Ng0esV1KhCl7BKab/Aplicativo?node-id=0-1

> Os links do Figma exigem acesso autenticado. Se não conseguir abri-los, peça
> ao usuário prints, o nome dos frames/fluxos relevantes ou o acesso ao arquivo.

### Como conduzir
- Confirme se deve seguir as referências padrão acima ou outras informadas.
- Pergunte de forma objetiva, por exemplo:
  - "Sigo as referências padrão (WK Protótipo e Aplicativo) ou há outras?"
  - "Há telas, fluxos ou frames específicos desses Figmas que devo seguir?"
- Não comece a projetar, propor ou revisar antes de confirmar os modelos.
- Use esses modelos como base para o [benchmarking](./references/benchmarking.md)
  e para alinhar padrões de fluxo, layout e linguagem visual.

## Biblioteca base: Gluestack UI
A UI é construída com **[Gluestack UI](https://gluestack.io/)** (v2, sobre NativeWind/Tailwind).

- **Componentes**: use **toda a biblioteca** do Gluestack (`@/components/ui/...`).
  Sempre prefira os componentes existentes (Button, Input, Textarea, Select,
  Modal, Actionsheet, Toast, Tabs, Accordion, Avatar, Badge, Card, FormControl,
  etc.). Não recrie do zero algo que o Gluestack já oferece. Instale com
  `npx gluestack-ui add <componente>`.
- **Tokens**: use os tokens do Gluestack definidos no `GluestackUIProvider`
  (`config.ts` / variáveis `--color-*`, `--space-*`, etc.) e as classes utilitárias.
- **Customizável**: a **paleta de cores** e a **tipografia** podem ser alteradas
  (editando o `config.ts` e o Tailwind config). A **estrutura de tokens** e os
  **componentes** devem permanecer os do Gluestack.

## Quando usar
- Definir a **arquitetura da informação** (estrutura, navegação, fluxos).
- Aplicar **product thinking** (problema, usuário, valor, métricas).
- Avaliar usabilidade com as **heurísticas de Nielsen**.
- Fazer **análise de produtos de referência** (benchmarking).
- Definir/usar o **design system** e tokens do Gluestack.
- Montar **componentes** e garantir **acessibilidade** e **qualidade visual**.

## Procedimento

### 0. Pedir referências (obrigatório)
Pergunte e confirme os **projetos modelo** antes de tudo (ver regra acima).

### 1. Product Thinking
Entenda o problema antes de desenhar. Consulte [product thinking](./references/product-thinking.md).
- Quem é o usuário, qual a dor, qual o resultado esperado e como medir sucesso.

### 2. Arquitetura da Informação
Estruture conteúdo, navegação e fluxos. Consulte [arquitetura da informação](./references/info-architecture.md).
- Mapeie entidades, hierarquia, navegação e a jornada principal.

### 3. Análise de produtos de referência (benchmarking)
Compare com os projetos modelo informados. Consulte [benchmarking](./references/benchmarking.md).
- Extraia padrões de fluxo, layout, copy e componentes a adotar ou evitar.

### 4. Design System e Tokens (Gluestack)
Use os tokens do Gluestack. Consulte [design tokens](./references/design-tokens.md) e [design systems](./references/design-systems.md).
- **Cores**: escalas do Gluestack (`primary`, `secondary`, `tertiary`,
  `typography`, `background`, `outline`, `error`/`success`/`warning`/`info`),
  graus `0–950`. Paleta trocável no `config.ts`.
- **Tipografia**: famílias, tamanhos e pesos — customizáveis, com escala consistente.
- **Espaçamento/raio/sombra**: use os tokens do tema, nunca valores mágicos.
- Prefira classes do tema (`bg-primary-500`), nunca hex repetido.

### 5. Componentes (Gluestack)
Monte telas compondo os componentes do Gluestack. Consulte [componentes](./references/gluestack-components.md).
- Reuse componentes e props de estado (`size`, `isInvalid`, `isDisabled`, `isFocused`, `isReadOnly`).
- Use `FormControl` para rótulos, ajuda e erros.
- Estilize via `className` (NativeWind) com tokens do tema.

### 6. Heurísticas de Nielsen
Avalie a usabilidade com as 10 heurísticas. Consulte [heurísticas de Nielsen](./references/nielsen-heuristics.md).

### 7. Acessibilidade
Verifique a [checklist de acessibilidade](./references/accessibility.md) (WCAG 2.2 AA).
- Contraste **4.5:1** (texto) / **3:1** (texto grande/ícones); foco visível;
  teclado; semântica antes de ARIA; não dependa só de cor.

### 8. Qualidade visual
- **Hierarquia**, **consistência**, **espaço em branco**, **estados**
  (default/hover/focus/active/disabled/loading/error) e **responsividade** mobile-first.

### 9. Revisão final
- [ ] Projetos de referência foram solicitados e considerados.
- [ ] Product thinking e arquitetura da informação definidos.
- [ ] Benchmarking aplicado.
- [ ] Componentes e tokens do Gluestack usados (sem recriar o que já existe).
- [ ] Heurísticas de Nielsen verificadas.
- [ ] Contraste, foco e estados aprovados.
- [ ] Layout responsivo testado.

## Referências
- [Product Thinking](./references/product-thinking.md)
- [Arquitetura da Informação](./references/info-architecture.md)
- [Análise de produtos de referência (benchmarking)](./references/benchmarking.md)
- [Design Systems](./references/design-systems.md)
- [Design tokens (Gluestack)](./references/design-tokens.md)
- [Componentes (Gluestack)](./references/gluestack-components.md)
- [Heurísticas de Nielsen](./references/nielsen-heuristics.md)
- [Acessibilidade](./references/accessibility.md)
