-- ============================================================
-- PROJETO: Quiz Integrador
-- CONSULTAS: Desempenho por disciplina
-- ============================================================

USE quiz_ds_db;

-- ============================================================
-- CONSULTA 01 - DESEMPENHO DO ALUNO POR DISCIPLINA
-- ============================================================

-- ID do aluno que desejamos consultar
SET @usuario_id = 7;

SELECT
    d.id AS disciplina_id,
    d.nome AS disciplina,
    d.modulo,
    COUNT(t.id) AS total_tentativas,
    ROUND(AVG(t.pontuacao_total), 2) AS media_pontuacao,
    MAX(t.pontuacao_total) AS maior_pontuacao,
    MIN(t.pontuacao_total) AS menor_pontuacao
FROM tentativa t
INNER JOIN quiz q
    ON q.id = t.quiz_id
INNER JOIN disciplina d
    ON d.id = q.disciplina_id
WHERE t.usuario_id = @usuario_id
  AND t.status = 'FINALIZADA'
GROUP BY
    d.id,
    d.nome,
    d.modulo
ORDER BY
    d.modulo,
    d.nome;