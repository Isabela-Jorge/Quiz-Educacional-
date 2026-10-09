
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/04_teste_questao.sql
--
-- OBJETIVO:
-- Validar as restrições de integridade da tabela questao.
--
-- REQUISITOS RELACIONADOS:
-- RF05 - Exibição das questões
-- RF08 - Controle de tempo
-- RF09 - Pontuação por dificuldade
--
-- REGRAS PRESENTES NO SCRIPT ATUAL:
-- FACIL   = 5 pontos
-- MEDIO   = 10 pontos
-- DIFICIL = 15 pontos
-- Tempo por questão = 15 segundos
--
-- ATENÇÃO:
-- Esses valores ainda dependem de validação documental.
--
-- INSTRUÇÕES:
-- 1. Executar um teste por vez no MySQL Workbench.
-- 2. Alguns testes devem retornar erros intencionais.
-- 3. Utilizar somente o banco de desenvolvimento.
-- 4. Não executar a limpeza antes de finalizar os testes.
-- 5. Consultar os IDs reais antes de executar DELETE.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRAR DISCIPLINA DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar uma disciplina fictícia para os testes.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Disciplina Questao',
    'Disciplina fictícia para testes da tabela questao.',
    1
);


-- ============================================================
-- TESTE 02 - CADASTRAR QUIZ DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar um quiz associado à disciplina cadastrada.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Questao'
          AND modulo = 1
    ),
    'Teste BD - Quiz Questoes'
);


-- ============================================================
-- TESTE 03 - CONSULTAR QUIZ DE APOIO
-- ============================================================
-- OBJETIVO:
-- Identificar o quiz que receberá as questões.
--
-- RESULTADO ESPERADO:
-- Retornar 1 registro.
-- ============================================================

SELECT q.id, q.titulo, d.nome AS disciplina
FROM quiz q
INNER JOIN disciplina d
    ON q.disciplina_id = d.id
WHERE q.titulo = 'Teste BD - Quiz Questoes'
  AND d.nome = 'Teste BD - Disciplina Questao';


-- ============================================================
-- TESTE 04 - CADASTRAR QUESTÃO FÁCIL
-- ============================================================
-- OBJETIVO:
-- Validar a inserção de uma questão FACIL com 5 pontos.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- O tempo padrão deverá ser 15 segundos.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id
        FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - Quanto e 2 + 2?',
    'FACIL',
    5
);


-- ============================================================
-- TESTE 05 - CADASTRAR QUESTÃO MÉDIA
-- ============================================================
-- OBJETIVO:
-- Validar a inserção de uma questão MEDIO com 10 pontos.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id
        FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - O que e uma chave estrangeira?',
    'MEDIO',
    10
);


-- ============================================================
-- TESTE 06 - CADASTRAR QUESTÃO DIFÍCIL
-- ============================================================
-- OBJETIVO:
-- Validar a inserção de uma questão DIFICIL com 15 pontos.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id
        FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - Explique a normalizacao de bancos de dados.',
    'DIFICIL',
    15
);


-- ============================================================
-- TESTE 07 - CONSULTAR QUESTÕES CADASTRADAS
-- ============================================================
-- OBJETIVO:
-- Verificar as dificuldades, pontuações e tempos.
--
-- RESULTADO ESPERADO:
-- 3 registros:
-- FACIL   / 5 pontos  / 15 segundos
-- MEDIO   / 10 pontos / 15 segundos
-- DIFICIL / 15 pontos / 15 segundos
-- ============================================================

SELECT
    q.id,
    q.enunciado,
    q.dificuldade,
    q.pontos,
    q.tempo_limite_segundos
FROM questao q
INNER JOIN quiz z ON q.quiz_id = z.id
WHERE z.titulo = 'Teste BD - Quiz Questoes'
ORDER BY q.pontos;


-- ============================================================
-- TESTE 08 - DIFICULDADE INVÁLIDA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita uma dificuldade não prevista.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação de CHECK.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - Dificuldade invalida',
    'EXTREMO',
    10
);


