# Fluxos Excepcionais

O "fluxo feliz" é só parte do trabalho. Especifique **como a interface responde**
quando algo dá errado — é o que separa um protótipo de um produto real.

## Casos a cobrir

### Usuário sem permissão
- Esconda a ação quando possível; se exibida, mostre **por que** está bloqueada.
- Tela inteira sem acesso → estado "Acesso restrito" + caminho de volta.
- Nunca um botão que sempre resulta em erro 403.

### Sessão expirada
- Detecte 401 → mensagem clara + redirecionar para login.
- **Preserve o contexto**: após logar, volte para onde o usuário estava.
- Evite perder dados não salvos — avise antes ou salve rascunho.

### Internet indisponível / offline
- Banner persistente "Você está offline".
- Desabilite ações que exigem rede; permita retry ao voltar.
- Mensagem de erro de conexão com botão "Tentar novamente".

### Dados não encontrados (404)
- Estado dedicado: "Não encontramos este item" + voltar para a lista.
- Diferencie de **vazio** (existe, sem dados) e **erro** (falhou ao carregar).

### Arquivo inválido
- Valide tipo, tamanho e formato **antes** do upload quando possível.
- Mensagem específica: "Envie um arquivo .xlsx de até 10 MB."
- Não limpe os outros campos do formulário por causa de um arquivo errado.

### Upload interrompido
- Mostre progresso; em falha, permita **retomar/reenviar** sem refazer tudo.
- Deixe claro o que foi e o que não foi enviado.

### Limites excedidos
- Plano/cota atingida → explique o limite e ofereça o próximo passo (upgrade, remover itens).
- Rate limit → "Muitas tentativas. Tente novamente em instantes."

### Duplicidade de cadastro
- Detecte antes de salvar (e-mail/CPF/nome já existe).
- Mensagem que oriente: "Este e-mail já está cadastrado. Faça login ou recupere a senha."

## Princípios
- Todo erro: **diga o que houve** + **como resolver** (ver [Microcopy](../rules/microcopy-conteudo.md)).
- **Nunca um beco sem saída**: sempre há uma ação de recuperação.
- **Preserve o trabalho** do usuário (dados preenchidos, contexto, rascunho).
- Diferencie claramente **vazio × erro × sem permissão × não encontrado**
  (ver [Estados de Interface](./estados-de-interface.md)).

## Checklist
- [ ] Sem permissão, sessão expirada, offline, 404, arquivo inválido, upload
      interrompido, limite excedido e duplicidade têm resposta definida.
- [ ] Toda exceção tem mensagem clara + caminho de recuperação.
- [ ] Nenhum estado de erro descarta dados já preenchidos.
