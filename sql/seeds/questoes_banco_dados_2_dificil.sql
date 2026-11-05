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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- BANCOS DE DADOS II | QUESTÕES 41 A 60 | NÍVEL DIFÍCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd2_id, 'Uma consulta utiliza WHERE, GROUP BY e HAVING. Qual é a ordem lógica dessas etapas?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma transação atualiza duas tabelas e falha antes do COMMIT. Qual ação preserva a atomicidade?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual é o principal risco de criar índices em excesso em uma tabela com muitas operações INSERT e UPDATE?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Em uma consulta com LEFT JOIN, o que acontece quando não existe correspondência na tabela da direita?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma procedure precisa receber um identificador e devolver um total calculado. Quais modos de parâmetros são adequados?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma trigger BEFORE INSERT precisa impedir o cadastro de um valor inválido. Qual abordagem é adequada no MySQL?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Em uma transação, qual é a finalidade de executar ROLLBACK TO SAVEPOINT?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual problema pode ocorrer quando duas transações bloqueiam recursos em ordem inversa e aguardam uma à outra?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma consulta utiliza COUNT(*) e COUNT(coluna). Quando os resultados podem ser diferentes?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Em uma subconsulta correlacionada, por que o resultado pode depender da linha analisada na consulta externa?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual propriedade ACID garante que uma transação confirmada permaneça registrada mesmo após uma falha?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma consulta usa INNER JOIN entre três tabelas e apresenta linhas duplicadas. Qual pode ser a causa?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual é o efeito de uma condição sobre a tabela da direita no WHERE após um LEFT JOIN?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Em uma consulta com GROUP BY, qual é a diferença entre COUNT(*) e COUNT(DISTINCT coluna)?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual é a vantagem de utilizar uma transação ao registrar uma tentativa e suas respostas em tabelas relacionadas?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual é a finalidade de utilizar um índice composto em duas colunas?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Uma consulta com ORDER BY e LIMIT apresenta resultados diferentes entre execuções. Qual pode ser a causa?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Em uma procedure MySQL, qual é a finalidade de um HANDLER para SQLEXCEPTION?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Qual é o risco de construir consultas SQL concatenando diretamente dados fornecidos pelo usuário?', 'DIFICIL', 15, 15),
(@quiz_bd2_id, 'Ao analisar EXPLAIN, o que pode indicar uma consulta que examina muitas linhas sem utilizar um índice adequado?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- BANCOS DE DADOS II | QUESTÕES 41 A 60 | NÍVEL DIFÍCEIS
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 410 | Correta: B
(410, 'GROUP BY, WHERE e HAVING.', FALSE),
(410, 'WHERE, GROUP BY e HAVING.', TRUE),
(410, 'HAVING, WHERE e GROUP BY.', FALSE),
(410, 'WHERE, HAVING e GROUP BY.', FALSE),

-- Questão 42 | ID 411 | Correta: C
(411, 'Executar COMMIT mesmo após a falha.', FALSE),
(411, 'Excluir manualmente as tabelas envolvidas.', FALSE),
(411, 'Executar ROLLBACK para desfazer as alterações não confirmadas.', TRUE),
(411, 'Executar GRANT para restaurar os dados.', FALSE),

-- Questão 43 | ID 412 | Correta: A
(412, 'Aumentar o custo de escrita e manutenção dos índices.', TRUE),
(412, 'Impedir automaticamente todas as consultas SELECT.', FALSE),
(412, 'Eliminar a necessidade de espaço em disco.', FALSE),
(412, 'Desativar as restrições de chave estrangeira.', FALSE),

-- Questão 44 | ID 413 | Correta: D
(413, 'A linha da tabela esquerda é descartada.', FALSE),
(413, 'A consulta retorna um erro de sintaxe.', FALSE),
(413, 'A linha da direita é criada automaticamente.', FALSE),
(413, 'A linha da esquerda é mantida, com NULL nas colunas da direita.', TRUE),

-- Questão 45 | ID 414 | Correta: B
(414, 'OUT para receber o identificador e IN para devolver o total.', FALSE),
(414, 'IN para receber o identificador e OUT para devolver o total.', TRUE),
(414, 'Somente parâmetros IN em todos os casos.', FALSE),
(414, 'Somente parâmetros OUT em todos os casos.', FALSE),

-- Questão 46 | ID 415 | Correta: C
(415, 'Executar COMMIT dentro da trigger.', FALSE),
(415, 'Excluir automaticamente todos os registros da tabela.', FALSE),
(415, 'Validar NEW e utilizar SIGNAL SQLSTATE para rejeitar valores inválidos.', TRUE),
(415, 'Executar DROP TABLE antes da inserção.', FALSE),

-- Questão 47 | ID 416 | Correta: A
(416, 'Desfazer alterações realizadas após o savepoint, mantendo a transação ativa.', TRUE),
(416, 'Confirmar todas as alterações permanentemente.', FALSE),
(416, 'Excluir o banco de dados.', FALSE),
(416, 'Encerrar obrigatoriamente a conexão.', FALSE),

-- Questão 48 | ID 417 | Correta: D
(417, 'Uma atualização automática de índices.', FALSE),
(417, 'Uma consulta sem cláusula WHERE.', FALSE),
(417, 'Uma violação obrigatória de chave primária.', FALSE),
(417, 'Um deadlock entre transações.', TRUE),

-- Questão 49 | ID 418 | Correta: B
(418, 'Quando a tabela possui uma chave primária.', FALSE),
(418, 'Quando existem valores NULL na coluna analisada.', TRUE),
(418, 'Quando a consulta utiliza ORDER BY.', FALSE),
(418, 'Quando todos os registros possuem valores não nulos.', FALSE),

-- Questão 50 | ID 419 | Correta: C
(419, 'Porque a subconsulta não pode utilizar WHERE.', FALSE),
(419, 'Porque toda subconsulta correlacionada cria uma tabela física.', FALSE),
(419, 'Porque ela referencia valores da linha corrente da consulta externa.', TRUE),
(419, 'Porque ela utiliza obrigatoriamente UNION ALL.', FALSE),

-- Questão 51 | ID 420 | Correta: A
(420, 'Durabilidade.', TRUE),
(420, 'Atomicidade.', FALSE),
(420, 'Isolamento.', FALSE),
(420, 'Consistência.', FALSE),

-- Questão 52 | ID 421 | Correta: D
(421, 'O uso de INNER JOIN impede qualquer duplicidade.', FALSE),
(421, 'O banco sempre duplica linhas quando há três tabelas.', FALSE),
(421, 'A presença de ORDER BY cria registros adicionais.', FALSE),
(421, 'Relacionamentos um-para-muitos podem multiplicar as combinações retornadas.', TRUE),

-- Questão 53 | ID 422 | Correta: B
(422, 'A condição sempre mantém todas as linhas da esquerda.', FALSE),
(422, 'Uma condição que rejeita NULL pode eliminar linhas sem correspondência, produzindo efeito semelhante a INNER JOIN.', TRUE),
(422, 'O LEFT JOIN é automaticamente convertido em CROSS JOIN.', FALSE),
(422, 'A cláusula WHERE cria registros na tabela direita.', FALSE),

-- Questão 54 | ID 423 | Correta: C
(423, 'COUNT(*) conta somente valores distintos.', FALSE),
(423, 'COUNT(DISTINCT coluna) inclui valores NULL como linhas distintas.', FALSE),
(423, 'COUNT(*) conta linhas do grupo; COUNT(DISTINCT coluna) conta valores distintos não nulos.', TRUE),
(423, 'As duas expressões sempre retornam o mesmo resultado.', FALSE),

-- Questão 55 | ID 424 | Correta: A
(424, 'Garantir que as operações relacionadas sejam confirmadas ou desfeitas em conjunto.', TRUE),
(424, 'Eliminar a necessidade de chaves estrangeiras.', FALSE),
(424, 'Permitir que qualquer usuário altere os dados.', FALSE),
(424, 'Impedir permanentemente todas as consultas simultâneas.', FALSE),

-- Questão 56 | ID 425 | Correta: D
(425, 'Impedir qualquer operação UPDATE.', FALSE),
(425, 'Substituir obrigatoriamente todas as chaves primárias.', FALSE),
(425, 'Garantir que qualquer consulta utilize o índice.', FALSE),
(425, 'Apoiar consultas que filtram ou ordenam por combinações adequadas das colunas indexadas.', TRUE),

-- Questão 57 | ID 426 | Correta: B
(426, 'A existência de uma chave estrangeira.', FALSE),
(426, 'A ordenação não determina uma ordem única para linhas empatadas.', TRUE),
(426, 'O uso obrigatório de GROUP BY.', FALSE),
(426, 'A ausência de uma cláusula HAVING.', FALSE),

-- Questão 58 | ID 427 | Correta: C
(427, 'Criar automaticamente todas as tabelas necessárias.', FALSE),
(427, 'Desativar permanentemente as restrições do banco.', FALSE),
(427, 'Tratar erros SQL, permitindo ações como ROLLBACK e propagação do erro.', TRUE),
(427, 'Executar COMMIT antes de qualquer instrução.', FALSE),

-- Questão 59 | ID 428 | Correta: A
(428, 'SQL Injection, permitindo manipular indevidamente a consulta.', TRUE),
(428, 'Criação automática de índices.', FALSE),
(428, 'Normalização obrigatória das tabelas.', FALSE),
(428, 'Conversão automática de consultas em procedures.', FALSE),

-- Questão 60 | ID 429 | Correta: D
(429, 'A utilização de uma chave primária composta.', FALSE),
(429, 'A existência de uma transação confirmada.', FALSE),
(429, 'O uso de uma cláusula ORDER BY.', FALSE),
(429, 'Uma varredura extensa da tabela, como acesso do tipo ALL, com muitas linhas examinadas.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
