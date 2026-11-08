-- ============================================================
-- PROJETO: Quiz Integrador
-- CONSULTAS: Resultados das tentativas
-- ============================================================

USE quiz_ds_db;

-- ============================================================
-- CONSULTA 01 - RESULTADO DE UMA TENTATIVA
-- ============================================================

-- Substituir pelo ID de uma tentativa existente
SET @tentativa_id = 6;

SELECT
    t.id AS tentativa_id,
    t.usuario_id,
    q.titulo AS quiz,
    t.status,
    t.pontuacao_total,
    t.data_hora_inicio,
    t.data_hora_fim,

    TIMESTAMPDIFF(
        SECOND,
        t.data_hora_inicio,
        t.data_hora_fim
    ) AS tempo_gasto_segundos,

    COUNT(r.id) AS questoes_respondidas,

    COALESCE(SUM(
        CASE
            WHEN a.is_correta = TRUE THEN 1
            ELSE 0
        END
    ), 0) AS total_acertos,

    COALESCE(SUM(
        CASE
            WHEN a.is_correta = FALSE THEN 1
            ELSE 0
        END
    ), 0) AS total_erros

FROM tentativa t

INNER JOIN quiz q
    ON q.id = t.quiz_id

LEFT JOIN resposta_aluno r
    ON r.tentativa_id = t.id
   AND r.quiz_id = t.quiz_id

LEFT JOIN alternativa a
    ON a.id = r.alternativa_escolhida_id
   AND a.questao_id = r.questao_id

WHERE t.id = @tentativa_id

GROUP BY
    t.id,
    t.usuario_id,
    q.titulo,
    t.status,
    t.pontuacao_total,
    t.data_hora_inicio,
    t.data_hora_fim;