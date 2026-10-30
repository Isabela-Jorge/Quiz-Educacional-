
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/05_teste_alternativa.sql
--
-- OBJETIVO:
-- Validar as restrições de integridade da tabela alternativa.
--
-- REQUISITOS RELACIONADOS:
-- RF05 - Exibição de questões e alternativas
-- RF06/RF07 - Registro e verificação de respostas
--
-- RESTRIÇÕES TESTADAS:
-- FOREIGN KEY, NOT NULL, UNIQUE e coluna gerada.
--
-- INSTRUÇÕES:
-- 1. Executar um teste por vez no MySQL Workbench.
-- 2. Alguns erros são intencionais.
-- 3. Utilizar somente o banco de desenvolvimento.
-- 4. Não executar a limpeza antes dos testes.
-- 5. Consultar os IDs antes de qualquer DELETE.
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
    'Teste BD - Disciplina Alternativa',
    'Disciplina fictícia para testes de alternativas.',
    1
);


-- ============================================================
-- TESTE 02 - CADASTRAR QUIZ DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar um quiz associado à disciplina de teste.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Alternativa'
          AND modulo = 1
    ),
    'Teste BD - Quiz Alternativas'
);


-- ============================================================
-- TESTE 03 - CADASTRAR QUESTÃO DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar uma questão válida para receber alternativas.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos
)
VALUES (
    (
        SELECT id
        FROM quiz
        WHERE titulo = 'Teste BD - Quiz Alternativas'
    ),
    'Teste BD - Quanto e 2 + 2?',
    'FACIL',
    5
);


-- ============================================================
-- TESTE 04 - IDENTIFICAR A QUESTÃO
-- ============================================================
-- OBJETIVO:
-- Consultar o ID gerado para a questão de apoio.
--
-- RESULTADO ESPERADO:
-- Retornar 1 registro.
-- ============================================================

SELECT
    q.id,
    q.enunciado,
    q.dificuldade,
    q.pontos
FROM questao q
INNER JOIN quiz z ON q.quiz_id = z.id
WHERE z.titulo = 'Teste BD - Quiz Alternativas'
  AND q.enunciado = 'Teste BD - Quanto e 2 + 2?';


-- ============================================================
-- TESTE 05 - CADASTRAR ALTERNATIVA INCORRETA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco aceita uma alternativa incorreta.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- is_correta = 0.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    (
        SELECT id
        FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    '3',
    FALSE
);


-- ============================================================
-- TESTE 06 - CADASTRAR ALTERNATIVA CORRETA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco aceita uma alternativa correta.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- is_correta = 1.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    (
        SELECT id
        FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    '4',
    TRUE
);


-- ============================================================
-- TESTE 07 - CADASTRAR OUTRAS ALTERNATIVAS INCORRETAS
-- ============================================================
-- OBJETIVO:
-- Confirmar que várias alternativas incorretas podem
-- pertencer à mesma questão.
--
-- RESULTADO ESPERADO:
-- 2 registros inseridos.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES
(
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    '5',
    FALSE
),
(
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    '6',
    FALSE
);


-- ============================================================
-- TESTE 08 - CONSULTAR ALTERNATIVAS
-- ============================================================
-- OBJETIVO:
-- Conferir as alternativas e a coluna gerada.
--
-- RESULTADO ESPERADO:
-- 4 alternativas:
-- 3, 4, 5 e 6.
-- Apenas a alternativa 4 deve ser correta.
-- questao_correta_id deve conter o ID da questão somente
-- na alternativa correta; nas demais, deve ser NULL.
-- ============================================================

SELECT
    a.id,
    a.questao_id,
    a.texto_alternativa,
    a.is_correta,
    a.questao_correta_id
FROM alternativa a
INNER JOIN questao q ON a.questao_id = q.id
WHERE q.enunciado = 'Teste BD - Quanto e 2 + 2?'
ORDER BY a.id;


