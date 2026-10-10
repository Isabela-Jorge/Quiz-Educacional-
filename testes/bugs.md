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