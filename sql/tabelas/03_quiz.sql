-- ============================================================
-- TABELA: quiz
-- DESCRIÇÃO:
-- Armazena os quizzes disponíveis no sistema.
--
-- Cada quiz pertence a uma disciplina específica.
-- Uma disciplina pode possuir vários quizzes.
--
-- O cadastro dos quizzes será realizado exclusivamente
-- pela equipe de Banco de Dados.
-- ============================================================

CREATE TABLE quiz (

    -- Identificador único do quiz.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Identificador da disciplina à qual o quiz pertence.
    -- NOT NULL: todo quiz deve estar associado a uma disciplina.
    -- Este campo será utilizado como chave estrangeira.
    disciplina_id INT NOT NULL,

    -- Título do quiz que será apresentado ao aluno.
    -- VARCHAR(100): permite até 100 caracteres.
    -- NOT NULL: preenchimento obrigatório.
    titulo VARCHAR(100) NOT NULL,

    -- Define o relacionamento entre quiz e disciplina.
    --
    -- FOREIGN KEY: estabelece a chave estrangeira.
    -- REFERENCES: indica a tabela e a coluna referenciadas.
    --
    -- Impede cadastrar um quiz associado a uma
    -- disciplina que não existe no banco de dados.
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)

);