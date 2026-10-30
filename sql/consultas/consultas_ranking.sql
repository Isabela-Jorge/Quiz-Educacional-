
USE quiz_ds_db;

-- ============================================================
-- RANKING GERAL
-- Soma a maior pontuação de cada aluno em cada quiz.
-- Em caso de empate, considera o menor tempo gasto.
-- ============================================================

WITH tentativas_finalizadas AS (
    SELECT
        id,
        usuario_id,
        quiz_id,
        pontuacao_total,
        TIMESTAMPDIFF(
            SECOND,
            data_hora_inicio,
            data_hora_fim
        ) AS tempo_gasto_segundos
    FROM tentativa
    WHERE status = 'FINALIZADA'
      AND data_hora_inicio IS NOT NULL
      AND data_hora_fim IS NOT NULL
),
classificacao_por_quiz AS (
    SELECT
        id,
        usuario_id,
        quiz_id,
        pontuacao_total,
        tempo_gasto_segundos,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY
                pontuacao_total DESC,
                tempo_gasto_segundos ASC,
                id ASC
        ) AS numero
    FROM tentativas_finalizadas
),
melhores_pontuacoes AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        tempo_gasto_segundos
    FROM classificacao_por_quiz
    WHERE numero = 1
),
pontuacao_geral AS (
    SELECT
        usuario_id,
        SUM(pontuacao_total) AS pontuacao_geral,
        SUM(tempo_gasto_segundos) AS tempo_total_segundos
    FROM melhores_pontuacoes
    GROUP BY usuario_id
),
ranking AS (
    SELECT
        u.id AS aluno_id,
        u.nome AS aluno,
        p.pontuacao_geral,
        p.tempo_total_segundos,
        RANK() OVER (
            ORDER BY
                p.pontuacao_geral DESC,
                p.tempo_total_segundos ASC
        ) AS posicao
    FROM pontuacao_geral p
    INNER JOIN usuario u
        ON u.id = p.usuario_id
    WHERE u.tipo = 'ALUNO'
)
SELECT
    posicao,
    aluno_id,
    aluno,
    pontuacao_geral,
    tempo_total_segundos
FROM ranking
ORDER BY posicao, aluno;


-- ============================================================
-- RANKING POR QUIZ
-- Mostra a maior pontuação de cada aluno em cada quiz.
-- Em caso de empate, considera o menor tempo gasto.
-- ============================================================

WITH tentativas_finalizadas AS (
    SELECT
        id,
        usuario_id,
        quiz_id,
        pontuacao_total,
        TIMESTAMPDIFF(
            SECOND,
            data_hora_inicio,
            data_hora_fim
        ) AS tempo_gasto_segundos
    FROM tentativa
    WHERE status = 'FINALIZADA'
      AND data_hora_inicio IS NOT NULL
      AND data_hora_fim IS NOT NULL
),
classificacao_por_quiz AS (
    SELECT
        id,
        usuario_id,
        quiz_id,
        pontuacao_total,
        tempo_gasto_segundos,
        ROW_NUMBER() OVER (
            PARTITION BY usuario_id, quiz_id
            ORDER BY
                pontuacao_total DESC,
                tempo_gasto_segundos ASC,
                id ASC
        ) AS numero
    FROM tentativas_finalizadas
),
melhores_tentativas AS (
    SELECT
        usuario_id,
        quiz_id,
        pontuacao_total,
        tempo_gasto_segundos
    FROM classificacao_por_quiz
    WHERE numero = 1
),
ranking AS (
    SELECT
        q.id AS quiz_id,
        q.titulo AS quiz,
        u.id AS aluno_id,
        u.nome AS aluno,
        t.pontuacao_total,
        t.tempo_gasto_segundos,
        RANK() OVER (
            PARTITION BY q.id
            ORDER BY
                t.pontuacao_total DESC,
                t.tempo_gasto_segundos ASC
        ) AS posicao
    FROM melhores_tentativas t
    INNER JOIN usuario u
        ON u.id = t.usuario_id
    INNER JOIN quiz q
        ON q.id = t.quiz_id
    WHERE u.tipo = 'ALUNO'
)
SELECT
    quiz_id,
    quiz,
    posicao,
    aluno_id,
    aluno,
    pontuacao_total,
    tempo_gasto_segundos
FROM ranking
ORDER BY quiz_id, posicao, aluno;
