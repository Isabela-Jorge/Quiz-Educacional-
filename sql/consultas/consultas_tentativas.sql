
-- ============================================================
-- PROJETO: Quiz Integrador
-- CONSULTAS: Tentativas e histórico dos alunos
-- ============================================================

USE quiz_ds_db;

-- ============================================================
-- CONSULTA 01 - QUANTIDADE DE TENTATIVAS POR ALUNO E QUIZ
-- ============================================================

SELECT
    usuario_id,
    quiz_id,
    COUNT(*) AS total_tentativas
FROM tentativa
GROUP BY
    usuario_id,
    quiz_id;


-- ============================================================
-- CONSULTA 02 - LISTAR TENTATIVAS EM ANDAMENTO
-- ============================================================

SELECT
    id AS tentativa_id,
    usuario_id,
    quiz_id,
    data_hora_inicio,
    status
FROM tentativa
WHERE status = 'EM_ANDAMENTO'
ORDER BY data_hora_inicio DESC;


-- ============================================================
-- CONSULTA 03 - RECUPERAR RESPOSTAS DE UMA TENTATIVA
-- ============================================================

-- Substituir pelo ID da tentativa desejada
SET @tentativa_id = 6;

SELECT
    ra.tentativa_id,
    ra.questao_id,
    q.enunciado,
    ra.alternativa_escolhida_id
FROM resposta_aluno ra
INNER JOIN questao q
    ON q.id = ra.questao_id
   AND q.quiz_id = ra.quiz_id
WHERE ra.tentativa_id = @tentativa_id
ORDER BY ra.questao_id;


-- ============================================================
-- CONSULTA 04 - HISTÓRICO DE TENTATIVAS DE UM ALUNO
-- ============================================================

-- Substituir pelo ID do aluno desejado
SET @usuario_id = 7;

SELECT
    t.id AS tentativa_id,
    q.titulo AS quiz,
    d.nome AS disciplina,
    d.modulo,
    t.pontuacao_total,
    t.status,
    t.data_hora_inicio,
    t.data_hora_fim,
    TIMESTAMPDIFF(
        SECOND,
        t.data_hora_inicio,
        t.data_hora_fim
    ) AS tempo_gasto_segundos
FROM tentativa t
INNER JOIN quiz q
    ON q.id = t.quiz_id
INNER JOIN disciplina d
    ON d.id = q.disciplina_id
WHERE t.usuario_id = @usuario_id
ORDER BY
    t.data_hora_inicio DESC,
    t.id DESC;
