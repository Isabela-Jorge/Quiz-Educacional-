-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Bancos de Dados II - Módulo 2
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Bancos de Dados II
SET @quiz_bd2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Bancos de Dados II'
      AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- BANCOS DE DADOS II | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd2_id, 'Qual é a diferença entre WHERE e HAVING em uma consulta com agrupamento?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar uma subconsulta dentro de outra consulta SQL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'O que acontece quando uma transação executa ROLLBACK antes do COMMIT?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a principal diferença entre INNER JOIN e LEFT JOIN?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Por que índices podem melhorar o desempenho de consultas SQL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de uma stored procedure no MySQL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a função de uma trigger BEFORE INSERT?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a diferença entre DELETE e TRUNCATE TABLE no MySQL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar GROUP BY com funções de agregação?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'O que significa garantir atomicidade em uma transação?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar uma VIEW no banco de dados?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a função da cláusula ON em uma operação JOIN?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Por que utilizar parâmetros em uma stored procedure?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar SAVEPOINT em uma transação?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'O que caracteriza uma consulta correlacionada?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a diferença entre UNION e UNION ALL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade da cláusula DISTINCT em uma consulta?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Como a cláusula LIMIT pode ser utilizada em consultas MySQL?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar EXPLAIN antes de otimizar uma consulta?', 'MEDIO', 10, 15),
