
-- ============================================================
-- PROJETO: Quiz Integrador
-- BANCO DE DADOS: quiz_ds_db
-- EQUIPE: Banco de Dados
-- ARQUIVO: sql/testes/07_teste_resposta_aluno.sql
--
-- OBJETIVO:
-- Validar as restrições e os relacionamentos da tabela
-- resposta_aluno.
--
-- RESTRIÇÕES TESTADAS:
-- NOT NULL
-- UNIQUE
-- FOREIGN KEY composta
-- Integridade referencial
--
-- IMPORTANTE:
-- Este arquivo testa a estrutura atual do banco.
-- Não implementa regras adicionais de negócio.
--
-- INSTRUÇÕES:
-- 1. Executar um teste por vez no MySQL Workbench.
-- 2. Alguns comandos devem apresentar erros intencionais.
-- 3. Utilizar somente o ambiente de desenvolvimento.
-- 4. Não executar a limpeza antes dos testes.
-- 5. Conferir os IDs antes de qualquer exclusão.
-- ============================================================

USE quiz_ds_db;


-- ============================================================
-- TESTE 01 - CADASTRAR ALUNO DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar um aluno fictício para os testes.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
--
-- OBSERVAÇÃO:
-- A senha fictícia não deve ser utilizada em produção.
-- ============================================================

INSERT INTO usuario (
    nome, usuario, email, senha, tipo
)
VALUES (
    'Aluno Teste Respostas',
    'teste_bd_respostas',
    'teste_bd_respostas@example.com',
    'HASH_FICTICIO_NAO_UTILIZAR_EM_PRODUCAO',
    'ALUNO'
);


-- ============================================================
-- TESTE 02 - CADASTRAR DISCIPLINA DE APOIO
-- ============================================================
-- OBJETIVO:
-- Criar uma disciplina para os quizzes de teste.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO disciplina (nome, descricao, modulo)
VALUES (
    'Teste BD - Disciplina Respostas',
    'Disciplina fictícia para testes de respostas.',
    1
);


-- ============================================================
-- TESTE 03 - CADASTRAR DOIS QUIZZES
-- ============================================================
-- OBJETIVO:
-- Criar dois quizzes diferentes para validar as
-- chaves estrangeiras compostas.
--
-- RESULTADO ESPERADO:
-- 2 registros inseridos.
-- ============================================================

INSERT INTO quiz (disciplina_id, titulo)
VALUES
(
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Respostas'
          AND modulo = 1
    ),
    'Teste BD - Quiz Respostas A'
),
(
    (
        SELECT id
        FROM disciplina
        WHERE nome = 'Teste BD - Disciplina Respostas'
          AND modulo = 1
    ),
    'Teste BD - Quiz Respostas B'
);


-- ============================================================
-- TESTE 04 - CADASTRAR TRÊS QUESTÕES
-- ============================================================
-- OBJETIVO:
-- Criar duas questões no Quiz A e uma no Quiz B.
--
-- RESULTADO ESPERADO:
-- 3 registros inseridos.
-- ============================================================

INSERT INTO questao (
    quiz_id, enunciado, dificuldade, pontos
)
VALUES
(
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    'Teste BD - Questao A1',
    'FACIL',
    5
),
(
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    'Teste BD - Questao A2',
    'MEDIO',
    10
),
(
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas B'
    ),
    'Teste BD - Questao B1',
    'FACIL',
    5
);


-- ============================================================
-- TESTE 05 - CADASTRAR ALTERNATIVAS
-- ============================================================
-- OBJETIVO:
-- Criar alternativas válidas para as três questões.
--
-- RESULTADO ESPERADO:
-- 3 registros inseridos.
--
-- OBSERVAÇÃO:
-- Uma alternativa por questão é suficiente para testar
-- os relacionamentos. Não estamos validando aqui a
-- quantidade de alternativas exigida pelo conteúdo.
-- ============================================================

INSERT INTO alternativa (
    questao_id, texto_alternativa, is_correta
)
VALUES
(
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    'Alternativa A1',
    TRUE
),
(
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A2'
    ),
    'Alternativa A2',
    TRUE
),
(
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao B1'
    ),
    'Alternativa B1',
    TRUE
);


