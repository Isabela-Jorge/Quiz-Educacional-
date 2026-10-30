
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/02_teste_disciplina.sql
--
-- OBJETIVO:
-- Validar a integridade dos dados da tabela disciplina.
--
-- REQUISITO RELACIONADO:
-- RF03 - Seleção de matéria.
--
-- DEFINIÇÃO APROVADA PELO GRUPO:
-- As disciplinas estão organizadas em três módulos.
--
-- RESTRIÇÕES TESTADAS:
-- NOT NULL, CHECK e UNIQUE.
--
-- INSTRUÇÕES:
-- 1. Executar um teste por vez no MySQL Workbench.
-- 2. Alguns testes devem retornar erro.
-- 3. Utilizar somente o ambiente de desenvolvimento.
-- 4. Não executar a limpeza antes de finalizar os testes.
-- 5. Os registros utilizados são exclusivamente fictícios.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRAR DISCIPLINA NO MÓDULO 1
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco aceita uma disciplina válida.
--
-- RESULTADO ESPERADO:
-- INSERT executado com sucesso.
-- 1 registro inserido.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Algoritmos',
    'Disciplina fictícia para testes de integridade.',
    1
);


-- ============================================================
-- TESTE 02 - CONSULTAR DISCIPLINA CADASTRADA
-- ============================================================
-- OBJETIVO:
-- Confirmar que o registro anterior foi armazenado.
--
-- RESULTADO ESPERADO:
-- Retornar 1 registro com modulo = 1.
-- ============================================================

SELECT id, nome, descricao, modulo
FROM disciplina
WHERE nome = 'Teste BD - Algoritmos'
AND modulo = 1;


-- ============================================================
-- TESTE 03 - CADASTRAR DISCIPLINA NO MÓDULO 2
-- ============================================================
-- OBJETIVO:
-- Verificar se o módulo 2 é aceito pelo banco.
--
-- RESULTADO ESPERADO:
-- INSERT executado com sucesso.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Banco de Dados',
    'Disciplina fictícia do módulo 2.',
    2
);


-- ============================================================
-- TESTE 04 - CADASTRAR DISCIPLINA NO MÓDULO 3
-- ============================================================
-- OBJETIVO:
-- Verificar se o módulo 3 é aceito pelo banco.
--
-- RESULTADO ESPERADO:
-- INSERT executado com sucesso.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Desenvolvimento Web',
    'Disciplina fictícia do módulo 3.',
    3
);


-- ============================================================
-- TESTE 05 - MÓDULO INVÁLIDO: ZERO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita módulos inferiores a 1.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação da restrição CHECK.
--
-- EXPLICAÇÃO:
-- O campo modulo aceita somente valores entre 1 e 3.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Modulo Zero',
    'Tentativa de cadastrar módulo inválido.',
    0
);


-- ============================================================
-- TESTE 06 - MÓDULO INVÁLIDO: QUATRO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita módulos superiores a 3.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação da restrição CHECK.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Modulo Quatro',
    'Tentativa de cadastrar módulo inválido.',
    4
);


-- ============================================================
-- TESTE 07 - DISCIPLINA DUPLICADA NO MESMO MÓDULO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede a duplicação de uma
-- disciplina com o mesmo nome e módulo.
--
-- RESULTADO ESPERADO:
-- ERRO 1062 - Duplicate entry.
--
-- EXPLICAÇÃO:
-- Existe uma restrição UNIQUE (nome, modulo).
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Algoritmos',
    'Tentativa de duplicação da disciplina.',
    1
);


-- ============================================================
-- TESTE 08 - MESMO NOME EM MÓDULOS DIFERENTES
-- ============================================================
-- OBJETIVO:
-- Confirmar que o banco permite disciplinas com o mesmo
-- nome, desde que pertençam a módulos diferentes.
--
-- RESULTADO ESPERADO:
-- INSERT executado com sucesso.
--
-- EXPLICAÇÃO:
-- A restrição UNIQUE considera a combinação nome + modulo.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Algoritmos',
    'Mesmo nome de disciplina em outro módulo.',
    2
);


-- ============================================================
-- TESTE 09 - NOME OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede disciplinas sem nome.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'nome' cannot be null.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    NULL,
    'Disciplina sem nome.',
    1
);


-- ============================================================
-- TESTE 10 - MÓDULO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede disciplinas sem módulo.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'modulo' cannot be null.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Sem Modulo',
    'Disciplina sem módulo definido.',
    NULL
);


-- ============================================================
-- TESTE 11 - CONSULTAR REGISTROS VÁLIDOS
-- ============================================================
-- OBJETIVO:
-- Conferir todas as disciplinas fictícias cadastradas.
--
-- RESULTADO ESPERADO:
-- Retornar 4 registros:
-- 1. Algoritmos - módulo 1
-- 2. Banco de Dados - módulo 2
-- 3. Desenvolvimento Web - módulo 3
-- 4. Algoritmos - módulo 2
--
-- Os registros inválidos não devem aparecer.
-- ============================================================

SELECT id, nome, descricao, modulo
FROM disciplina
WHERE nome IN (
    'Teste BD - Algoritmos',
    'Teste BD - Banco de Dados',
    'Teste BD - Desenvolvimento Web'
)
ORDER BY modulo, nome;


-- ============================================================
-- TESTE 12 - LIMPEZA DOS REGISTROS FICTÍCIOS
-- ============================================================
-- OBJETIVO:
-- Remover somente as disciplinas utilizadas nos testes.
--
-- ATENÇÃO:
-- Executar apenas após conferir o Teste 11.
-- Não execute se algum quiz estiver associado a elas.
--
-- RESULTADO ESPERADO:
-- 4 registros removidos, considerando que os testes
-- anteriores tenham sido executados uma única vez.
--
-- O filtro utiliza a chave primária para ser compatível
-- com o Safe Update Mode do MySQL Workbench.
-- ============================================================

DELETE FROM disciplina
WHERE id IN (
    SELECT id
    FROM (
        SELECT id
        FROM disciplina
        WHERE (
            nome = 'Teste BD - Algoritmos'
            AND modulo IN (1, 2)
        )
        OR (
            nome = 'Teste BD - Banco de Dados'
            AND modulo = 2
        )
        OR (
            nome = 'Teste BD - Desenvolvimento Web'
            AND modulo = 3
        )
    ) AS registros_teste
);


-- ============================================================
-- TESTE 13 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Verificar se os registros fictícios foram removidos.
--
-- RESULTADO ESPERADO:
-- Retornar 0 registros.
-- ============================================================

SELECT id, nome, modulo
FROM disciplina
WHERE nome IN (
    'Teste BD - Algoritmos',
    'Teste BD - Banco de Dados',
    'Teste BD - Desenvolvimento Web'
);


-- ============================================================
-- FIM DOS TESTES - TABELA DISCIPLINA
-- ============================================================
