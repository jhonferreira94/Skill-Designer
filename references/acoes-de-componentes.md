# Ações de Componentes

Cada elemento interativo (botão, link, card, ícone, item de lista) tem um
**comportamento previsível**. Especifique-o — não deixe implícito.

## Template por ação
Para cada botão/link/card/ação, descreva:
- **Ao clicar** — o que acontece.
- **Destino** — para qual página, modal ou drawer leva.
- **Dados carregados** — o que é buscado/enviado.
- **Validação** — há regras antes de prosseguir?
- **Confirmação** — exige modal de confirmação? (ações destrutivas/irreversíveis)
- **Carregamento** — mostra loading? desabilita o botão?
- **Feedback de sucesso** — toast, snackbar, banner, redirect.
- **Em caso de erro** — mensagem, manter dados preenchidos, permitir retry.

## Template de fluxo (ponta a ponta)
Para cada passo de um fluxo:
1. **Ação do usuário** — o que ele faz.
2. **O que o sistema faz** — processamento/validação.
3. **Tela exibida** — para onde vai.
4. **Feedback** — o que ele vê.
5. **Próximo passo possível**.

## Exemplos

### Botão "Salvar"
Ao clicar:
- Valida os campos (obrigatórios, formato).
- Exibe loading e desabilita o botão.
- Persiste os dados.
- Toast de sucesso.
- Redireciona para a página de detalhes.

Em caso de erro:
- Mensagem explicativa (inline no campo ou banner).
- Mantém os dados preenchidos.
- Reabilita o botão para nova tentativa.

### Botão "Excluir"
Ao clicar:
- Abre **modal de confirmação** (ação irreversível).
- Confirmar → loading → remove → toast → atualiza a lista.
- Cancelar → fecha o modal, nada muda.

## Princípios
- **Sem becos sem saída**: toda ação leva a um próximo passo claro.
- **Ações destrutivas** sempre exigem confirmação e são reversíveis quando possível.
- **Botão primário único** por contexto; o resto é secundário/terciário.
- Estados do botão: default, hover, focus, active, loading, disabled — ver
  [Estados de Interface](./estados-de-interface.md).