-- ============================================================
-- TESTE 06 - CADASTRAR DUAS TENTATIVAS DO QUIZ A
-- ============================================================
-- OBJETIVO:
-- Criar duas tentativas diferentes do mesmo aluno.
--
-- RESULTADO ESPERADO:
-- 2 registros inseridos.
--
-- OBSERVAÇÃO:
-- O esquema atual permite múltiplas tentativas.
-- Este teste não define regras de retomada ou ranking.
-- ============================================================

INSERT INTO tentativa (
    usuario_id, quiz_id
)
VALUES
(
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    )
),
(
    (
        SELECT id FROM usuario
        WHERE usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    )
);


-- ============================================================
-- TESTE 07 - CONSULTAR IDS DE APOIO
-- ============================================================
-- OBJETIVO:
-- Identificar as duas tentativas e os IDs dos registros.
--
-- RESULTADO ESPERADO:
-- Retornar 2 tentativas do Quiz A.
-- ============================================================

SELECT
    t.id AS tentativa_id,
    u.usuario,
    q.id AS quiz_id,
    q.titulo
FROM tentativa t
INNER JOIN usuario u
    ON t.usuario_id = u.id
INNER JOIN quiz q
    ON t.quiz_id = q.id
WHERE u.usuario = 'teste_bd_respostas'
ORDER BY t.id;


-- ============================================================
-- TESTE 08 - REGISTRAR RESPOSTA VÁLIDA
-- ============================================================
-- OBJETIVO:
-- Inserir uma resposta para a questão A1 na primeira
-- tentativa do aluno.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
--
-- EXPLICAÇÃO:
-- A consulta identifica a tentativa mais antiga do
-- aluno no Quiz A.
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id,
    tentativa_id,
    questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MIN(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa A1'
    )
);


-- ============================================================
-- TESTE 09 - REGISTRAR QUESTÃO SEM RESPOSTA
-- ============================================================
-- OBJETIVO:
-- Confirmar que alternativa_escolhida_id aceita NULL.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id,
    tentativa_id,
    questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MIN(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A2'
    ),
    NULL
);


-- ============================================================
-- TESTE 10 - CONSULTAR RESPOSTAS REGISTRADAS
-- ============================================================
-- OBJETIVO:
-- Confirmar as duas respostas da primeira tentativa.
--
-- RESULTADO ESPERADO:
-- 2 registros:
-- Questão A1: alternativa escolhida.
-- Questão A2: alternativa NULL.
-- ============================================================

SELECT
    r.id,
    r.tentativa_id,
    q.enunciado,
    a.texto_alternativa
FROM resposta_aluno r
INNER JOIN questao q
    ON r.questao_id = q.id
LEFT JOIN alternativa a
    ON r.alternativa_escolhida_id = a.id
WHERE q.enunciado IN (
    'Teste BD - Questao A1',
    'Teste BD - Questao A2'
)
ORDER BY r.id;


-- ============================================================
-- TESTE 11 - IMPEDIR RESPOSTA DUPLICADA
-- ============================================================
-- OBJETIVO:
-- Verificar se o aluno pode responder à mesma questão
-- duas vezes dentro da mesma tentativa.
--
-- RESULTADO ESPERADO:
-- ERRO 1062 - Duplicate entry.
--
-- EXPLICAÇÃO:
-- UNIQUE (tentativa_id, questao_id).
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MIN(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa A1'
    )
);


-- ============================================================
-- TESTE 12 - MESMA QUESTÃO EM OUTRA TENTATIVA
-- ============================================================
-- OBJETIVO:
-- Confirmar que a mesma questão pode ser respondida
-- em uma tentativa diferente.
--
-- RESULTADO ESPERADO:
-- 1 registro inserido.
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MAX(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa A1'
    )
);


-- ============================================================
-- TESTE 13 - QUESTÃO DE OUTRO QUIZ
-- ============================================================
-- OBJETIVO:
-- Tentar associar uma questão do Quiz B à tentativa
-- pertencente ao Quiz A.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY composta.
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MIN(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao B1'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa B1'
    )
);


