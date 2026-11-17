BUG-001 – Campo de senha permite quantidade ilimitada de caracteres

- Tela: Cadastro/Login
- Problema: O campo de senha permite inserir uma quantidade ilimitada de números/caracteres.
- Esperado: O sistema deve limitar a quantidade de caracteres da senha conforme a regra definida nos requisitos do projeto.
- Atual: É possível inserir uma quantidade indefinida de caracteres no campo de senha.
- Status: 🔴 Aberto
- Retestado: ❌

----------------------------------------

BUG-002 – Campo de senha permite espaços

- Tela: Cadastro/Login
- Problema: É possível criar uma senha contendo espaços entre os caracteres.
- Esperado: O sistema deve validar se espaços são permitidos na senha conforme as regras definidas para o sistema.
- Atual: O sistema permite criar uma senha contendo espaços.
- Status: 🔴 Aberto
- Retestado: ❌

---------------------------------------

BUG-003 – Campo de senha permite utilização de emojis

- Tela: Cadastro/Login
- Problema: É possível criar uma senha contendo emojis entre os caracteres.
- Esperado: O sistema deve validar a utilização de emojis na senha de acordo com as regras definidas nos requisitos.
- Atual: O sistema permite criar uma senha contendo emojis.
- Status: 🔴 Aberto
- Retestado: ❌

--------------------------------------------

BUG-004 – Validação de e-mail aceita endereço inválido

- Tela: Cadastro/Login
- Problema: O sistema permite utilizar endereços de e-mail em formatos inválidos, como "@G" e "a@g".
- Esperado: O sistema deve rejeitar formatos de e-mail inválidos e informar o usuário.
- Atual: O sistema aceita "@G" e "a@g" como e-mails válidos.
- Status: 🔴 Aberto
- Retestado: ❌


BUG-005 – Campo de nome completo não da para fazer alterações

- Tela: Perfil
- Problema: Não dá para modificar o nome completo.
- Esperado: O usuario deve clicar e conseguir modificar o nome.
- Atual: Não é possível digitar no campo de nome completo.
- Status: 🔴 Aberto
- Retestado: ❌



BUG-006 – Falha ao processar resposta do servidor no cadastro (Erro de JSON)

- Tela: Cadastro (Criar Conta)
- Problema: Ao tentar realizar o cadastro, o sistema exibe o erro técnico "Failed to execute 'json' on 'Response': Unexpected end of JSON input" na interface. Isso ocorre quando o servidor retorna uma resposta vazia ou ocorre falha na comunicação com o backend/banco de dados, e o frontend não trata a exceção adequadamente.
- Esperado: O sistema deve concluir o cadastro com sucesso ou, em caso de falha no servidor, exibir uma mensagem amigável e clara em português para o usuário (ex: "Erro ao conectar com o servidor. Tente novamente.").
- Atual: O cadastro falha e exibe uma mensagem de erro técnico de código em inglês diretamente na tela.
- Status: 🔴 Aberto
- Retestado: ❌

----------------------------------------

BUG-007 – Campo de nome permite números e caracteres especiais

- Tela: Cadastro (Criar Conta)
- Problema: O campo de nome permite inserir números e símbolos especiais (ex: "e9du ardo%").
- Esperado: O sistema deve aceitar apenas letras e espaços no campo de nome, bloqueando números e caracteres especiais.
- Atual: O sistema permite preencher o campo de nome com números e caracteres especiais sem exibir alerta de validação.
- Status: 🔴 Aberto
- Retestado: ❌