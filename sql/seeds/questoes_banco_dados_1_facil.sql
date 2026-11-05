-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Bancos de Dados I - Módulo 1
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Bancos de Dados I
SET @quiz_bd1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Bancos de Dados I'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- BANCOS DE DADOS I | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd1_id, 'O que é um banco de dados relacional?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando SQL é usado para consultar registros?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando SQL adiciona novos registros a uma tabela?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando SQL altera dados já cadastrados?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando SQL remove registros conforme uma condição?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'O que representa uma linha de uma tabela relacional?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'O que representa uma coluna em uma tabela?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual é a finalidade de uma chave primária?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual é a função de uma chave estrangeira?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual tipo de dado é apropriado para armazenar números inteiros no MySQL?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual tipo de dado é indicado para armazenar datas sem horário no MySQL?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual cláusula SQL filtra linhas de acordo com uma condição?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual cláusula ordena os resultados de uma consulta?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual palavra-chave remove linhas duplicadas do resultado de uma consulta?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'O que significa NULL em uma coluna SQL?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando cria uma nova tabela?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando remove a estrutura de uma tabela no MySQL?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual comando mostra todos os campos de uma tabela chamada aluno?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual operador SQL verifica igualdade em uma condição?', 'FACIL', 5, 15),
(@quiz_bd1_id, 'Qual restrição impede valores repetidos em uma coluna ou conjunto de colunas?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTAR OS IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 9
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- BANCOS DE DADOS I | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 70 | Correta: A
(70, 'Um conjunto de dados organizados em tabelas relacionadas.', TRUE),
(70, 'Um equipamento físico de armazenamento.', FALSE),
(70, 'Um programa usado apenas para editar imagens.', FALSE),
(70, 'Um arquivo que contém somente senhas.', FALSE),

-- Questão 02 | ID 71 | Correta: A
(71, 'SELECT', TRUE),
(71, 'DELETE', FALSE),
(71, 'INSERT', FALSE),
(71, 'UPDATE', FALSE),

-- Questão 03 | ID 72 | Correta: C
(72, 'DROP', FALSE),
(72, 'SELECT', FALSE),
(72, 'INSERT', TRUE),
(72, 'ALTER', FALSE),

-- Questão 04 | ID 73 | Correta: A
(73, 'UPDATE', TRUE),
(73, 'TRUNCATE', FALSE),
(73, 'CREATE', FALSE),
(73, 'SELECT', FALSE),

-- Questão 05 | ID 74 | Correta: B
(74, 'CREATE', FALSE),
(74, 'DELETE', TRUE),
(74, 'INSERT', FALSE),
(74, 'GRANT', FALSE),

-- Questão 06 | ID 75 | Correta: A
(75, 'Um registro.', TRUE),
(75, 'Um banco inteiro.', FALSE),
(75, 'Um índice obrigatório.', FALSE),
(75, 'Uma chave estrangeira.', FALSE),

-- Questão 07 | ID 76 | Correta: B
(76, 'Uma cópia do banco.', FALSE),
(76, 'Um atributo dos registros.', TRUE),
(76, 'Uma conexão de rede.', FALSE),
(76, 'Um comando de exclusão.', FALSE),

-- Questão 08 | ID 77 | Correta: A
(77, 'Identificar de forma única cada registro da tabela.', TRUE),
(77, 'Definir a cor dos relatórios.', FALSE),
(77, 'Eliminar a necessidade de tabelas.', FALSE),
(77, 'Armazenar obrigatoriamente uma senha.', FALSE),

-- Questão 09 | ID 78 | Correta: B
(78, 'Impedir qualquer consulta à tabela.', FALSE),
(78, 'Referenciar uma chave de outra tabela, estabelecendo um relacionamento.', TRUE),
(78, 'Converter textos em números automaticamente.', FALSE),
(78, 'Criar cópias de segurança.', FALSE),

-- Questão 10 | ID 79 | Correta: A
(79, 'INT', TRUE),
(79, 'DATE', FALSE),
(79, 'VARCHAR', FALSE),
(79, 'TEXT', FALSE),

-- Questão 11 | ID 80 | Correta: A
(80, 'DATE', TRUE),
(80, 'DECIMAL', FALSE),
(80, 'BOOLEAN', FALSE),
(80, 'INT', FALSE),

-- Questão 12 | ID 81 | Correta: A
(81, 'WHERE', TRUE),
(81, 'FROM', FALSE),
(81, 'AS', FALSE),
(81, 'ORDER BY', FALSE),

-- Questão 13 | ID 82 | Correta: C
(82, 'WHERE', FALSE),
(82, 'SET', FALSE),
(82, 'ORDER BY', TRUE),
(82, 'VALUES', FALSE),

-- Questão 14 | ID 83 | Correta: C
(83, 'PRIMARY', FALSE),
(83, 'DEFAULT', FALSE),
(83, 'DISTINCT', TRUE),
(83, 'REFERENCES', FALSE),

-- Questão 15 | ID 84 | Correta: C
(84, 'Uma cadeia de texto vazia obrigatória.', FALSE),
(84, 'O número zero em qualquer contexto.', FALSE),
(84, 'Ausência de valor conhecido ou informado.', TRUE),
(84, 'O valor booleano falso.', FALSE),

-- Questão 16 | ID 85 | Correta: A
(85, 'CREATE TABLE', TRUE),
(85, 'UPDATE TABLE', FALSE),
(85, 'SELECT TABLE', FALSE),
(85, 'INSERT TABLE', FALSE),

-- Questão 17 | ID 86 | Correta: C
(86, 'ORDER BY', FALSE),
(86, 'SELECT FROM', FALSE),
(86, 'DROP TABLE', TRUE),
(86, 'DELETE FROM', FALSE),

-- Questão 18 | ID 87 | Correta: B
(87, 'GET ALL aluno;', FALSE),
(87, 'SELECT * FROM aluno;', TRUE),
(87, 'SELECT aluno FROM *;', FALSE),
(87, 'SHOW * WHERE aluno;', FALSE),

-- Questão 19 | ID 88 | Correta: A
(88, '=', TRUE),
(88, '!=', FALSE),
(88, '<>', FALSE),
(88, '>=', FALSE),

-- Questão 20 | ID 89 | Correta: A
(89, 'UNIQUE', TRUE),
(89, 'NULL', FALSE),
(89, 'DEFAULT', FALSE),
(89, 'CHECKPOINT', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE BANCOS DE DADOS I
-- ============================================================

SELECT
    q.id AS questao_id,
    q.enunciado,
    COUNT(a.id) AS total_alternativas,
    COALESCE(SUM(a.is_correta), 0) AS alternativas_corretas,
    CASE
        WHEN COUNT(a.id) = 4
         AND COALESCE(SUM(a.is_correta), 0) = 1
        THEN 'OK'
        ELSE 'VERIFICAR'
    END AS validacao
FROM questao q
LEFT JOIN alternativa a ON a.questao_id = q.id
WHERE q.quiz_id = 9
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;