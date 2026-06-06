# Design Systems (Gluestack UI)

Conjunto de princípios, tokens, componentes e padrões reutilizáveis que garantem
consistência e velocidade. Aqui o design system é o **[Gluestack UI](https://gluestack.io/)**.

## Camadas de um design system
1. **Fundações (tokens)**: cores, tipografia, espaçamento, raios, sombras.
   → ver [design tokens](./design-tokens.md).
2. **Componentes**: blocos reutilizáveis com estados e variantes.
   → ver [componentes](./gluestack-components.md).
3. **Padrões**: composições recorrentes (formulários, listas, navegação, modais).
4. **Diretrizes**: quando/como usar cada elemento, conteúdo e acessibilidade.

## Princípios
- **Consistência > criatividade pontual**: reuse antes de inventar.
- **Tokens primeiro**: estilize por token, nunca por valor fixo.
- **Componível**: telas são composições de componentes do Gluestack.
- **Acessível por padrão**: estados e contraste já considerados nos tokens.
- **Temas**: suporte claro/escuro definidos no `config.ts`.

## Como trabalhar com o Gluestack
- **Toda a biblioteca está disponível**: Button, Input, Textarea, Select, Checkbox,
  Radio, Switch, Slider, Modal, Actionsheet, AlertDialog, Toast, Tooltip, Popover,
  Tabs, Accordion, Avatar, Badge, Card, Divider, Progress, Spinner, Skeleton,
  Table, Menu, Fab, Image, Icon, Heading, Text, Box, HStack, VStack, Grid, etc.
- Instale conforme a necessidade: `npx gluestack-ui add <componente>`.
- Customize **paleta** e **tipografia** (permitido); mantenha a **estrutura de
  tokens** e os **componentes** do Gluestack.

## Layout primitives
- **Box**: container genérico.
- **HStack / VStack**: pilhas horizontais/verticais com `space`.
- **Center, Grid**: alinhamento e grades.
- Use esses primitivos + tokens de espaçamento para montar telas consistentes.

## Governança
- Antes de criar algo novo, verifique se já existe no Gluestack.
- Se precisar de uma variante, estenda via `className`/tokens — não duplique o componente.
- Documente decisões de customização (paleta/tipografia) no `config.ts`.

## Saída esperada
- Tokens definidos/confirmados.
- Componentes do Gluestack mapeados para cada parte da UI.
- Padrões e variantes documentados.