-- ============================================================
-- TESTE 09 - PONTUAÇÃO INCOMPATÍVEL
-- ============================================================
-- OBJETIVO:
-- Verificar se uma questão FACIL pode receber 15 pontos.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação de CHECK.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - Pontuacao incorreta',
    'FACIL',
    15
);


-- ============================================================
-- TESTE 10 - TEMPO INVÁLIDO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita tempo diferente de 15.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação de CHECK.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos,
    tempo_limite_segundos
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    'Teste BD - Tempo invalido',
    'FACIL',
    5,
    30
);


-- ============================================================
-- TESTE 11 - QUIZ INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se a FK impede vincular uma questão
-- a um quiz inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Confirmar antes que o ID 999999999 não existe.
-- ============================================================

SELECT id
FROM quiz
WHERE id = 999999999;

-- Executar somente se o SELECT acima retornar zero linhas.

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    999999999,
    'Teste BD - Quiz inexistente',
    'FACIL',
    5
);


-- ============================================================
-- TESTE 12 - ENUNCIADO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Verificar a restrição NOT NULL do enunciado.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'enunciado' cannot be null.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Questoes'
    ),
    NULL,
    'FACIL',
    5
);


-- ============================================================
-- TESTE 13 - IMPEDIR EXCLUSÃO DO QUIZ REFERENCIADO
-- ============================================================
-- OBJETIVO:
-- Confirmar que o banco protege um quiz com questões.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Consultar o ID real do quiz antes de executar.
-- ============================================================

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Questoes';

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- DELETE FROM quiz
-- WHERE id = <ID_QUIZ>;


-- ============================================================
-- TESTE 14 - CONSULTAR REGISTROS PARA LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Identificar os IDs reais dos registros fictícios.
--
-- RESULTADO ESPERADO:
-- 3 questões vinculadas a 1 quiz e 1 disciplina.
-- ============================================================

SELECT
    q.id AS questao_id,
    q.enunciado,
    z.id AS quiz_id,
    z.titulo,
    d.id AS disciplina_id,
    d.nome AS disciplina
FROM questao q
INNER JOIN quiz z ON q.quiz_id = z.id
INNER JOIN disciplina d ON z.disciplina_id = d.id
WHERE z.titulo = 'Teste BD - Quiz Questoes'
  AND d.nome = 'Teste BD - Disciplina Questao'
ORDER BY q.id;


-- ============================================================
-- TESTE 15 - LIMPEZA DOS REGISTROS FICTÍCIOS
-- ============================================================
-- OBJETIVO:
-- Remover os registros na ordem correta:
-- 1. Questões
-- 2. Quiz
-- 3. Disciplina
--
-- ATENÇÃO:
-- Substituir os IDs pelos valores reais do Teste 14.
-- Os comandos abaixo estão comentados por segurança.
--
-- RESULTADO ESPERADO:
-- 3 questões, 1 quiz e 1 disciplina removidos.
-- ============================================================

-- EXEMPLO: NÃO EXECUTAR SEM CONFERIR OS IDs.
--
-- DELETE FROM questao
-- WHERE id IN (<ID_QUESTAO_1>, <ID_QUESTAO_2>, <ID_QUESTAO_3>);
--
-- DELETE FROM quiz
-- WHERE id = <ID_QUIZ>;
--
-- DELETE FROM disciplina
-- WHERE id = <ID_DISCIPLINA>;


-- ============================================================
-- TESTE 16 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Confirmar que os dados fictícios foram removidos.
--
-- RESULTADO ESPERADO:
-- Todas as consultas devem retornar zero registros.
-- ============================================================

SELECT id, enunciado
FROM questao
WHERE enunciado LIKE 'Teste BD - %';

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Questoes';

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Questao'
  AND modulo = 1;


-- ============================================================
-- FIM DOS TESTES - TABELA QUESTAO
-- ============================================================
