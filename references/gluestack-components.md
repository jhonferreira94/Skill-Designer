# Componentes (Gluestack UI)

A UI usa **toda a biblioteca** do **Gluestack UI** (`@/components/ui/...`). Sempre
prefira esses componentes em vez de criar do zero.

## Catálogo (use o que precisar)
- **Layout**: Box, HStack, VStack, Center, Grid, Divider.
- **Tipografia**: Heading, Text.
- **Formulário**: FormControl, Input, Textarea, Select, Checkbox, Radio, Switch,
  Slider, Button.
- **Feedback**: Toast, Alert, AlertDialog, Progress, Spinner, Skeleton.
- **Overlay**: Modal, Actionsheet, Popover, Tooltip, Menu.
- **Navegação/coleções**: Tabs, Accordion, Table.
- **Dados/mídia**: Avatar, Badge, Card, Image, Icon, Fab.

Catálogo completo: https://gluestack.io/

## Instalação
Adicione um componente com o CLI:

```bash
npx gluestack-ui add textarea
npx gluestack-ui add button input form-control modal select
```

Os componentes são copiados para `@/components/ui/<componente>` e ficam
totalmente customizáveis via `className` (NativeWind) e tokens do tema.

## Props de estado (padrão Gluestack)
A maioria dos componentes interativos compartilha props booleanas de estado,
expostas como `data-*` para estilização:

- `size`: `sm | md | lg | xl`
- `isInvalid`, `isDisabled`, `isFocused`, `isHovered`, `isReadOnly`, `isRequired`

## FormControl
Use `FormControl` para rótulo, texto de ajuda e erro de campos de formulário.

## Exemplo: Textarea
Referência: https://gluestack.io/ui/docs/components/textarea

```tsx
import { Textarea, TextareaInput } from '@/components/ui/textarea';
import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
  FormControlHelper,
  FormControlHelperText,
  FormControlError,
  FormControlErrorText,
} from '@/components/ui/form-control';

function ComentarioField() {
  return (
    <FormControl size="md" isInvalid={false} className="w-full max-w-[360px]">
      <FormControlLabel>
        <FormControlLabelText>Comentário</FormControlLabelText>
      </FormControlLabel>

      <Textarea size="md" isReadOnly={false} isInvalid={false} isDisabled={false}>
        <TextareaInput placeholder="Escreva aqui..." />
      </Textarea>

      <FormControlHelper>
        <FormControlHelperText>Máximo de 500 caracteres.</FormControlHelperText>
      </FormControlHelper>

      <FormControlError>
        <FormControlErrorText>Campo obrigatório.</FormControlErrorText>
      </FormControlError>
    </FormControl>
  );
}
```

Props do `Textarea`: `size` (`sm|md|lg|xl`), `isInvalid`, `isDisabled`,
`isReadOnly`, `isHovered`, `isFocused`, `isRequired`. O `Textarea` envolve um
`TextareaInput` (herda props do `TextInput` do React Native).

## Boas práticas
- **Não recrie** componentes que o Gluestack já oferece.
- Estilize com `className` + tokens do tema (`bg-primary-500`, `p-4`), não com valores fixos.
- Use as props de estado em vez de estilos condicionais manuais.
- Garanta acessibilidade (`aria-label`, foco visível) — ver [acessibilidade](./accessibility.md).
- Consulte a doc oficial do componente em https://gluestack.io/ui/docs/components/<nome>.