-- ============================================================
-- TESTE 14 - ALTERNATIVA DE OUTRA QUESTÃO
-- ============================================================
-- OBJETIVO:
-- Tentar selecionar uma alternativa da questão B1
-- como resposta da questão A2.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY composta.
--
-- OBSERVAÇÃO:
-- Usamos a segunda tentativa para evitar que a restrição
-- UNIQUE de resposta duplicada interfira no teste.
-- ============================================================

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MAX(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A2'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa B1'
    )
);


-- ============================================================
-- TESTE 15 - TENTATIVA INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede resposta associada
-- a uma tentativa inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Confirmar antes que o ID 999999999 não existe.
-- ============================================================

SELECT id FROM tentativa WHERE id = 999999999;

-- Executar o INSERT somente se a consulta retornar 0 linhas.

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    999999999,
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    (
        SELECT id FROM alternativa
        WHERE texto_alternativa = 'Alternativa A1'
    )
);


-- ============================================================
-- TESTE 16 - QUESTÃO INEXISTENTE
-- ============================================================
-- OBJETIVO:
-- Verificar se o banco impede resposta vinculada
-- a uma questão inexistente.
--
-- RESULTADO ESPERADO:
-- ERRO 1452 - Violação de FOREIGN KEY.
-- ============================================================

SELECT id FROM questao WHERE id = 999999999;

-- Executar o INSERT somente se a consulta retornar 0 linhas.

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MIN(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    999999999,
    NULL
);


-- ============================================================
-- TESTE 17 - CAMPOS OBRIGATÓRIOS
-- ============================================================
-- OBJETIVO:
-- Validar que quiz_id, tentativa_id e questao_id
-- não aceitam NULL.
--
-- RESULTADO ESPERADO:
-- ERRO 1048 para cada INSERT.
--
-- EXECUTAR CADA INSERT SEPARADAMENTE.
-- ============================================================

-- 17A - quiz_id nulo

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    NULL,
    (
        SELECT MAX(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    NULL
);

-- 17B - tentativa_id nulo

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    NULL,
    (
        SELECT id FROM questao
        WHERE enunciado = 'Teste BD - Questao A1'
    ),
    NULL
);

-- 17C - questao_id nulo

INSERT INTO resposta_aluno (
    quiz_id, tentativa_id, questao_id,
    alternativa_escolhida_id
)
VALUES (
    (
        SELECT id FROM quiz
        WHERE titulo = 'Teste BD - Quiz Respostas A'
    ),
    (
        SELECT MAX(t.id)
        FROM tentativa t
        INNER JOIN usuario u ON t.usuario_id = u.id
        WHERE u.usuario = 'teste_bd_respostas'
    ),
    NULL,
    NULL
);


-- ============================================================
-- TESTE 18 - IMPEDIR EXCLUSÃO DE TENTATIVA REFERENCIADA
-- ============================================================
-- OBJETIVO:
-- Verificar se uma tentativa com respostas não pode
-- ser excluída enquanto estiver referenciada.
--
-- RESULTADO ESPERADO:
-- ERRO 1451 - Violação de FOREIGN KEY.
--
-- ATENÇÃO:
-- Consultar o ID real antes de executar.
-- ============================================================

SELECT
    t.id AS tentativa_id,
    COUNT(r.id) AS total_respostas
FROM tentativa t
INNER JOIN resposta_aluno r
    ON r.tentativa_id = t.id
INNER JOIN usuario u
    ON t.usuario_id = u.id
WHERE u.usuario = 'teste_bd_respostas'
GROUP BY t.id;

-- EXEMPLO: SUBSTITUIR PELO ID REAL.
--
-- DELETE FROM tentativa
-- WHERE id = <ID_TENTATIVA>;


-- ============================================================
-- TESTE 19 - CONSULTAR REGISTROS PARA LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Identificar os IDs reais das respostas, tentativas,
-- alternativas, questões, quizzes, disciplina e usuário.
--
-- RESULTADO ESPERADO:
-- 3 respostas válidas.
-- ============================================================

