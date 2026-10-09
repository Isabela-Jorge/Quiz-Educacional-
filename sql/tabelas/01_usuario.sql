-- ============================================================
-- TABELA: usuario
-- DESCRIÇÃO:
-- Armazena os dados dos usuários cadastrados no sistema.
-- Os usuários podem possuir dois perfis: ALUNO ou PROFESSOR.
-- ============================================================

CREATE TABLE usuario (

    -- Identificador único do usuário.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome do usuário.
    -- Campo obrigatório, com até 100 caracteres.
    nome VARCHAR(100) NOT NULL,

    -- Nome de usuário utilizado para identificação no sistema.
    -- UNIQUE: impede o cadastro de nomes de usuário repetidos.
    -- NOT NULL: preenchimento obrigatório.
    usuario VARCHAR(50) UNIQUE NOT NULL,

    -- Endereço de e-mail do usuário.
    -- UNIQUE: impede o cadastro de e-mails duplicados.
    -- Também poderá ser utilizado na recuperação de senha.
    email VARCHAR(100) UNIQUE NOT NULL,

    -- Armazena o hash da senha do usuário.
    -- A senha não deve ser armazenada em texto puro.
    -- A geração e a verificação do hash serão feitas pelo backend.
    senha VARCHAR(255) NOT NULL,

    -- Define o perfil de acesso do usuário.
    -- Os valores permitidos são ALUNO e PROFESSOR.
    tipo VARCHAR(20) NOT NULL,

    -- Restringe os valores aceitos no campo tipo.
    -- Impede o cadastro de perfis não previstos no sistema.
    CHECK (tipo IN ('ALUNO', 'PROFESSOR'))

);