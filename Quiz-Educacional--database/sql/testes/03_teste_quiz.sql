
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/03_teste_quiz.sql
--
-- OBJETIVO:
-- Validar as restrições e os relacionamentos da tabela quiz.
--
-- REQUISITOS RELACIONADOS:
-- RF03 - Seleção de matéria
-- RF04 - Iniciar quiz
-- RF05 - Exibição das questões
--
-- RESTRIÇÕES TESTADAS:
-- PRIMARY KEY, FOREIGN KEY e NOT NULL.
--
-- INSTRUÇÕES:
-- 1. Executar um teste por vez no MySQL Workbench.
-- 2. Alguns testes devem apresentar erros intencionais.
-- 3. Utilizar somente o ambiente de desenvolvimento.
-- 4. Não executar a limpeza antes de finalizar os testes.
-- 5. Utilizar apenas registros fictícios.
-- 6. Conferir os IDs antes de qualquer exclusão.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRAR DISCIPLINA DE TESTE
-- ============================================================
-- OBJETIVO:
-- Criar uma disciplina válida para os testes de relacionamento.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Disciplina Quiz',
    'Disciplina fictícia para testar a tabela quiz.',
    1
);


-- ============================================================
-- TESTE 02 - IDENTIFICAR A DISCIPLINA
-- ============================================================
-- OBJETIVO:
-- Consultar o ID gerado pelo MySQL.
--
-- RESULTADO ESPERADO:
-- Retornar 1 disciplina.
-- ============================================================

SELECT id, nome, modulo
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Quiz'
  AND modulo = 1;


-- ============================================================
-- TESTE 03 - CADASTRAR QUIZ VÁLIDO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco aceita um quiz associado a uma
-- disciplina existente.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
--
-- EXPLICAÇÃO:
-- A subconsulta identifica a disciplina pelo nome e módulo.
-- Assim, não precisamos fixar seu ID no código.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Quiz'
          AND modulo = 1
    ),
    'Teste BD - Quiz Valido'
);


-- ============================================================
-- TESTE 04 - CONSULTAR QUIZ E DISCIPLINA
-- ============================================================
-- OBJETIVO:
-- Confirmar o relacionamento entre quiz e disciplina.
--
-- RESULTADO ESPERADO:
-- Retornar 1 quiz associado à disciplina de teste.
-- ============================================================

SELECT
    q.id AS quiz_id,
    q.titulo,
    d.id AS disciplina_id,
    d.nome AS disciplina,
    d.modulo
FROM quiz q
INNER JOIN disciplina d
    ON q.disciplina_id = d.id
WHERE q.titulo = 'Teste BD - Quiz Valido'
  AND d.nome = 'Teste BD - Disciplina Quiz';


-- ============================================================
-- TESTE 05 - CHAVE ESTRANGEIRA INVÁLIDA
-- ============================================================
-- OBJETIVO:
-- Verificar se o MySQL impede cadastrar um quiz associado
-- a uma disciplina inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Cannot add or update a child row.
--
-- EXPLICAÇÃO:
-- A chave estrangeira impede referências inexistentes.
--
-- ATENÇÃO:
-- Antes de executar, confira se o ID 999999999 não existe.
-- ============================================================

SELECT id
FROM disciplina
WHERE id = 999999999;

-- Execute o INSERT abaixo somente se a consulta acima
-- retornar zero registros.

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    999999999,
    'Teste BD - Quiz Disciplina Inexistente'
);


-- ============================================================
-- TESTE 06 - DISCIPLINA OBRIGATÓRIA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede cadastrar quiz sem disciplina.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'disciplina_id' cannot be null.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    NULL,
    'Teste BD - Quiz Sem Disciplina'
);


-- ============================================================
-- TESTE 07 - TÍTULO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede cadastrar quiz sem título.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'titulo' cannot be null.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES (
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Quiz'
          AND modulo = 1
    ),
    NULL
);


-- ============================================================
-- TESTE 08 - IMPEDIR EXCLUSÃO DE DISCIPLINA REFERENCIADA
-- ============================================================
-- OBJETIVO:
-- Verificar se o MySQL protege uma disciplina que possui
-- um quiz associado.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Cannot delete or update a parent row.
--
-- EXPLICAÇÃO:
-- A disciplina não pode ser excluída enquanto o quiz
-- estiver referenciando seu ID.
--
-- ATENÇÃO:
-- Consultar o ID real antes de executar o DELETE.
-- Substituir <ID_DISCIPLINA> pelo valor encontrado.
-- ============================================================

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Quiz'
  AND modulo = 1;

-- EXEMPLO: NÃO EXECUTAR SEM SUBSTITUIR O ID.
--
-- DELETE FROM disciplina
-- WHERE id = <ID_DISCIPLINA>;


-- ============================================================
-- TESTE 09 - CONSULTAR REGISTROS ANTES DA LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Identificar os IDs do quiz e da disciplina fictícios.
--
-- RESULTADO ESPERADO:
-- Retornar o quiz válido e sua disciplina.
-- ============================================================

SELECT
    q.id AS quiz_id,
    q.titulo,
    d.id AS disciplina_id,
    d.nome AS disciplina
FROM quiz q
INNER JOIN disciplina d
    ON q.disciplina_id = d.id
WHERE q.titulo = 'Teste BD - Quiz Valido'
  AND d.nome = 'Teste BD - Disciplina Quiz';


-- ============================================================
-- TESTE 10 - LIMPEZA DOS DADOS DE TESTE
-- ============================================================
-- OBJETIVO:
-- Excluir primeiro o quiz e depois sua disciplina.
--
-- EXPLICAÇÃO:
-- A ordem é importante por causa da chave estrangeira.
--
-- ATENÇÃO:
-- Os comandos abaixo são modelos.
-- Substituir os IDs pelos valores reais do Teste 09.
-- Não executar em dados de produção.
--
-- RESULTADO ESPERADO:
-- 1 quiz removido e 1 disciplina removida.
-- ============================================================

-- EXEMPLO: SUBSTITUIR PELOS IDs REAIS.
--
-- DELETE FROM quiz
-- WHERE id = <ID_QUIZ>;
--
-- DELETE FROM disciplina
-- WHERE id = <ID_DISCIPLINA>;


-- ============================================================
-- TESTE 11 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Verificar se os dados fictícios foram removidos.
--
-- RESULTADO ESPERADO:
-- Retornar zero registros nas duas consultas.
-- ============================================================

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Valido';

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Quiz'
  AND modulo = 1;


-- ============================================================
-- FIM DOS TESTES - TABELA QUIZ
-- ============================================================
