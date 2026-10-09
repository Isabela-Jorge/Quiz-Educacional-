
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/06_teste_tentativa.sql
--
-- OBJETIVO:
-- Validar as restrições e relacionamentos da tabela tentativa.
--
-- REQUISITOS RELACIONADOS:
-- Início do quiz, registro de tentativas e pontuação.
--
-- RESTRIÇÕES IMPLEMENTADAS:
-- PRIMARY KEY
-- FOREIGN KEY
-- NOT NULL
-- DEFAULT
-- CHECK
--
-- INSTRUÇÕES:
-- 1. Executar os testes individualmente.
-- 2. Alguns comandos devem apresentar erros intencionais.
-- 3. Utilizar somente o ambiente de desenvolvimento.
-- 4. Não executar a limpeza antes de finalizar os testes.
-- 5. Conferir os IDs antes de qualquer DELETE.
--
-- IMPORTANTE:
-- Este arquivo testa o esquema atual.
-- Não valida regras ainda não implementadas, como
-- cálculo automático da pontuação ou retomada do quiz.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRAR USUÁRIO DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar um aluno fictício para os testes de tentativa.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
--
-- OBSERVAÇÃO:
-- A senha é apenas um valor fictício para teste de banco.
-- Não representa um hash válido para autenticação.
-- ============================================================

INSERT INTO usuario (
    nome, usuario, email, senha, tipo
)
VALUES (
    'Aluno Teste Tentativa',
    'teste_bd_tentativa',
    'teste_bd_tentativa@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 02 - CADASTRAR DISCIPLINA DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar uma disciplina fictícia.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO disciplina (
    nome, descricao, modulo
)
VALUES (
    'Teste BD - Disciplina Tentativa',
    'Disciplina fictícia para testes de tentativa.',
    1
);


-- ============================================================
-- TESTE 03 - CADASTRAR QUIZ DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar um quiz vinculado à disciplina de teste.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO quiz (
    disciplina_id, titulo
)
VALUES (
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Tentativa'
          AND modulo = 1
    ),
    'Teste BD - Quiz Tentativa'
);


-- ============================================================
-- TESTE 04 - CONSULTAR REGISTROS DE APOIO
-- ============================================================
-- OBJETIVO:
-- Confirmar que usuário, disciplina e quiz existem.
--
-- RESULTADO ESPERADO:
-- A primeira consulta retorna 1 usuário.
-- A segunda consulta retorna 1 quiz e sua disciplina.
-- ============================================================

SELECT id, nome, usuario, tipo
FROM usuario
WHERE usuario = 'teste_bd_tentativa';

SELECT
    q.id AS quiz_id,
    q.titulo,
    d.id AS disciplina_id,
    d.nome AS disciplina
FROM quiz q
INNER JOIN disciplina d
    ON q.disciplina_id = d.id
WHERE q.titulo = 'Teste BD - Quiz Tentativa'
  AND d.nome = 'Teste BD - Disciplina Tentativa';


-- ============================================================
-- TESTE 05 - CADASTRAR TENTATIVA VÁLIDA
-- ============================================================
-- OBJETIVO:
-- Registrar o início de uma tentativa.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
--
-- EXPLICAÇÃO:
-- Os campos data_hora_inicio, pontuacao_total e status
-- serão preenchidos pelos valores DEFAULT.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES (
    (
        SELECT id
        FROM usuario
        WHERE usuario = 'teste_bd_tentativa'
    ),
    (
        SELECT id
        FROM quiz
        WHERE titulo = 'Teste BD - Quiz Tentativa'
    )
);


-- ============================================================
-- TESTE 06 - CONSULTAR VALORES PADRÃO
-- ============================================================
-- OBJETIVO:
-- Confirmar os valores gerados automaticamente.
--
-- RESULTADO ESPERADO:
-- data_hora_inicio preenchida.
-- data_hora_fim = NULL.
-- pontuacao_total = 0.00.
-- status = EM_ANDAMENTO.
-- ============================================================

SELECT
    t.id,
    u.usuario,
    q.titulo,
    t.data_hora_inicio,
    t.data_hora_fim,
    t.pontuacao_total,
    t.status
FROM tentativa t
INNER JOIN usuario u
    ON t.usuario_id = u.id
INNER JOIN quiz q
    ON t.quiz_id = q.id
WHERE u.usuario = 'teste_bd_tentativa'
  AND q.titulo = 'Teste BD - Quiz Tentativa';


-- ============================================================
-- TESTE 07 - FINALIZAR TENTATIVA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco aceita a atualização para
-- o status FINALIZADA.
--
-- RESULTADO ESPERADO:
-- 1 registro atualizado.
--
-- IMPORTANTE:
-- Esta atualização é manual e serve apenas para testar
-- os campos da tabela. Não representa o cálculo automático
-- da pontuação previsto para o sistema.
--
-- Antes de executar, consultar o ID da tentativa no
-- Teste 06 e substituir o exemplo abaixo.
-- ============================================================

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- UPDATE tentativa
-- SET
--     status = 'FINALIZADA',
--     data_hora_fim = CURRENT_TIMESTAMP,
--     pontuacao_total = 10.00
-- WHERE id = <ID_TENTATIVA>;


-- ============================================================
-- TESTE 08 - CONSULTAR TENTATIVA FINALIZADA
-- ============================================================
-- OBJETIVO:
-- Confirmar as alterações realizadas no Teste 07.
--
-- RESULTADO ESPERADO:
-- status = FINALIZADA.
-- data_hora_fim preenchida.
-- pontuacao_total = 10.00.
-- ============================================================

