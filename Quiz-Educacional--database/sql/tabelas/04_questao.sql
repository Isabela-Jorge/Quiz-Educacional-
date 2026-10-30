-- ============================================================
-- TABELA: questao
-- DESCRIÇÃO:
-- Armazena as questões que compõem os quizzes do sistema.
--
-- Cada questão pertence a um único quiz.
-- Um quiz pode possuir várias questões.
--
-- As questões serão cadastradas exclusivamente pela
-- equipe de Banco de Dados, juntamente com suas alternativas.
--
-- REGRAS DE NEGÓCIO:
-- FACIL   =  5 pontos
-- MEDIO   = 10 pontos
-- DIFICIL = 15 pontos
--
-- Todas as questões possuem 15 segundos para resposta.
-- ============================================================

CREATE TABLE questao (

    -- Identificador único da questão.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Identificador do quiz ao qual a questão pertence.
    -- NOT NULL: toda questão deve pertencer a um quiz.
    -- Será utilizado como chave estrangeira.
    quiz_id INT NOT NULL,

    -- Texto da pergunta apresentada ao aluno.
    -- TEXT: permite armazenar enunciados extensos.
    -- NOT NULL: preenchimento obrigatório.
    enunciado TEXT NOT NULL,

    -- Define o nível de dificuldade da questão.
    -- Valores permitidos: FACIL, MEDIO ou DIFICIL.
    -- NOT NULL: preenchimento obrigatório.
    dificuldade VARCHAR(20) NOT NULL,

    -- Pontuação atribuída à questão.
    -- O valor depende do nível de dificuldade.
    -- NOT NULL: preenchimento obrigatório.
    pontos INT NOT NULL,

    -- Tempo máximo permitido para responder à questão.
    -- DEFAULT 15: utiliza 15 segundos quando o valor
    -- não é informado no INSERT.
    -- NOT NULL: impede valores nulos.
    tempo_limite_segundos INT NOT NULL DEFAULT 15,

    -- Restringe os níveis de dificuldade permitidos.
    -- Impede cadastrar dificuldades não previstas.
    CHECK (dificuldade IN ('FACIL', 'MEDIO', 'DIFICIL')),

    -- Garante que todas as questões tenham
    -- exatamente 15 segundos para resposta.
    CHECK (tempo_limite_segundos = 15),

    -- Garante que a pontuação corresponda
    -- ao nível de dificuldade da questão.
    --
    -- FACIL:   5 pontos
    -- MEDIO:  10 pontos
    -- DIFICIL: 15 pontos
    CHECK (
        (dificuldade = 'FACIL' AND pontos = 5)
        OR
        (dificuldade = 'MEDIO' AND pontos = 10)
        OR
        (dificuldade = 'DIFICIL' AND pontos = 15)
    ),

    -- Cria uma chave única composta por id e quiz_id.
    --
    -- Essa combinação será utilizada pela tabela
    -- resposta_aluno para garantir que uma questão
    -- pertença ao mesmo quiz da tentativa realizada.
    UNIQUE (id, quiz_id),

    -- Define o relacionamento entre questão e quiz.
    --
    -- FOREIGN KEY: estabelece a chave estrangeira.
    -- REFERENCES: identifica a tabela referenciada.
    --
    -- Impede cadastrar uma questão vinculada
    -- a um quiz inexistente.
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)

);