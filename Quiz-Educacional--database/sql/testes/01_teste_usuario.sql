
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/01_teste_usuario.sql
--
-- OBJETIVO:
-- Validar as restrições de integridade da tabela usuario.
--
-- REQUISITOS RELACIONADOS:
-- RF01  - Cadastro de aluno
-- RF02  - Login de aluno e professor
-- RNF04 - Segurança das informações
-- RNF06 - Confiabilidade dos dados
--
-- IMPORTANTE:
-- 1. Execute um teste por vez no MySQL Workbench.
-- 2. Alguns testes DEVEM apresentar erro.
-- 3. Os dados utilizados são fictícios.
-- 4. Execute somente em ambiente de desenvolvimento.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRO DE USUÁRIO VÁLIDO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco permite cadastrar um aluno com todos
-- os campos obrigatórios preenchidos corretamente.
--
-- RESULTADO ESPERADO:
-- O INSERT deve ser executado com sucesso.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    'Aluno Teste BD',
    'teste_bd_aluno',
    'teste_bd_aluno@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 02 - CONSULTAR USUÁRIO CADASTRADO
-- ============================================================
-- OBJETIVO:
-- Confirmar que o registro do Teste 01 foi armazenado.
--
-- RESULTADO ESPERADO:
-- Retornar um usuário com tipo ALUNO.
-- Não consultamos o campo senha para evitar sua exposição.
-- ============================================================

SELECT id, nome, usuario, email, tipo
FROM usuario
WHERE usuario = 'teste_bd_aluno';


-- ============================================================
-- TESTE 03 - VALIDAR RESTRIÇÃO CHECK
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede tipos de usuário não permitidos.
--
-- RESULTADO ESPERADO:
-- ERRO 3819 - Violação da restrição CHECK.
--
-- EXPLICAÇÃO:
-- A tabela aceita apenas ALUNO e PROFESSOR.
-- O tipo ADMIN deve ser rejeitado.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    'Usuario Invalido',
    'teste_bd_admin',
    'teste_bd_admin@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ADMIN'
);


-- ============================================================
-- TESTE 04 - USUÁRIO DUPLICADO
-- ============================================================
-- OBJETIVO:
-- Verificar se dois usuários podem possuir o mesmo login.
--
-- RESULTADO ESPERADO:
-- ERRO 1062 - Duplicate entry.
--
-- EXPLICAÇÃO:
-- O campo usuario possui restrição UNIQUE.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    'Segundo Aluno',
    'teste_bd_aluno',
    'segundo_aluno@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 05 - E-MAIL DUPLICADO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede dois registros com mesmo e-mail.
--
-- RESULTADO ESPERADO:
-- ERRO 1062 - Duplicate entry.
--
-- EXPLICAÇÃO:
-- O campo email possui restrição UNIQUE.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    'Terceiro Aluno',
    'terceiro_aluno',
    'teste_bd_aluno@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 06 - CAMPO OBRIGATÓRIO
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede cadastro sem nome.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 - Column 'nome' cannot be null.
--
-- EXPLICAÇÃO:
-- O campo nome possui a restrição NOT NULL.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    NULL,
    'teste_bd_sem_nome',
    'teste_bd_sem_nome@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 07 - CADASTRO DE PROFESSOR
-- ============================================================
-- OBJETIVO:
-- Verificar se o tipo PROFESSOR é aceito pelo banco.
--
-- RESULTADO ESPERADO:
-- O INSERT deve ser executado com sucesso.
-- ============================================================

INSERT INTO usuario (nome, usuario, email, senha, tipo)
VALUES (
    'Professor Teste BD',
    'teste_bd_professor',
    'teste_bd_professor@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'PROFESSOR'
);


-- ============================================================
-- TESTE 08 - CONSULTA DOS REGISTROS DE TESTE
-- ============================================================
-- OBJETIVO:
-- Verificar quais registros válidos foram inseridos.
--
-- RESULTADO ESPERADO:
-- Retornar o aluno e o professor cadastrados.
-- Os INSERTs inválidos não devem aparecer.
-- ============================================================

SELECT id, nome, usuario, email, tipo
FROM usuario
WHERE usuario IN (
    'teste_bd_aluno',
    'teste_bd_professor'
)
ORDER BY id;


-- ============================================================
-- TESTE 09 - LIMPEZA DOS DADOS DE TESTE
-- ============================================================
-- OBJETIVO:
-- Remover somente os usuários fictícios criados neste arquivo.
--
-- ATENÇÃO:
-- Execute apenas depois de conferir os testes anteriores.
--
-- RESULTADO ESPERADO:
-- Remover os dois usuários de teste.
-- ============================================================

DELETE FROM usuario
WHERE usuario IN (
    'teste_bd_aluno',
    'teste_bd_professor'
)
AND email IN (
    'teste_bd_aluno@example.com',
    'teste_bd_professor@example.com'
);


-- ============================================================
-- TESTE 10 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Confirmar que não restaram usuários criados pelos testes.
--
-- RESULTADO ESPERADO:
-- Retornar zero registros.
-- ============================================================

SELECT id, nome, usuario, email, tipo
FROM usuario
WHERE usuario IN (
    'teste_bd_aluno',
    'teste_bd_professor'
);

-- ============================================================
-- FIM DOS TESTES - TABELA USUARIO
-- ============================================================
