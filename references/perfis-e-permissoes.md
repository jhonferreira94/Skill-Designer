# Perfis e Permissões

Definir **quem usa** o sistema e **o que cada um pode fazer**. Sem isso,
fluxos de aprovação, edição e exclusão ficam ambíguos.

## Para cada perfil, descreva
- **Nome do perfil** (ex.: Administrador, Gestor, Operador, Visitante).
- **Objetivos** — o que tenta alcançar no sistema.
- **Responsabilidades** — o que é dono/responsável.
- **Permissões** — nível de acesso geral.
- **Pode visualizar** / **criar** / **editar** / **excluir**.
- **Pode aprovar ou reprovar** (quando há fluxo de aprovação).
- **Restrições** — o que explicitamente NÃO pode.

> Considere níveis de acesso (RBAC) quando fizer sentido. Comece pelo perfil de
> maior poder e vá restringindo.

## Matriz de permissões (modelo)
Use uma tabela por **recurso/entidade** × **perfil**:

| Recurso | Admin | Gestor | Operador | Visitante |
|---|---|---|---|---|
| Usuários | CRUD + aprovar | ver + editar | — | — |
| Registros | CRUD | criar + editar | criar | ver |
| Relatórios | ver + exportar | ver + exportar | ver | — |
| Configurações | CRUD | — | — | — |

Legenda: **C**riar, **R**ler, **U**pdate, **D**elete. "—" = sem acesso.

## Reflexo na interface
- Esconda (ou desabilite com tooltip) ações que o perfil não pode executar —
  nunca exiba botão que sempre dá erro de permissão.
- Telas inteiras sem acesso → ver "sem permissão" em [Fluxos Excepcionais](./fluxos-excepcionais.md).
- Diferencie **ocultar** (não deve saber que existe) de **desabilitar**
  (existe, mas indisponível agora) conforme a sensibilidade.

## Checklist
- [ ] Todos os perfis foram listados (inclusive não autenticado/visitante).
- [ ] Cada ação crítica (excluir, aprovar, exportar) tem dono claro.
- [ ] Restrições explícitas por perfil.
- [ ] A UI reflete as permissões (oculta/desabilita corretamente).
