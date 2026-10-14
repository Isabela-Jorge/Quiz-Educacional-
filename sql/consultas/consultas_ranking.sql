-- =====================================================
-- RANKING GERAL
-- Soma a maior pontuacao de cada aluno em cada quiz.
-- =====================================================

WITH maiores_pontuacoes AS (
    SELECT
        usuario_id,
        quiz_id,
        MAX(pontuacao_total) AS maior_pontuacao
    FROM tentativa
    WHERE status = 'FINALIZADA'
    GROUP BY usuario_id, quiz_id
)
SELECT
    u.id AS aluno_id,
    u.nome AS aluno,
    SUM(mp.maior_pontuacao) AS pontuacao_geral
FROM maiores_pontuacoes mp
INNER JOIN usuario u
    ON u.id = mp.usuario_id
WHERE u.tipo = 'ALUNO'
GROUP BY u.id, u.nome
ORDER BY pontuacao_geral DESC, u.nome ASC;


-- =====================================================
-- RANKING POR QUIZ
-- Mostra a maior pontuacao de cada aluno em cada quiz.
-- =====================================================

SELECT
    q.id AS quiz_id,
    q.titulo AS quiz,
    u.id AS aluno_id,
    u.nome AS aluno,
    MAX(t.pontuacao_total) AS maior_pontuacao
FROM tentativa t
INNER JOIN usuario u
    ON u.id = t.usuario_id
INNER JOIN quiz q
    ON q.id = t.quiz_id
WHERE t.status = 'FINALIZADA'
  AND u.tipo = 'ALUNO'
GROUP BY
    q.id,
    q.titulo,
    u.id,
    u.nome
ORDER BY
    q.id,
    maior_pontuacao DESC,
    u.nome ASC;
