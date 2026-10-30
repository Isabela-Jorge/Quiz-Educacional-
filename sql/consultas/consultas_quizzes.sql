-- ============================================================
-- PROJETO: Quiz Integrador
-- CONSULTAS: Listagem de quizzes
-- OBJETIVO: Exibir quizzes e suas respectivas disciplinas
-- ============================================================

USE quiz_ds_db;

-- ============================================================
-- CONSULTA 01 - LISTAR QUIZZES DISPONÍVEIS
-- ============================================================

SELECT
    q.id AS quiz_id,
    q.titulo AS quiz,
    d.nome AS disciplina,
    d.modulo,
    COUNT(qt.id) AS total_questoes
FROM quiz q
INNER JOIN disciplina d
    ON d.id = q.disciplina_id
LEFT JOIN questao qt
    ON qt.quiz_id = q.id
GROUP BY
    q.id,
    q.titulo,
    d.nome,
    d.modulo
ORDER BY
    d.modulo,
    d.nome,
    q.titulo;