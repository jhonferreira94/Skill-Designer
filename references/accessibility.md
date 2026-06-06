# Acessibilidade (WCAG 2.2 AA)

Checklist prática para garantir interfaces acessíveis.

## Contraste de cor
- Texto normal: mínimo **4.5:1** contra o fundo.
- Texto grande (≥ 24px ou ≥ 18.66px bold): mínimo **3:1**.
- Componentes de UI e ícones significativos: mínimo **3:1**.
- Ferramentas: DevTools (aba Accessibility), WebAIM Contrast Checker.

## Teclado e foco
- Todo elemento interativo é alcançável por `Tab` e operável por teclado.
- Foco **sempre visível** (`:focus-visible` com outline claro). Nunca `outline: none` sem substituto.
- Ordem de foco segue a ordem visual/lógica.
- Sem armadilhas de foco; modais devem confinar e devolver o foco corretamente.

## Semântica e ARIA
- Use elementos nativos primeiro: `<button>`, `<a>`, `<nav>`, `<main>`, `<label>`.
- ARIA só quando o HTML nativo não cobre. "Nenhum ARIA é melhor que ARIA errado."
- Associe labels a inputs (`<label for>` ou `aria-label`).
- Use landmarks e uma hierarquia de headings (`h1`→`h2`→`h3`) sem pular níveis.

## Conteúdo
- Imagens informativas têm `alt` descritivo; decorativas usam `alt=""` ou `aria-hidden="true"`.
- Não transmita informação apenas por cor (adicione ícone, texto ou padrão).
- Mensagens de erro são claras, associadas ao campo e anunciadas (`aria-live`/`role="alert"`).

## Movimento e mídia
- Respeite `prefers-reduced-motion` para reduzir animações.
- Vídeos com legendas; áudio com transcrição.

## Alvos de toque
- Área mínima de toque recomendada: **24×24px** (WCAG 2.2), idealmente **44×44px**.

## Teste rápido
- [ ] Navegação completa só com teclado.
- [ ] Zoom em 200% sem quebra de conteúdo.
- [ ] Contraste validado.
- [ ] Leitor de tela anuncia rótulos e estados.
