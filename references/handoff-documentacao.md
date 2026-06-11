# Handoff e Documentação para Desenvolvimento

Playbook do **empacotamento do entregável**: como organizar o arquivo (Figma) e
a documentação para que um time de desenvolvimento implemente o produto **sem
precisar fazer perguntas adicionais**.

> Diferença em relação à [Especificação de Produto](./especificacao-produto.md):
> aquele playbook é sobre **pensar/projetar** o produto (descobrir problema,
> perfis, fluxos, telas). Este é sobre **entregar**: estruturar o arquivo,
> documentar cada peça e provar que está completo. Use os dois em sequência —
> primeiro especifica, depois empacota para handoff.

## Quando usar
- Pedido de "handoff", "documentação", "entregar para o dev", "organizar o
  arquivo", "preparar para desenvolvimento".
- Sempre que o produto/módulo já está desenhado e precisa virar entregável.

## Estrutura do arquivo (19 seções, ordem fixa)
Organize o Figma (ou doc) nestas seções numeradas. No Figma use **Sections**
nomeadas `01. Cover`, `02. Overview`, … (o plugin Talk to Figma não cria
Sections nem renomeia frames — o usuário cria as Sections e você posiciona os
frames dentro; ver [rules/acesso-inicial-figma](../rules/acesso-inicial-figma.md)
e [rules/handoff-checklist](../rules/handoff-checklist.md)).

1. **Cover** — nome do produto, versão, data, responsáveis.
2. **Overview** — objetivo, problema que resolve, perfis de usuário, regras de
   negócio principais. (Base: [especificacao-produto](./especificacao-produto.md).)
3. **User Flows** — todos os fluxos (template abaixo). (Base: [acoes-de-componentes](./acoes-de-componentes.md), [fluxos-excepcionais](./fluxos-excepcionais.md).)
4. **Sitemap** — Módulo → Página → Subpágina → Modal → Drawer. (Formato em [especificacao-produto](./especificacao-produto.md).)
5. **Wireframes** — baixa fidelidade: hierarquia, distribuição, navegação, estrutura.
6. **UI Design** — telas por módulo, com os estados (default/hover/focus/disabled/loading/empty/error/success).
7. **Modais** — um doc por modal (template abaixo).
8. **Drawers** — abertura, fechamento, overlay, scroll, comportamentos (template abaixo).
9. **Componentes** — um doc por componente (template abaixo). (Base: [gluestack-components](./gluestack-components.md).)
10. **Tokens** — cores 50–950 (light/dark), tipografia, espaçamento, radius, sombras, opacidade. (Base: [design-tokens](./design-tokens.md).)
11. **Especificações das páginas** — um doc por página (template abaixo).
12. **Interações** — passo a passo de cada interação (template abaixo).
13. **Tabelas** — ordenação, busca, filtros, paginação, exportação, seleção em massa, estados (vazio/erro/loading), colunas fixas.
14. **Formulários** — um doc por campo (template abaixo).
15. **Estados das interfaces** — default, hover, focus, pressed, disabled, loading, skeleton, success, warning, error, empty, offline, sem permissão, sessão expirada, sem resultados, primeiro acesso. (Base: [estados-de-interface](./estados-de-interface.md).)
16. **Responsividade** — desktop 1440/1280, tablet 768, mobile 390: adaptações, breakpoints, ocultações, empilhamento, mudanças de navegação.
17. **Protótipos** — fluxo principal, alternativos, erro, sucesso, primeiro acesso, permissão, exceção.
18. **Anotações para desenvolvimento** — por tela (template abaixo).
19. **Checklist de handoff** — ver [rules/handoff-checklist](../rules/handoff-checklist.md).

## Templates

### Fluxo (seção 03)
```
Nome:
Objetivo:
Perfil envolvido:
Entrada (gatilho):
Passos: 1) … 2) … 3) …
Exceções: (sem permissão, dados inválidos, offline, duplicidade…)
Saídas possíveis: (sucesso / erro / cancelamento)
```

### Especificação de página (seção 11)
```
Objetivo:
Perfil(is) com acesso:
Componentes utilizados:
Campos:
Validações:
Regras de negócio:
Ações possíveis:
Feedbacks:
Estados:
Permissões: (o que cada perfil vê / pode fazer; oculta vs. desabilita)
```

### Componente (seção 09)
```
Objetivo:
Anatomia: (partes que compõem)
Variações: default, hover, pressed, focus, disabled, loading, selected, error, success
Regras de uso:
Quando usar:
Quando NÃO usar:
Exemplos:
```

### Modal (seção 07)
```
Objetivo:
Campos:
Botão primário: (rótulo verbo+objeto)
Botão secundário: (diz o que cancela)
Validações:
Feedbacks:
Estado de erro:
Estado de sucesso:
```

### Drawer (seção 08)
```
Abertura: (gatilho, direção)
Fechamento: (botão, overlay, ESC, swipe)
Overlay: (dim, bloqueia interação?)
Scroll: (interno; header/footer fixos?)
Comportamentos: (persistência, foco, retorno)
```

### Campo de formulário (seção 14)
```
Nome:
Tipo:
Placeholder:
Obrigatório / Opcional:
Máscara:
Máx. de caracteres:
Validação:
Mensagem de erro:
Valor padrão:
Ajuda contextual:
```

### Interação (seção 12)
```
Elemento: (ex.: botão "Salvar alterações")
Ao acionar:
  1. Validar campos.
  2. Exibir loading no botão.
  3. Enviar dados (endpoint).
  4. Toast de sucesso (nomeia o objeto).
  5. Atualizar a tela.
Em caso de erro:
  1. Manter dados preenchidos.
  2. Destacar campo com erro.
  3. Exibir mensagem que orienta o próximo passo.
```
(Padrão completo em [acoes-de-componentes](./acoes-de-componentes.md).)

### Anotação para desenvolvimento (seção 18 — em TODA tela)
```
ID da tela: (ex.: 04 · Home)
Nome:
Objetivo:
Endpoints envolvidos:
Regras de negócio:
Permissões:
Feedbacks:
Validações:
Transições: (de/para quais telas)
Dependências: (dados, outras telas, libs)
```

## Princípios do handoff
- **Sem perguntas**: a documentação deve bastar para o dev implementar sozinho.
- **Fonte única de verdade**: tokens e componentes vêm do Design System
  ([Gluestack](./gluestack-components.md)); não documente valores soltos.
- **Consistência de nomes**: telas, componentes e tokens nomeados igual ao código.
- **Estados e exceções explícitos**: cada tela com seus estados; cada fluxo com
  suas exceções. Nunca só o fluxo feliz.
- **Rastreável**: cada tela tem ID, e os fluxos/sitemap referenciam esses IDs.

