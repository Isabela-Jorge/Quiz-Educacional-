-- =====================================================
-- RANKING GERAL
-- Soma a pontuação da última tentativa finalizada
-- de cada aluno em cada quiz.
-- =====================================================

WITH ultimas_tentativas AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY data_hora_fim DESC, id DESC
        ) AS posicao
    FROM tentativa
    WHERE status = 'FINALIZADA'
)
SELECT
    u.id AS aluno_id,
    u.nome AS aluno,
    SUM(t.pontuacao_total) AS pontuacao_geral
FROM ultimas_tentativas t
INNER JOIN usuario u ON u.id = t.usuario_id
WHERE t.posicao = 1
  AND u.tipo = 'ALUNO'
GROUP BY u.id, u.nome
ORDER BY pontuacao_geral DESC, u.nome ASC;

-- =====================================================
-- RANKING POR QUIZ
-- Considera a última tentativa finalizada de cada aluno.
-- =====================================================

WITH ultimas_tentativas AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY data_hora_fim DESC, id DESC
        ) AS posicao
    FROM tentativa
    WHERE status = 'FINALIZADA'
)
SELECT
    q.id AS quiz_id,
    q.titulo AS quiz,
    u.nome AS aluno,
    t.pontuacao_total
FROM ultimas_tentativas t
INNER JOIN usuario u ON u.id = t.usuario_id
INNER JOIN quiz q ON q.id = t.quiz_id
WHERE t.posicao = 1
  AND u.tipo = 'ALUNO'
ORDER BY q.id, t.pontuacao_total DESC, u.nome ASC;