SELECT
    t.id,
    t.status,
    t.data_hora_inicio,
    t.data_hora_fim,
    t.pontuacao_total
FROM tentativa t
INNER JOIN usuario u
    ON t.usuario_id = u.id
WHERE u.usuario = 'teste_bd_tentativa';


-- ============================================================
-- TESTE 09 - STATUS INVÁLIDO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita um status não permitido.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação de CHECK.
--
-- EXPLICAÇÃO:
-- O esquema atual aceita somente:
-- EM_ANDAMENTO e FINALIZADA.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id, status
)
VALUES (
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_tentativa'
    ),
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Tentativa'
    ),
    'CANCELADA'
);


-- ============================================================
-- TESTE 10 - PONTUAÇÃO NEGATIVA
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco rejeita pontuação menor que zero.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação de CHECK.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id, pontuacao_total
)
VALUES (
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_tentativa'
    ),
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Tentativa'
    ),
    -5.00
);


-- ============================================================
-- TESTE 11 - USUÁRIO INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se a FOREIGN KEY impede uma tentativa
-- vinculada a um usuário inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Confirmar antes que o ID 999999999 não existe.
-- ============================================================

SELECT id
FROM usuario
WHERE id = 999999999;

-- Executar o INSERT somente se o SELECT retornar 0 linhas.

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES (
    999999999,
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Tentativa'
    )
);


-- ============================================================
-- TESTE 12 - QUIZ INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se a FOREIGN KEY impede uma tentativa
-- vinculada a um quiz inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
-- ============================================================

SELECT id
FROM quiz
WHERE id = 999999999;

-- Executar o INSERT somente se o SELECT retornar 0 linhas.

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES (
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_tentativa'
    ),
    999999999
);


-- ============================================================
-- TESTE 13 - USUÁRIO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Validar a restrição NOT NULL do campo usuario_id.
--
-- RESULTADO ESPERADO:
-- ERRO 1048.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES (
    NULL,
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Tentativa'
    )
);


-- ============================================================
-- TESTE 14 - QUIZ OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Validar a restrição NOT NULL do campo quiz_id.
--
-- RESULTADO ESPERADO:
-- ERRO 1048.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES (
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_tentativa'
    ),
    NULL
);


-- ============================================================
-- TESTE 15 - IMPEDIR EXCLUSÃO DE USUÁRIO REFERENCIADO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco protege um usuário que possui
-- uma tentativa associada.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Consultar o ID real antes de executar o DELETE.
-- ============================================================

SELECT id, usuario
FROM usuario
WHERE usuario = 'teste_bd_tentativa';

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- DELETE FROM usuario
-- WHERE id = <ID_USUARIO>;


-- ============================================================
-- TESTE 16 - IMPEDIR EXCLUSÃO DE QUIZ REFERENCIADO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco protege um quiz que possui
-- uma tentativa associada.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Violação de FOREIGN KEY.
-- ============================================================

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Tentativa';

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- DELETE FROM quiz
-- WHERE id = <ID_QUIZ>;


-- ============================================================
-- TESTE 17 - CONSULTAR IDs PARA LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Identificar os registros criados durante os testes.
--
-- RESULTADO ESPERADO:
-- 1 tentativa, 1 usuário, 1 quiz e 1 disciplina.
-- ============================================================

SELECT
    t.id AS tentativa_id,
    u.id AS usuario_id,
    q.id AS quiz_id,
    d.id AS disciplina_id
FROM tentativa t
INNER JOIN usuario u
    ON t.usuario_id = u.id
INNER JOIN quiz q
    ON t.quiz_id = q.id
INNER JOIN disciplina d
    ON q.disciplina_id = d.id
WHERE u.usuario = 'teste_bd_tentativa'
  AND q.titulo = 'Teste BD - Quiz Tentativa';


-- ============================================================
-- TESTE 18 - LIMPEZA DOS DADOS FICTÍCIOS
-- ============================================================
-- OBJETIVO:
-- Remover os registros na ordem correta:
-- 1. Tentativa
-- 2. Quiz
-- 3. Disciplina
-- 4. Usuário
--
-- ATENÇÃO:
-- Consultar os IDs reais no Teste 17.
-- Os comandos estão comentados por segurança.
--
-- RESULTADO ESPERADO:
-- 4 registros removidos.
-- ============================================================

-- EXEMPLO: NÃO EXECUTAR SEM CONFERIR OS IDs.
--
-- DELETE FROM tentativa
-- WHERE id = <ID_TENTATIVA>;
--
-- DELETE FROM quiz
-- WHERE id = <ID_QUIZ>;
--
-- DELETE FROM disciplina
-- WHERE id = <ID_DISCIPLINA>;
--
-- DELETE FROM usuario
-- WHERE id = <ID_USUARIO>;


-- ============================================================
-- TESTE 19 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Verificar se os registros fictícios foram removidos.
--
-- RESULTADO ESPERADO:
-- Todas as consultas devem retornar 0 registros.
-- ============================================================

SELECT id, usuario
FROM usuario
WHERE usuario = 'teste_bd_tentativa';

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Tentativa'
  AND modulo = 1;

SELECT id, titulo
FROM quiz
WHERE titulo = 'Teste BD - Quiz Tentativa';

-- ============================================================
-- FIM DOS TESTES - TABELA TENTATIVA
-- ============================================================
