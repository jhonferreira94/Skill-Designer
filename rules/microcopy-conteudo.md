# UX Writing e Microcopy (pt-BR)

Convenções de **texto de interface**. O usuário deve entender a tela **sem
treinamento**: toda copy é clara, específica e diz o que acontece após a ação.
Enquanto [ações de componentes](../references/acoes-de-componentes.md) define o
*comportamento*, esta regra define **o texto** desse comportamento.

## Regra de ouro: clareza acima de tudo
Toda ação deve deixar explícito:
- **O que** será feito.
- **Sobre qual item** a ação se aplica.
- **Qual a consequência**.
- **Se pode ou não ser desfeita**.

## Botões: estrutura `verbo + objeto`
Evite rótulos genéricos. Contextualize sempre.

| ❌ Genérico | ✅ Específico |
|---|---|
| Excluir | Excluir vídeo |
| Editar | Editar vídeo |
| Salvar | Salvar alterações |
| Adicionar | Adicionar usuário |
| Exportar | Exportar relatório |
| Importar | Importar planilha |
| Publicar | Publicar conteúdo |

## Botões secundários: indicam a ação interrompida
O secundário não é "Cancelar" solto — diz **o que** será cancelado.

| ❌ Errado | ✅ Correto |
|---|---|
| [Excluir vídeo] · [Cancelar] | [Excluir vídeo] · [Cancelar exclusão] |
| [Salvar alterações] · [Cancelar] | [Salvar alterações] · [Cancelar edição] |
| [Criar curso] · [Cancelar] | [Criar curso] · [Cancelar criação] |

Outros secundários úteis: `Fechar janela`, `Voltar para lista`.

## Modais de confirmação
Todo modal de confirmação tem 4 partes:
- **Título** — descreve exatamente a ação. → `Excluir vídeo`
- **Descrição** — explica a consequência. → "Tem certeza de que deseja excluir
  este vídeo? Esta ação não poderá ser desfeita."
- **Botão primário** — repete a ação. → `Excluir vídeo`
- **Botão secundário** — ação oposta. → `Cancelar exclusão`

## Feedback de sucesso: sempre nomeie o objeto
| ❌ Errado | ✅ Correto |
|---|---|
| Sucesso. | Vídeo excluído com sucesso. |
| Alterações salvas. | As alterações do vídeo foram salvas com sucesso. |

## Feedback de erro: problema + próximo passo
| ❌ Errado | ✅ Correto |
|---|---|
| Erro ao salvar. | Não foi possível salvar as alterações do vídeo. Tente novamente. |
| Erro. | Não foi possível excluir o vídeo. Verifique sua conexão e tente novamente. |

## Empty states: estado atual + ação sugerida
- ❌ "Nenhum vídeo."
- ✅ "Você ainda não possui vídeos cadastrados. Clique em **Adicionar vídeo**
  para criar o primeiro."

## Loading: descreva o que acontece
`Carregando vídeos...` · `Salvando alterações...` · `Enviando arquivo...` ·
`Processando importação...` — nunca um spinner mudo sem contexto.

## Tom de voz
Simples · direta · humana · consistente · sem jargão técnico · sem ambiguidade.
Sempre deixar claro o que acontece após cada ação.

## Checklist
- [ ] Botões usam `verbo + objeto` (sem "OK", "Salvar", "Cancelar" soltos).
- [ ] Secundário diz qual ação será interrompida.
- [ ] Modal: título = ação, descrição = consequência (+ "não pode ser desfeita"
      quando irreversível), primário repete a ação, secundário é o oposto.
- [ ] Sucesso e erro nomeiam o objeto; erro orienta o próximo passo.
- [ ] Empty state explica o estado e sugere ação.
- [ ] Loading descreve a operação em andamento.
- [ ] Texto compreensível sem treinamento.
