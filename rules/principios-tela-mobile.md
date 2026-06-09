# Princípios de construção de tela (mobile)

Regras práticas para **projetar cada tela e fluxo** de um produto mobile.
Enquanto as `../references/` explicam o *porquê* (teoria), esta regra diz
*o que fazer* em cada tela e como **verificar**. Cada princípio aponta para a
heurística/lei de origem e traz um checklist objetivo.

> Use junto com [heurísticas de Nielsen](../references/nielsen-heuristics.md),
> [leis de UX](../references/ux-laws.md) e
> [acessibilidade](../references/accessibility.md).

---

## 1. Foco em uma tarefa por tela
Cada tela tem **um propósito claro** e prioriza **uma única ação principal**.
Concentrar em um objetivo reduz a carga cognitiva e torna a navegação intuitiva.
> Origem: **Lei de Hick** (menos opções = decisão mais rápida) + Heurística 8
> (estético e minimalista).

- [ ] A tela responde em 1 frase: "o que o usuário faz aqui?".
- [ ] Existe **um CTA primário** visualmente dominante; os demais são secundários.
- [ ] Tudo que não serve ao objetivo foi removido, adiado ou movido para outra tela.

## 2. Consistência de espaçamentos e alinhamentos
Elementos seguem uma **grade** e uma **escala de espaçamento** únicas. Consistência
aumenta a percepção de qualidade e torna a experiência previsível.
> Origem: **Lei da Proximidade** + Heurística 4 (consistência e padrões).
> Ver também [regra de espaçamento no Figma](./espacamento-figma.md).

- [ ] Margens laterais iguais em todas as telas (ex.: 24px).
- [ ] Espaçamentos só da escala (0/4/8/12/16/24/32...), nunca valores aleatórios.
- [ ] Blocos compartilham a mesma margem esquerda (mesmo `x`); gaps H = gaps V.

## 3. Priorização da hierarquia visual
A informação mais relevante recebe **mais destaque** (tipografia, cor, tamanho,
espaço). A hierarquia guia o olhar até o conteúdo principal e as ações.
> Origem: **escaneabilidade / padrões F e Z** + Heurística 8.

- [ ] Há níveis claros: título > subtítulo > corpo > apoio.
- [ ] O CTA primário tem o maior peso visual da tela.
- [ ] Cor é reforço, não único meio de destaque (ver contraste na regra 8).

## 4. Facilidade de interação (alvos de toque)
Componentes interativos têm **tamanho adequado ao toque** e ficam em **zonas de
fácil alcance** do polegar.
> Origem: **Lei de Fitts** + zonas de alcance do polegar.

- [ ] Alvo de toque mínimo **44×44pt** (iOS) / **48×48dp** (Android).
- [ ] Espaço mínimo entre alvos clicáveis (~8px) para evitar toque errado.
- [ ] Ações primárias na zona inferior/central (fácil alcance); evitar topo distante.

## 5. Navegação clara e previsível
O usuário sempre sabe **onde está, para onde pode ir e como voltar**. Estrutura
simples e consistente reduz a necessidade de aprendizado.
> Origem: Heurística 1 (visibilidade do status) + Heurística 3 (controle e liberdade).

- [ ] Título/contexto da tela visível; posição no fluxo é clara.
- [ ] Sempre há caminho de **volta** evidente (back, fechar, cancelar).
- [ ] Padrões de navegação iguais em telas equivalentes (tab bar, header, gestos).

## 6. Feedback contínuo das ações
Toda interação gera **resposta visual imediata** confirmando que o sistema
reconheceu a ação.
> Origem: Heurística 1 (visibilidade do status do sistema).

- [ ] Estados de componente previstos: default/hover/focus/active/disabled.
- [ ] Ações assíncronas mostram **loading**; resultado mostra **sucesso/erro**.
- [ ] Mensagens de erro são claras e dizem como resolver (Heurística 9).

## 7. Redução do esforço do usuário
Fluxos com o **menor número de etapas e campos** possível. Simplificar tarefas,
minimizar digitação e oferecer caminhos diretos.
> Origem: **Lei de Tesler** (complexidade não eliminável fica no sistema, não no
> usuário) + Heurística 7 (flexibilidade e eficiência).

- [ ] Cada campo/etapa é justificável; o resto foi cortado ou automatizado.
- [ ] Preenchimentos usam defaults, autocompletar, máscara e teclado adequado.
- [ ] Atalhos para tarefas frequentes; nada pedido duas vezes.

## 8. Uso de conteúdo representativo (e contraste real)
Prototipar com **textos, dados e cenários realistas** — nada de "Lorem ipsum" ou
nomes curtos demais. Revela problemas de layout e leitura cedo.
> Origem: validação realista + [acessibilidade](../references/accessibility.md).

- [ ] Textos reais, inclusive nomes/valores longos e casos extremos.
- [ ] Contraste validado: **4.5:1** texto / **3:1** texto grande, ícones e bordas.
- [ ] Listas testadas com 0, 1, poucos e muitos itens.

## 9. Adoção de padrões reconhecidos
Componentes e comportamentos seguem **convenções consolidadas de mobile**. O
familiar reduz a curva de aprendizado.
> Origem: **Lei de Jakob** (usuário espera funcionar como os outros apps) +
> Heurística 4.

- [ ] Componentes nativos/Gluestack em vez de soluções exóticas.
- [ ] Gestos, ícones e posições convencionais (voltar, busca, menu, tab bar).
- [ ] Não reinventar padrões já dominados pelo usuário sem ganho real.

## 10. Construção orientada por fluxos e estados
Além das telas "felizes", o protótipo cobre **todos os estados**: carregamento,
erro, sucesso e vazio (empty state). Visão completa = solução robusta.
> Origem: Heurística 1, 5 (prevenção de erro) e 9 (recuperação de erro).

- [ ] Cada tela com dados tem versões: **loading / conteúdo / vazio / erro**.
- [ ] Empty states orientam a próxima ação (não apenas "nada aqui").
- [ ] Fluxos de erro e recuperação desenhados, não só o caminho ideal.

---

## Checklist rápido (rodar por tela)
1. Uma tarefa principal e um CTA dominante? (1, 3)
2. Margens, escala e alinhamentos consistentes? (2)
3. Hierarquia visual guia o olhar? (3)
4. Alvos de toque ≥ 44pt em zona de alcance? (4)
5. Sei onde estou e como voltar? (5)
6. Toda ação dá feedback (loading/sucesso/erro)? (6)
7. Menos etapas/campos possível, com defaults? (7)
8. Conteúdo realista e contraste AA validado? (8)
9. Padrões mobile reconhecidos? (9)
10. Estados loading/vazio/erro previstos? (10)
