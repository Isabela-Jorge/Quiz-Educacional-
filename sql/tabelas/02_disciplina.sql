-- ============================================================
-- TABELA: disciplina
-- DESCRIÇÃO:
-- Armazena as disciplinas do curso de Desenvolvimento
-- de Sistemas, organizadas por módulos.
--
-- Cada disciplina poderá possuir um ou mais quizzes.
-- O cadastro das disciplinas será realizado pela
-- equipe de Banco de Dados.
-- ============================================================

CREATE TABLE disciplina (

    -- Identificador único da disciplina.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Nome da disciplina.
    -- VARCHAR(150): permite até 150 caracteres.
    -- NOT NULL: preenchimento obrigatório.
    nome VARCHAR(150) NOT NULL,

    -- Descrição da disciplina.
    -- TEXT: permite armazenar uma descrição mais extensa.
    -- Como não possui NOT NULL, o preenchimento é opcional.
    descricao TEXT,

    -- Identifica o módulo ao qual a disciplina pertence.
    -- TINYINT: armazena valores inteiros pequenos.
    -- NOT NULL: preenchimento obrigatório.
    modulo TINYINT NOT NULL,

    -- Restringe os módulos aos valores 1, 2 e 3.
    -- Impede cadastrar disciplinas em módulos inexistentes.
    CHECK (modulo BETWEEN 1 AND 3),

    -- Impede o cadastro da mesma disciplina duas vezes
    -- dentro de um mesmo módulo.
    --
    -- Permite que disciplinas com o mesmo nome existam
    -- em módulos diferentes.
    UNIQUE (nome, modulo)

);