# Estados de Interface

Toda tela e componente tem **mais de um estado**. Projetar só o "conteúdo
carregado" é a falha mais comum. Especifique todos os estados aplicáveis.

## Estados obrigatórios

### Padrão (carregado)
- Conteúdo presente e interativo.

### Loading
- **Skeleton** para layouts conhecidos (listas, cards, tabelas).
- **Spinner** para ações pontuais (botão, overlay).
- Desabilite ações que dependem dos dados em carregamento.

### Vazio (empty state)
- **Sem resultados** (busca/filtro não encontrou) → sugira limpar filtro.
- **Sem registros** (ainda não há dados) → CTA para criar o primeiro.
- **Primeiro acesso** → onboarding/orientação.
- Sempre com ilustração/ícone + título + texto curto + ação.

### Erro
- **Conexão** — "não foi possível carregar" + botão "tentar novamente".
- **Validação** — mensagem inline no campo, foco no primeiro erro.
- **Permissão** — ver [Fluxos Excepcionais](./fluxos-excepcionais.md).

### Sucesso
- **Toast** (efêmero, ação concluída), **snackbar** (com ação de desfazer),
  **banner** (persistente, contexto da página).

### Confirmação
- **Modal de confirmação** para ações destrutivas/irreversíveis.
- **Alerta de exclusão** com nome do item e consequência explícita.

## Modais e Drawers
Para cada modal/drawer, especifique:
- **Objetivo**.
- **Campos** e **botões**.
- **Ação do botão primário** / **secundário**.
- **Mensagens** de sucesso e de erro.

Diretrizes:
- **Modal** para foco curto e decisão única; **drawer** para formulários/detalhes
  laterais sem perder o contexto da página.
- Sempre permita **fechar** (X, botão cancelar, ESC, clique fora quando seguro).
- Botão primário descreve a ação ("Excluir", não "OK").

## Sistema de feedback (resumo)
- **Toast/Snackbar**: confirmação rápida, não bloqueante.
- **Banner/Alert**: estado persistente da página (aviso, erro, info).
- **Inline**: validação por campo, junto ao input.
- **Empty/loading/error states**: por tela/lista.

## Checklist
- [ ] Todo estado relevante foi projetado (não só o carregado).
- [ ] Loading não trava a tela inteira sem necessidade.
- [ ] Empty states têm ação clara.
- [ ] Erros são recuperáveis (retry, manter dados).
- [ ] Feedback combina com a gravidade da ação.
