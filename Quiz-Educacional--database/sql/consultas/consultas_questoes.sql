-- ============================================================
-- PROJETO: Quiz Integrador
-- CONSULTAS: Questões e alternativas
-- ============================================================

USE quiz_ds_db;

-- ============================================================
-- CONSULTA 01 - LISTAR QUESTÕES E ALTERNATIVAS DE UM QUIZ
-- ============================================================

SET @quiz_id = 26;

SELECT
    q.id AS questao_id,
    q.enunciado,
    q.dificuldade,
    q.pontos,
    q.tempo_limite_segundos,
    a.id AS alternativa_id,
    a.texto_alternativa
FROM questao q
INNER JOIN alternativa a
    ON a.questao_id = q.id
WHERE q.quiz_id = @quiz_id
ORDER BY
    q.id,
    a.id;