-- ============================================================
-- TESTE 09 - IMPEDIR SEGUNDA ALTERNATIVA CORRETA
-- ============================================================
-- OBJETIVO:
-- Verificar se a restrição UNIQUE da coluna gerada
-- impede duas alternativas corretas na mesma questão.
--
-- RESULTADO ESPERADO:
-- ERRO 1062 - Duplicate entry.
--
-- EXPLICAÇÃO:
-- Quando is_correta = TRUE, questao_correta_id recebe
-- o ID da questão. A restrição UNIQUE impede sua repetição.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    'Outra resposta correta',
    TRUE
);


-- ============================================================
-- TESTE 10 - QUESTÃO INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede associar uma alternativa
-- a uma questão inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Confirmar antes que o ID 999999999 não existe.
-- ============================================================

SELECT id
FROM questao
WHERE id = 999999999;

-- Executar somente se a consulta retornar zero linhas.

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    999999999,
    'Alternativa de questao inexistente',
    FALSE
);


-- ============================================================
-- TESTE 11 - TEXTO DA ALTERNATIVA OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Validar a restrição NOT NULL do texto.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'texto_alternativa' cannot be null.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    NULL,
    FALSE
);


-- ============================================================
-- TESTE 12 - INDICADOR DE CORREÇÃO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Validar a restrição NOT NULL do campo is_correta.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'is_correta' cannot be null.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES (
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Quanto e 2 + 2?'
    ),
    'Alternativa sem indicador',
    NULL
);


-- ============================================================
-- TESTE 13 - IMPEDIR EXCLUSÃO DE QUESTÃO REFERENCIADA
-- ============================================================
-- OBJETIVO:
-- Verificar se uma questão com alternativas associadas
-- está protegida pela chave estrangeira.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Cannot delete or update a parent row.
--
-- ATENÇÃO:
-- Consultar o ID real antes de executar.
-- ============================================================

SELECT id, enunciado
FROM questao
WHERE enunciado = 'Teste BD - Quanto e 2 + 2?';

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- DELETE FROM questao
-- WHERE id = <ID_QUESTAO>;


-- ============================================================
-- TESTE 14 - CONSULTAR REGISTROS PARA LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Identificar os IDs reais das alternativas, questão,
-- quiz e disciplina.
--
-- RESULTADO ESPERADO:
-- 4 alternativas associadas a uma questão.
-- ============================================================

SELECT
    a.id AS alternativa_id,
    a.texto_alternativa,
    q.id AS questao_id,
    z.id AS quiz_id,
    d.id AS disciplina_id
FROM alternativa a
INNER JOIN questao q ON a.questao_id = q.id
INNER JOIN quiz z ON q.quiz_id = z.id
INNER JOIN disciplina d ON z.disciplina_id = d.id
WHERE z.titulo = 'Teste BD - Quiz Alternativas'
  AND d.nome = 'Teste BD - Disciplina Alternativa'
ORDER BY a.id;


-- ============================================================
-- TESTE 15 - LIMPEZA DOS REGISTROS FICTÍCIOS
-- ============================================================
-- OBJETIVO:
-- Remover os registros na ordem correta:
-- 1. Alternativas
-- 2. Questão
-- 3. Quiz
-- 4. Disciplina
--
-- ATENÇÃO:
-- Consultar os IDs reais no Teste 14.
-- Os comandos estão comentados por segurança.
--
-- RESULTADO ESPERADO:
-- 4 alternativas, 1 questão, 1 quiz e 1 disciplina
-- removidos, totalizando 7 registros.
-- ============================================================

-- EXEMPLO: NÃO EXECUTAR SEM CONFERIR OS IDs.
--
-- DELETE FROM alternativa
-- WHERE id IN (<ID_ALT_1>, <ID_ALT_2>, <ID_ALT_3>, <ID_ALT_4>);
--
-- DELETE FROM questao
-- WHERE id = <ID_QUESTAO>;
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
WHERE enunciado = 'Teste BD - Quanto e 2 + 2?';

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Alternativas';

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Alternativa'
  AND modulo = 1;

-- ============================================================
-- FIM DOS TESTES - TABELA ALTERNATIVA
-- ============================================================
