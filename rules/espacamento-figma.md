# Espaçamento no Figma via MCP (Talk to Figma)

Regras e armadilhas ao **criar/editar telas diretamente no Figma** com o
plugin *Cursor Talk to Figma MCP*. O objetivo é garantir espaçamento e
alinhamento corretos desde a primeira versão.

## ⚠️ Regra de ouro: padding fantasma de 10px

Todo **frame com Auto Layout criado sem padding explícito recebe 10px de
padding em todos os lados** automaticamente. Esse "padding fantasma" é a
causa nº 1 de:
- títulos/textos desalinhados em relação a ícones (deslocados ~10px);
- grids que aparecem em 1 coluna em vez de 2 (a área útil encolhe ~20px);
- conteúdo "estourando" a margem ou descolando do restante da tela.

**Portanto, ao criar QUALQUER frame com Auto Layout, defina o padding
explicitamente** — mesmo quando o valor desejado é zero:

- Frames estruturais sem espaçamento interno (tela, grids, wrappers de
  texto, linhas/colunas) → `padding = 0` explícito.
- Frames com espaçamento (cards, search bar, chips, content) → valores da
  escala (8/12/16/24...).

> Sempre que algo parecer "8–10px fora do lugar" sem motivo, suspeite do
> padding fantasma e zere/defina o padding do frame pai.

## Checklist de espaçamento (rodar após montar a tela)

1. **Confira larguras reais** com `get_node_info` e compare o
   `absoluteBoundingBox.x/width` dos filhos com o do pai. Se um filho começa
   ~10px depois do esperado, é padding fantasma.
2. **Alinhamento vertical da margem**: header, busca, chips, cards e demais
   blocos devem compartilhar o mesmo `x` (mesma margem esquerda).
3. **Gaps horizontais = verticais**: em grids, `itemSpacing` (entre colunas) e
   `counterAxisSpacing` (entre linhas) devem ser iguais (ex.: 16/16). Confira
   se a soma fecha a largura: `2*card + gap = largura útil`
   (ex.: 163 + 16 + 163 = 342).
4. **Escala de espaçamento estrita**: 0 / 2 / 4 / 8 / 12 / 16 / 24 / 32.
   Nunca usar valores aleatórios (ex.: 15px). Igualar à escala.
5. **Largura útil**: tela 390 − margens 24/24 = **342**. Frames de conteúdo
   devem usar `set_layout_sizing FILL` (horizontal) em vez de largura fixa,
   para não estourar nem descolar.

## Limitações conhecidas do plugin

- **Não cria** Figma Variables, Color/Text Styles nem converte em
  Components/Variants (fazer manualmente ou via import de tokens).
- **Não há tool de reparent**: `move_node` só muda x/y; `clone_node` clona no
  **mesmo pai**. Para mover de pai, recrie o nó no frame de destino.
- **Texto não aceita** layout sizing `FILL` — use `resize` com largura fixa.
- `layoutWrap = WRAP` exige `layoutMode = HORIZONTAL`.
- Antes de comandos, é preciso `join_channel`; o plugin desconecta ao perder
  foco (erro "Request to Figma timed out") — reconecte com novo channel.
- Screenshots de validação: usar `mcp_figma_dev_mod_get_screenshot`.

## Fluxo recomendado

1. Criar frame → **definir padding explícito** (0 ou valor da escala).
2. Definir `layoutMode`, `itemSpacing` e (em grid) `counterAxisSpacing`.
3. Usar `set_layout_sizing FILL` para conteúdo ocupar a largura útil.
4. Ao final, **rodar a checklist de espaçamento** acima e validar com
   screenshot antes de entregar.
