# Design Tokens (Gluestack UI)

Os tokens são definidos no **Gluestack UI** dentro do `GluestackUIProvider`
(`@/components/ui/gluestack-ui-provider/config.ts`) como variáveis CSS, e
consumidos via classes utilitárias (NativeWind/Tailwind).

> A **estrutura de tokens** segue o Gluestack. A **paleta de cores** e a
> **tipografia** podem ser customizadas editando o `config.ts` e o
> `tailwind.config.js`.

## Cores

O Gluestack organiza cores em escalas de `0` a `950` por papel semântico:
`primary`, `secondary`, `tertiary`, `typography`, `background`, `outline`,
`error`, `success`, `warning`, `info`, `indicator`.

```ts
// config.ts (trecho) — valores em "R G B" para variáveis CSS
export const config = {
  light: vars({
    '--color-primary-0': '179 179 179',
    '--color-primary-500': '52 51 49',
    '--color-primary-950': '13 12 12',

    '--color-typography-0': '254 254 255',
    '--color-typography-900': '38 38 39',

    '--color-background-0': '255 255 255',
    '--color-background-50': '246 246 246',

    '--color-outline-200': '221 220 219',

    '--color-error-500': '230 53 53',
    '--color-success-500': '52 131 82',
    '--color-warning-500': '231 120 40',
  }),
  dark: vars({ /* equivalentes para tema escuro */ }),
};
```

Uso nas classes:

```tsx
<Box className="bg-primary-500 border-outline-200">
  <Text className="text-typography-900">Olá</Text>
</Box>
```

Regras:
- Nunca use hex literal repetido — use o token (`bg-primary-500`, `text-error-500`).
- Defina o tema claro **e** escuro no `config.ts`.
- Garanta contraste válido entre `typography-*` e `background-*` (ver acessibilidade).

## Tipografia

Customizável no `tailwind.config.js` (`fontFamily`, `fontSize`, `fontWeight`).
Mantenha uma escala consistente.

```js
// tailwind.config.js (trecho)
theme: {
  extend: {
    fontFamily: {
      heading: ['Inter', 'sans-serif'],
      body: ['Inter', 'sans-serif'],
    },
    fontSize: {
      '2xs': '10px', xs: '12px', sm: '14px',
      md: '16px', lg: '18px', xl: '20px', '2xl': '24px',
    },
  },
}
```

```tsx
<Heading className="font-heading text-2xl">Título</Heading>
<Text className="font-body text-md">Corpo</Text>
```

## Espaçamento

Use a escala `space` do Gluestack/Tailwind (classes `p-*`, `m-*`, `gap-*`).
Não invente valores fora da escala.

```tsx
<VStack space="md" className="p-4">
  <Box className="mb-2" />
</VStack>
```

## Raio e sombra

Use os tokens de raio (`rounded-*`) e sombra (`shadow-*`) do tema. Mantenha
poucos níveis para preservar a consistência.

```tsx
<Box className="rounded-md shadow-md" />
```

## Como customizar
1. Edite `@/components/ui/gluestack-ui-provider/config.ts` para cores.
2. Edite `tailwind.config.js` para tipografia/espaçamento/raios.
3. Reinicie o bundler para aplicar as mudanças.
