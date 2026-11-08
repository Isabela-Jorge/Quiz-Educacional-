-- ============================================================
-- TABELA: resposta_aluno
-- DESCRIÇÃO:
-- Armazena as respostas selecionadas pelos alunos
-- durante a realização dos quizzes.
--
-- Cada resposta pertence a uma tentativa e a uma questão.
--
-- O backend será responsável por inserir os registros
-- conforme o aluno responder às questões.
--
-- O gabarito NÃO é armazenado nesta tabela.
-- A alternativa correta está definida no campo
-- is_correta da tabela alternativa.
--
-- REGRAS DE NEGÓCIO:
-- 1. Cada questão pode ser respondida apenas uma vez
--    dentro da mesma tentativa.
--
-- 2. A questão respondida deve pertencer ao quiz
--    que está sendo realizado.
--
-- 3. A alternativa escolhida deve pertencer
--    à questão respondida.
--
-- 4. Uma resposta pode não possuir alternativa
--    selecionada, representando uma questão sem resposta.
-- ============================================================

CREATE TABLE resposta_aluno (

    -- Identificador único do registro de resposta.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Identificador do quiz ao qual a resposta pertence.
    --
    -- Será utilizado nas chaves estrangeiras compostas
    -- para validar o relacionamento entre a tentativa
    -- e a questão respondida.
    quiz_id INT NOT NULL,

    -- Identificador da tentativa realizada pelo aluno.
    --
    -- Permite identificar em qual execução do quiz
    -- a resposta foi registrada.
    tentativa_id INT NOT NULL,

    -- Identificador da questão que está sendo respondida.
    --
    -- Permite relacionar a resposta do aluno
    -- à pergunta cadastrada pela equipe de Banco de Dados.
    questao_id INT NOT NULL,

    -- Identificador da alternativa selecionada pelo aluno.
    --
    -- Quando preenchido, deve corresponder a uma
    -- alternativa pertencente à questão respondida.
    --
    -- NULL: permite registrar uma questão sem resposta,
    -- por exemplo, quando o tempo se esgota.
    alternativa_escolhida_id INT,

    -- Impede que a mesma questão seja registrada
    -- duas vezes dentro de uma única tentativa.
    --
    -- O aluno poderá responder à mesma questão
    -- em outra tentativa do quiz.
    UNIQUE (tentativa_id, questao_id),

    -- CHAVE ESTRANGEIRA COMPOSTA:
    --
    -- Relaciona a resposta à tentativa e ao quiz.
    --
    -- Garante que o quiz_id informado na resposta
    -- corresponda ao quiz_id da tentativa.
    --
    -- Impede associar uma resposta a um quiz diferente
    -- daquele que o aluno está realizando.
    FOREIGN KEY (tentativa_id, quiz_id)
        REFERENCES tentativa(id, quiz_id),

    -- CHAVE ESTRANGEIRA COMPOSTA:
    --
    -- Relaciona a resposta à questão e ao quiz.
    --
    -- Garante que a questão respondida realmente
    -- pertença ao quiz associado à tentativa.
    --
    -- Impede responder questões de outros quizzes.
    FOREIGN KEY (questao_id, quiz_id)
        REFERENCES questao(id, quiz_id),

    -- CHAVE ESTRANGEIRA COMPOSTA:
    --
    -- Relaciona a alternativa escolhida à questão.
    --
    -- Garante que a alternativa selecionada
    -- pertença à questão que está sendo respondida.
    --
    -- Impede utilizar uma alternativa cadastrada
    -- para outra questão.
    --
    -- Quando alternativa_escolhida_id é NULL,
    -- essa chave estrangeira permite o registro.
    FOREIGN KEY (alternativa_escolhida_id, questao_id)
        REFERENCES alternativa(id, questao_id)

);