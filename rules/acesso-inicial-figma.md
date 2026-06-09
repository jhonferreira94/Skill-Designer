# Acesso inicial ao Figma via MCP

Regra operacional para todo trabalho de criação/edição em arquivos Figma.
Antes de executar qualquer ação de design, a skill deve confirmar o acesso ao
arquivo com o usuário.

## Regra obrigatória

No início de cada demanda que envolva Figma, sempre solicitar:
- confirmação de que o usuário está logado no Figma;
- link completo do arquivo Figma;
- se possível, link da seção/frame específico com `node-id`.

Sem esses dados, não iniciar edição no arquivo.

## Pergunta padrão (usar no começo)

"Antes de começar: você já está logado no Figma e pode me enviar o link do
arquivo (de preferência já no frame/section com node-id)?"

## Onde o usuário pega o link do Figma

1. Barra de endereço do navegador
   - Abrir o arquivo no Figma e copiar a URL completa.

2. Botão Share (Compartilhar)
   - Canto superior direito: Share -> Copy link.

3. Link da seleção (frame/tela)
   - Selecionar o frame desejado e copiar o link da seleção para incluir
     `node-id`.

## Formato esperado do link

- Arquivo: `https://www.figma.com/design/<fileKey>/<nome>?...`
- Com alvo específico: `https://www.figma.com/design/<fileKey>/<nome>?node-id=13-110`

## Validação rápida de acesso

1. Abrir o link enviado.
2. Se houver erro 401/403, pedir login e novo compartilhamento.
3. Confirmar com o usuário qual página/frame deve ser alterado.
4. Só então iniciar criação/edição.

## Falhas comuns e resposta padrão

- Link sem permissão:
  - "Não consegui acessar este arquivo (erro de autenticação/permissão). Você
    pode confirmar o login e reenviar o link via Share?"

- Link genérico sem alvo:
  - "Perfeito. Você também pode me enviar o link da seção/frame específico com
    node-id para eu editar no local exato?"