(@quiz_bd2_id, 'Por que é importante controlar privilégios de usuários em um banco de dados?', 'MEDIO', 10, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_bd2_id
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- BANCOS DE DADOS II | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 390 | Correta: B
(390, 'WHERE filtra grupos e HAVING filtra linhas individuais.', FALSE),
(390, 'WHERE filtra linhas antes do agrupamento; HAVING filtra grupos após o agrupamento.', TRUE),
(390, 'WHERE e HAVING possuem exatamente a mesma função.', FALSE),
(390, 'HAVING só pode ser utilizado sem GROUP BY.', FALSE),

-- Questão 22 | ID 391 | Correta: A
(391, 'Utilizar o resultado de uma consulta como parte de outra consulta.', TRUE),
(391, 'Criar automaticamente uma tabela física.', FALSE),
(391, 'Excluir registros duplicados permanentemente.', FALSE),
(391, 'Substituir todas as operações JOIN.', FALSE),

-- Questão 23 | ID 392 | Correta: C
(392, 'Todas as alterações são confirmadas.', FALSE),
(392, 'A transação é pausada temporariamente.', FALSE),
(392, 'As alterações não confirmadas da transação são desfeitas.', TRUE),
(392, 'O banco de dados é excluído.', FALSE),

-- Questão 24 | ID 393 | Correta: D
(393, 'INNER JOIN retorna todas as linhas da esquerda.', FALSE),
(393, 'LEFT JOIN retorna somente registros correspondentes.', FALSE),
(393, 'Ambos sempre retornam a mesma quantidade de registros.', FALSE),
(393, 'INNER JOIN retorna correspondências; LEFT JOIN preserva todas as linhas da tabela esquerda.', TRUE),

-- Questão 25 | ID 394 | Correta: A
(394, 'Podem reduzir a quantidade de registros examinados em determinadas buscas.', TRUE),
(394, 'Eliminam a necessidade de memória RAM.', FALSE),
(394, 'Impedem a utilização de chaves estrangeiras.', FALSE),
(394, 'Garantem que toda consulta será instantânea.', FALSE),

-- Questão 26 | ID 395 | Correta: B
(395, 'Armazenar exclusivamente imagens no banco.', FALSE),
(395, 'Encapsular instruções SQL reutilizáveis que podem ser executadas mediante chamada.', TRUE),
(395, 'Substituir obrigatoriamente todas as tabelas.', FALSE),
(395, 'Executar somente comandos SELECT.', FALSE),

-- Questão 27 | ID 396 | Correta: C
(396, 'Executar após a exclusão de um registro.', FALSE),
(396, 'Confirmar automaticamente todas as transações.', FALSE),
(396, 'Executar ações antes da inserção de cada registro afetado.', TRUE),
(396, 'Criar índices automaticamente após uma consulta.', FALSE),

-- Questão 28 | ID 397 | Correta: D
(397, 'DELETE sempre remove a estrutura da tabela.', FALSE),
(397, 'TRUNCATE permite utilizar WHERE para escolher linhas.', FALSE),
(397, 'DELETE e TRUNCATE possuem comportamento idêntico.', FALSE),
(397, 'DELETE pode remover linhas com WHERE; TRUNCATE esvazia a tabela sem WHERE e é tratado como DDL no MySQL.', TRUE),

-- Questão 29 | ID 398 | Correta: A
(398, 'Agrupar registros por valores comuns para calcular resultados agregados.', TRUE),
(398, 'Excluir automaticamente todos os registros repetidos.', FALSE),
(398, 'Criar uma chave primária composta.', FALSE),
(398, 'Alterar os tipos de dados das colunas.', FALSE),

-- Questão 30 | ID 399 | Correta: B
(399, 'Permitir que apenas parte das operações seja confirmada.', FALSE),
(399, 'Garantir que as operações da transação sejam efetivadas em conjunto ou desfeitas.', TRUE),
(399, 'Executar todas as consultas simultaneamente.', FALSE),
(399, 'Impedir qualquer leitura durante uma transação.', FALSE),

-- Questão 31 | ID 400 | Correta: C
(400, 'Armazenar obrigatoriamente cópias físicas dos registros.', FALSE),
(400, 'Eliminar a necessidade de tabelas no banco.', FALSE),
(400, 'Disponibilizar uma consulta armazenada como tabela virtual.', TRUE),
(400, 'Executar somente comandos de exclusão.', FALSE),

-- Questão 32 | ID 401 | Correta: D
(401, 'Definir a ordenação final dos registros.', FALSE),
(401, 'Limitar a quantidade de linhas retornadas.', FALSE),
(401, 'Criar automaticamente uma chave estrangeira.', FALSE),
(401, 'Especificar a condição de associação entre tabelas.', TRUE),

-- Questão 33 | ID 402 | Correta: A
(402, 'Permitir a passagem de valores para a procedure e, conforme o tipo do parâmetro, retornar valores.', TRUE),
(402, 'Impedir a reutilização do código SQL.', FALSE),
(402, 'Substituir automaticamente todos os índices.', FALSE),
(402, 'Executar exclusivamente comandos de criação de tabelas.', FALSE),

-- Questão 34 | ID 403 | Correta: B
(403, 'Confirmar permanentemente todas as alterações.', FALSE),
(403, 'Criar um ponto para permitir desfazer parcialmente alterações da transação.', TRUE),
(403, 'Encerrar automaticamente a conexão com o banco.', FALSE),
(403, 'Excluir os registros temporários do servidor.', FALSE),

-- Questão 35 | ID 404 | Correta: C
(404, 'Uma consulta que não utiliza nenhuma tabela.', FALSE),
(404, 'Uma consulta executada apenas uma vez pelo servidor.', FALSE),
(404, 'Uma subconsulta que referencia colunas da consulta externa.', TRUE),
(404, 'Uma consulta que obrigatoriamente utiliza UNION.', FALSE),

-- Questão 36 | ID 405 | Correta: D
(405, 'UNION ALL elimina duplicidades e UNION mantém todas.', FALSE),
(405, 'Ambos eliminam obrigatoriamente todas as duplicidades.', FALSE),
(405, 'UNION é utilizado apenas com tabelas temporárias.', FALSE),
(405, 'UNION elimina linhas duplicadas; UNION ALL preserva duplicidades.', TRUE),

-- Questão 37 | ID 406 | Correta: A
(406, 'Eliminar linhas duplicadas do resultado considerando as expressões selecionadas.', TRUE),
(406, 'Excluir definitivamente registros duplicados da tabela.', FALSE),
(406, 'Criar automaticamente um índice UNIQUE.', FALSE),
(406, 'Ordenar os resultados em ordem crescente.', FALSE),

-- Questão 38 | ID 407 | Correta: B
(407, 'Alterar o número de colunas de uma tabela.', FALSE),
(407, 'Restringir a quantidade de linhas retornadas por uma consulta.', TRUE),
(407, 'Impedir a execução de subconsultas.', FALSE),
(407, 'Excluir linhas permanentemente do banco.', FALSE),

-- Questão 39 | ID 408 | Correta: C
(408, 'Executar automaticamente todas as otimizações possíveis.', FALSE),
(408, 'Apagar os índices que não são utilizados.', FALSE),
(408, 'Analisar o plano de execução e identificar possíveis pontos de melhoria.', TRUE),
(408, 'Confirmar as alterações pendentes da transação.', FALSE),

-- Questão 40 | ID 409 | Correta: D
(409, 'Permitir que todos os usuários alterem qualquer tabela.', FALSE),
(409, 'Eliminar a necessidade de autenticação.', FALSE),
(409, 'Garantir que todas as consultas utilizem índices.', FALSE),
(409, 'Restringir operações conforme as permissões necessárias e reduzir riscos de acesso indevido.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS
-- ============================================================

SELECT
    q.id AS questao_id,
    q.enunciado,
    COUNT(a.id) AS total_alternativas,
    COALESCE(SUM(a.is_correta), 0) AS alternativas_corretas,
    CASE
        WHEN COUNT(a.id) = 4
         AND COALESCE(SUM(a.is_correta), 0) = 1
        THEN 'OK'
        ELSE 'VERIFICAR'
    END AS validacao
FROM questao q
LEFT JOIN alternativa a
    ON a.questao_id = q.id
WHERE q.quiz_id = @quiz_bd2_id
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
