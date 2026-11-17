Título: Implementar validação de caracteres permitidos no nome de usuário

Tela: Meu perfil

Problema identificado: Atualmente, o sistema permite que o usuário utilize emojis ao alterar seu nome de usuário, aceitando caracteres que não deveriam ser considerados válidos.

Sugestão de melhoria: Implementar uma validação de caracteres no Front-end, verificando se o nome de usuário contém apenas letras, números e caracteres permitidos antes de salvar a alteração.

Caso o nome de usuário contenha emojis ou caracteres inválidos, o sistema deverá impedir o salvamento e exibir uma mensagem informativa ao usuário, como: "O nome de usuário contém caracteres inválidos. Remova os emojis e tente novamente".

Resultado esperado: O sistema deverá aceitar somente nomes de usuário que respeitem os critérios de validação, impedindo o uso de emojis e caracteres não permitidos.

Prioridade sugerida: Alta

Bug de origem: BUG-001