-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- =====================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA - Banco de Dados II - MÓDULO 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- =====================================================

USE quiz_ds_db;

-- Identificar o quiz de Bancos de Dados II
SET @quiz_bd2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Bancos de Dados II'
      AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- BANCOS DE DADOS II | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd2_id, 'Qual comando SQL modifica registros já existentes em uma tabela?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando SQL remove registros de uma tabela conforme uma condição?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual cláusula filtra grupos produzidos por GROUP BY?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual função SQL retorna a quantidade de linhas?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando SQL cria uma visualização virtual baseada em uma consulta?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual cláusula organiza o resultado de uma consulta?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual operador SQL verifica se um valor pertence a uma lista?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando SQL adiciona uma nova coluna a uma tabela existente?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual instrução SQL inicia explicitamente uma transação no MySQL?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando confirma as alterações de uma transação?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando desfaz alterações ainda não confirmadas em uma transação?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual recurso pode acelerar pesquisas em colunas consultadas com frequência?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual cláusula reúne registros com valores comuns para agregação?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual operador verifica a ausência de valor em uma coluna SQL?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual tipo de JOIN retorna apenas combinações com correspondência nas duas tabelas?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual recurso do MySQL executa automaticamente ações em resposta a eventos de uma tabela?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual comando SQL pode conceder privilégios a um usuário?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual instrução permite consultar o plano de execução de uma consulta MySQL?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual função SQL calcula a média dos valores numéricos não nulos?', 'FACIL', 5, 15),
(@quiz_bd2_id, 'Qual restrição impede valores repetidos em uma coluna ou conjunto de colunas?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_bd2_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- BANCOS DE DADOS II | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 370 | Correta: UPDATE
(370, 'UPDATE', TRUE),
(370, 'INSERT', FALSE),
(370, 'SELECT', FALSE),
(370, 'CREATE', FALSE),

-- Questão 02 | ID 371 | Correta: DELETE
(371, 'DROP', FALSE),
(371, 'DELETE', TRUE),
(371, 'TRUNCATE', FALSE),
(371, 'ALTER', FALSE),

-- Questão 03 | ID 372 | Correta: HAVING
(372, 'WHERE', FALSE),
(372, 'ORDER BY', FALSE),
(372, 'HAVING', TRUE),
(372, 'LIMIT', FALSE),

-- Questão 04 | ID 373 | Correta: COUNT()
(373, 'SUM()', FALSE),
(373, 'AVG()', FALSE),
(373, 'MAX()', FALSE),
(373, 'COUNT()', TRUE),

-- Questão 05 | ID 374 | Correta: CREATE VIEW
(374, 'CREATE VIEW', TRUE),
(374, 'CREATE TABLE', FALSE),
(374, 'CREATE INDEX', FALSE),
(374, 'CREATE DATABASE', FALSE),

-- Questão 06 | ID 375 | Correta: ORDER BY
(375, 'GROUP BY', FALSE),
(375, 'ORDER BY', TRUE),
(375, 'HAVING', FALSE),
(375, 'WHERE', FALSE),

-- Questão 07 | ID 376 | Correta: IN
(376, 'BETWEEN', FALSE),
(376, 'LIKE', FALSE),
(376, 'IN', TRUE),
(376, 'IS NULL', FALSE),

-- Questão 08 | ID 377 | Correta: ALTER TABLE
(377, 'UPDATE TABLE', FALSE),
(377, 'CREATE TABLE', FALSE),
(377, 'INSERT INTO', FALSE),
(377, 'ALTER TABLE', TRUE),

-- Questão 09 | ID 378 | Correta: START TRANSACTION
(378, 'START TRANSACTION', TRUE),
(378, 'COMMIT', FALSE),
(378, 'ROLLBACK', FALSE),
(378, 'SAVEPOINT', FALSE),

-- Questão 10 | ID 379 | Correta: COMMIT
(379, 'ROLLBACK', FALSE),
(379, 'COMMIT', TRUE),
(379, 'SAVEPOINT', FALSE),
(379, 'LOCK TABLES', FALSE),

-- Questão 11 | ID 380 | Correta: ROLLBACK
(380, 'COMMIT', FALSE),
(380, 'SAVEPOINT', FALSE),
(380, 'ROLLBACK', TRUE),
(380, 'GRANT', FALSE),

-- Questão 12 | ID 381 | Correta: INDEX
(381, 'VIEW', FALSE),
(381, 'TRIGGER', FALSE),
(381, 'PROCEDURE', FALSE),
(381, 'INDEX', TRUE),

-- Questão 13 | ID 382 | Correta: GROUP BY
(382, 'GROUP BY', TRUE),
(382, 'ORDER BY', FALSE),
(382, 'LIMIT', FALSE),
(382, 'DISTINCT', FALSE),

-- Questão 14 | ID 383 | Correta: IS NULL
(383, '= NULL', FALSE),
(383, 'IS NULL', TRUE),
(383, 'LIKE NULL', FALSE),
(383, 'IN NULL', FALSE),

-- Questão 15 | ID 384 | Correta: INNER JOIN
(384, 'LEFT JOIN', FALSE),
(384, 'RIGHT JOIN', FALSE),
(384, 'INNER JOIN', TRUE),
(384, 'CROSS JOIN', FALSE),

-- Questão 16 | ID 385 | Correta: TRIGGER
(385, 'VIEW', FALSE),
(385, 'INDEX', FALSE),
(385, 'FUNCTION', FALSE),
(385, 'TRIGGER', TRUE),

-- Questão 17 | ID 386 | Correta: GRANT
(386, 'GRANT', TRUE),
(386, 'REVOKE', FALSE),
(386, 'DENY', FALSE),
(386, 'ROLLBACK', FALSE),

-- Questão 18 | ID 387 | Correta: EXPLAIN
(387, 'DESCRIBE DATABASE', FALSE),
(387, 'EXPLAIN', TRUE),
(387, 'SHOW GRANTS', FALSE),
(387, 'SHOW TABLES', FALSE),

-- Questão 19 | ID 388 | Correta: AVG()
(388, 'SUM()', FALSE),
(388, 'COUNT()', FALSE),
(388, 'AVG()', TRUE),
(388, 'MIN()', FALSE),

-- Questão 20 | ID 389 | Correta: UNIQUE
(389, 'DEFAULT', FALSE),
(389, 'CHECK', FALSE),
(389, 'NOT NULL', FALSE),
(389, 'UNIQUE', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE BANCOS DE DADOS II
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
LEFT JOIN alternativa a
    ON a.questao_id = q.id
WHERE q.quiz_id = 10
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
