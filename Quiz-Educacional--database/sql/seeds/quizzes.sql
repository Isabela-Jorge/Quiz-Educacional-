USE quiz_ds_db;

-- =====================================================
-- CARGA INICIAL DE QUIZZES
-- =====================================================
-- Cria um quiz para cada disciplina cadastrada.
--
-- Pré-requisito:
-- Executar sql/seeds/disciplinas.sql primeiro.
--
-- O NOT EXISTS evita criar novos quizzes para
-- disciplinas que já possuem um quiz.
-- =====================================================

INSERT INTO quiz (disciplina_id, titulo)
SELECT
    d.id,
    CONCAT('Quiz - ', d.nome)
FROM disciplina d
WHERE NOT EXISTS (
    SELECT 1
    FROM quiz q
    WHERE q.disciplina_id = d.id
);