Título: Implementar validação adequada de endereços de e-mail

Tela: Cadastro/Login

Problema identificado: Atualmente, o sistema permite que o usuário insira endereços de e-mail com formatos inválidos, como "@G" e "a@g", sem apresentar qualquer aviso ou impedir o envio do formulário.

Sugestão de melhoria: Implementar uma validação de formato de e-mail no Front-end, verificando se o endereço informado possui uma estrutura válida antes de permitir o envio do formulário.

Caso o e-mail não atenda aos critérios de validação, o sistema deverá impedir o prosseguimento da ação e exibir uma mensagem informativa ao usuário, como: "Por favor, insira um endereço de e-mail válido".

Resultado esperado: O sistema deverá aceitar somente endereços de e-mail com formato válido, apresentando mensagens de orientação sempre que forem identificadas informações incorretas.

Prioridade sugerida: Alta

Bug de origem: BUG-004