SELECT
    r.id AS resposta_id,
    r.tentativa_id,
    r.questao_id,
    r.alternativa_escolhida_id
FROM resposta_aluno r
INNER JOIN tentativa t
    ON r.tentativa_id = t.id
INNER JOIN usuario u
    ON t.usuario_id = u.id
WHERE u.usuario = 'teste_bd_respostas'
ORDER BY r.id;

SELECT id, quiz_id, enunciado
FROM questao
WHERE enunciado IN (
    'Teste BD - Questao A1',
    'Teste BD - Questao A2',
    'Teste BD - Questao B1'
);

SELECT a.id, a.questao_id, a.texto_alternativa
FROM alternativa a
INNER JOIN questao q ON a.questao_id = q.id
WHERE q.enunciado IN (
    'Teste BD - Questao A1',
    'Teste BD - Questao A2',
    'Teste BD - Questao B1'
);

SELECT id, usuario
FROM usuario
WHERE usuario = 'teste_bd_respostas';

SELECT id, titulo
FROM quiz
WHERE titulo IN (
    'Teste BD - Quiz Respostas A',
    'Teste BD - Quiz Respostas B'
);

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Respostas';


-- ============================================================
-- TESTE 20 - LIMPEZA DOS REGISTROS FICTÍCIOS
-- ============================================================
-- OBJETIVO:
-- Remover os registros na ordem correta:
-- 1. Respostas
-- 2. Tentativas
-- 3. Alternativas
-- 4. Questões
-- 5. Quizzes
-- 6. Disciplina
-- 7. Usuário
--
-- ATENÇÃO:
-- Consultar os IDs reais no Teste 19.
-- Comandos comentados por segurança.
--
-- RESULTADO ESPERADO:
-- 3 respostas, 2 tentativas, 3 alternativas,
-- 3 questões, 2 quizzes, 1 disciplina e 1 usuário.
-- Total: 15 registros removidos.
-- ============================================================

-- EXEMPLOS: SUBSTITUIR PELOS IDS REAIS.
--
-- DELETE FROM resposta_aluno
-- WHERE id IN (<ID_RESPOSTA_1>, <ID_RESPOSTA_2>, <ID_RESPOSTA_3>);
--
-- DELETE FROM tentativa
-- WHERE id IN (<ID_TENTATIVA_1>, <ID_TENTATIVA_2>);
--
-- DELETE FROM alternativa
-- WHERE id IN (<ID_ALT_1>, <ID_ALT_2>, <ID_ALT_3>);
--
-- DELETE FROM questao
-- WHERE id IN (<ID_QUESTAO_1>, <ID_QUESTAO_2>, <ID_QUESTAO_3>);
--
-- DELETE FROM quiz
-- WHERE id IN (<ID_QUIZ_A>, <ID_QUIZ_B>);
--
-- DELETE FROM disciplina
-- WHERE id = <ID_DISCIPLINA>;
--
-- DELETE FROM usuario
-- WHERE id = <ID_USUARIO>;


-- ============================================================
-- TESTE 21 - CONFIRMAR LIMPEZA
-- ============================================================
-- OBJETIVO:
-- Verificar se os dados fictícios foram removidos.
--
-- RESULTADO ESPERADO:
-- Todas as consultas devem retornar zero registros.
-- ============================================================

SELECT id, usuario
FROM usuario
WHERE usuario = 'teste_bd_respostas';

SELECT id, nome
FROM disciplina
WHERE nome = 'Teste BD - Disciplina Respostas';

SELECT id, titulo
FROM quiz
WHERE titulo IN (
    'Teste BD - Quiz Respostas A',
    'Teste BD - Quiz Respostas B'
);

SELECT id, enunciado
FROM questao
WHERE enunciado IN (
    'Teste BD - Questao A1',
    'Teste BD - Questao A2',
    'Teste BD - Questao B1'
);

-- ============================================================
-- FIM DOS TESTES - TABELA RESPOSTA_ALUNO
-- ============================================================
