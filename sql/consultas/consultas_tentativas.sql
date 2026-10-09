-- Consulta: quantidade de tentativas por aluno e quiz

SELECT
    usuario_id,
    quiz_id,
    COUNT(*) AS total_tentativas
FROM tentativa
GROUP BY usuario_id, quiz_id;