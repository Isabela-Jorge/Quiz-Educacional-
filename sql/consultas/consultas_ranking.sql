-- ============================================================
-- RANKING GERAL
-- Considera somente o último quiz finalizado de cada aluno.
-- RN14: alunos com a mesma pontuação ocupam a mesma posição.
-- ============================================================

WITH ultimas_tentativas AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY data_hora_fim DESC, id DESC
        ) AS numero
    FROM tentativa
    WHERE status = 'FINALIZADA'
),
pontuacoes_por_quiz AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total
    FROM ultimas_tentativas
    WHERE numero = 1
),
soma_ranking AS (
    SELECT
        u.id AS aluno_id,
        u.nome AS aluno,
        SUM(p.pontuacao_total) AS pontuacao_geral,
        RANK() OVER (
            ORDER BY SUM(p.pontuacao_total) DESC
        ) AS posicao
    FROM pontuacoes_por_quiz p
    INNER JOIN usuario u ON u.id = p.usuario_id
    WHERE u.tipo = 'ALUNO'
    GROUP BY u.id, u.nome
)
SELECT
    posicao,
    aluno_id,
    aluno,
    pontuacao_geral
FROM soma_ranking
ORDER BY posicao, aluno;


-- =====================================================
-- RANKING POR QUIZ
-- Mostra a pontuação do último quiz finalizado de cada aluno, com ranking.
-- =====================================================

WITH ultimas_tentativas AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY data_hora_fim DESC, id DESC
        ) AS numero
    FROM tentativa
    WHERE status = 'FINALIZADA'
)
SELECT
    q.id AS quiz_id,
    q.titulo AS quiz,
    u.id AS aluno_id,
    u.nome AS aluno,
    t.pontuacao_total,
    RANK() OVER (
        PARTITION BY q.id
        ORDER BY t.pontuacao_total DESC
    ) AS posicao
FROM ultimas_tentativas t
INNER JOIN usuario u ON u.id = t.usuario_id
INNER JOIN quiz q ON q.id = t.quiz_id
WHERE t.numero = 1
  AND u.tipo = 'ALUNO'
ORDER BY q.id, posicao, u.nome;