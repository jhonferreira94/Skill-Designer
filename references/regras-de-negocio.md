# Regras de Negócio

As regras que governam **o que é válido** e **como o estado muda**. Sem isso,
a interface não sabe quando habilitar ações, exibir erros ou mudar status.

## O que mapear
- **Campos obrigatórios** — por formulário/entidade.
- **Restrições** — formato, tamanho, unicidade, faixas de valor.
- **Dependências** — campo/ação que só existe quando outro tem certo valor.
- **Permissões** — quem pode disparar cada transição (ver [Perfis e Permissões](./perfis-e-permissoes.md)).
- **Status possíveis** — todos os estados de uma entidade.
- **Transições de status** — de qual estado para qual, e o que dispara.

## Tabela de campos (modelo)
| Campo | Obrigatório | Regra/Formato | Mensagem de erro |
|---|---|---|---|
| E-mail | Sim | formato válido, único | "Informe um e-mail válido." |
| Senha | Sim | mín. 8, 1 número | "A senha precisa de ao menos 8 caracteres." |
| Valor | Sim | > 0 | "O valor deve ser maior que zero." |

## Máquina de estados (modelo)
Liste status e transições permitidas. Ex.: um conteúdo:

| De \ Para | Rascunho | Em revisão | Publicado | Arquivado |
|---|---|---|---|---|
| Rascunho | — | Enviar | — | Arquivar |
| Em revisão | Reprovar | — | Aprovar | — |
| Publicado | — | — | — | Arquivar |
| Arquivado | Restaurar | — | — | — |

- Cada transição define: **quem pode**, **pré-condições**, **feedback** e
  **efeitos colaterais** (notificar, registrar histórico).
- Transição inexistente na tabela = ação **não exibida/desabilitada** na UI.

## Reflexo na interface
- Campos obrigatórios marcados; validação conforme [Ações de Componentes](./acoes-de-componentes.md).
- Botão de transição só aparece se a transição é válida para o status atual + perfil.
- Status visível por **badge/tag** com cor consistente (e nunca só cor — ver [acessibilidade](./accessibility.md)).

## Checklist
- [ ] Todo campo obrigatório tem regra e mensagem de erro definidas.
- [ ] Todos os status e transições estão mapeados em tabela.
- [ ] Cada transição tem dono (perfil) e pré-condições.
- [ ] A UI esconde/desabilita transições inválidas.
- [ ] Status comunicado por texto + cor + ícone (não só cor).
