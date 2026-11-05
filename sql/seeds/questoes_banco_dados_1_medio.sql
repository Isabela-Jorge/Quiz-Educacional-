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
-- DISCIPLINA: Bancos de Dados I - Módulo 1
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Bancos de Dados I
SET @quiz_bd1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Bancos de Dados I'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- PRÉ-VALIDAÇÃO
-- ============================================================

SELECT
    @quiz_bd1_id AS quiz_id,
    COUNT(*) AS total_questoes_medias
FROM questao
WHERE quiz_id = @quiz_bd1_id
  AND dificuldade = 'MEDIO';

-- ============================================================
-- BANCOS DE DADOS I | Questões 21 a 40 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd1_id, 'Qual consulta retorna alunos cujo campo idade é maior que 18?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Em uma tabela produto com coluna preco, como listar do maior para o menor preço?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual comando adiciona uma coluna telefone a uma tabela cliente existente?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'O que ocorre ao usar WHERE nome LIKE ''Ana%''?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual função de agregação conta as linhas retornadas, inclusive quando uma coluna específica é nula?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual função calcula a média dos valores numéricos não nulos?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual função retorna o maior valor de uma coluna?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual é a finalidade da cláusula GROUP BY?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual cláusula filtra grupos depois da aplicação de GROUP BY?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Em SQL, o que faz INNER JOIN?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual é a finalidade de LEFT JOIN?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual restrição exige que uma coluna receba um valor não nulo?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual é o objetivo da normalização em bancos relacionais?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'O que caracteriza um relacionamento um-para-muitos?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual estrutura costuma representar um relacionamento muitos-para-muitos?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual comando inicia explicitamente uma transação no MySQL?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual comando confirma as alterações de uma transação?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'Qual comando desfaz alterações ainda não confirmadas de uma transação?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'O que faz a cláusula LIMIT 10 em uma consulta MySQL?', 'MEDIO', 10, 15),
(@quiz_bd1_id, 'O que significa integridade referencial?', 'MEDIO', 10, 15);

-- ============================================================
-- CONSULTAR OS IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 9
  AND dificuldade = 'MEDIO'
ORDER BY id;


-- ============================================================
-- BANCOS DE DADOS I | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 90 | Correta: C
(90, 'SELECT * FROM aluno WHERE idade = 18;', FALSE),
(90, 'SELECT * FROM aluno ORDER BY idade > 18;', FALSE),
(90, 'SELECT * FROM aluno WHERE idade > 18;', TRUE),
(90, 'SELECT * FROM aluno WHERE idade < 18;', FALSE),

-- Questão 22 | ID 91 | Correta: C
(91, 'SELECT * FROM produto ORDER BY preco ASC;', FALSE),
(91, 'SELECT * FROM produto WHERE preco DESC;', FALSE),
(91, 'SELECT * FROM produto ORDER BY preco DESC;', TRUE),
(91, 'SELECT * FROM produto GROUP BY preco DESC;', FALSE),

-- Questão 23 | ID 92 | Correta: A
(92, 'ALTER TABLE cliente ADD COLUMN telefone VARCHAR(20);', TRUE),
(92, 'INSERT INTO cliente COLUMN telefone VARCHAR(20);', FALSE),
(92, 'UPDATE TABLE cliente ADD telefone VARCHAR(20);', FALSE),
(92, 'CREATE COLUMN telefone IN cliente;', FALSE),

-- Questão 24 | ID 93 | Correta: A
(93, 'São encontrados nomes que começam com Ana.', TRUE),
(93, 'São encontrados nomes que terminam com Ana.', FALSE),
(93, 'São encontrados apenas nomes iguais a Ana%.', FALSE),
(93, 'São encontrados todos os nomes que contêm a letra A.', FALSE),

-- Questão 25 | ID 94 | Correta: A
(94, 'COUNT(*)', TRUE),
(94, 'SUM(coluna)', FALSE),
(94, 'COUNT(coluna)', FALSE),
(94, 'AVG(coluna)', FALSE),

-- Questão 26 | ID 95 | Correta: B
(95, 'COUNT()', FALSE),
(95, 'AVG()', TRUE),
(95, 'MAX()', FALSE),
(95, 'SUM()', FALSE),

-- Questão 27 | ID 96 | Correta: C
(96, 'MIN()', FALSE),
(96, 'AVG()', FALSE),
(96, 'MAX()', TRUE),
(96, 'COUNT()', FALSE),

-- Questão 28 | ID 97 | Correta: A
(97, 'Agrupar linhas por valores de uma ou mais colunas para produzir agregações.', TRUE),
(97, 'Alterar os tipos de dados de uma tabela.', FALSE),
(97, 'Eliminar automaticamente tabelas duplicadas.', FALSE),
(97, 'Ordenar registros exclusivamente em ordem crescente.', FALSE),

-- Questão 29 | ID 98 | Correta: A
(98, 'HAVING', TRUE),
(98, 'LIMIT', FALSE),
(98, 'ORDER BY', FALSE),
(98, 'WHERE', FALSE),

-- Questão 30 | ID 99 | Correta: B
(99, 'Une tabelas ignorando qualquer condição.', FALSE),
(99, 'Retorna combinações de linhas que satisfazem a condição de junção em ambas as tabelas.', TRUE),
(99, 'Retorna sempre todas as linhas da primeira tabela.', FALSE),
(99, 'Exclui as linhas que possuem correspondência.', FALSE),

-- Questão 31 | ID 100 | Correta: C
(100, 'Preservar somente as linhas da tabela à direita.', FALSE),
(100, 'Ordenar a tabela da esquerda automaticamente.', FALSE),
(100, 'Preservar todas as linhas da tabela à esquerda, mesmo sem correspondência à direita.', TRUE),
(100, 'Retornar apenas linhas sem correspondência nas duas tabelas.', FALSE),

-- Questão 32 | ID 101 | Correta: B
(101, 'DEFAULT', FALSE),
(101, 'NOT NULL', TRUE),
(101, 'UNIQUE', FALSE),
(101, 'AUTO_INCREMENT', FALSE),

-- Questão 33 | ID 102 | Correta: D
(102, 'Eliminar todas as chaves primárias.', FALSE),
(102, 'Substituir consultas SQL por planilhas.', FALSE),
(102, 'Aumentar intencionalmente a duplicação de dados.', FALSE),
(102, 'Reduzir redundâncias e anomalias de atualização por meio de uma estrutura adequada.', TRUE),

-- Questão 34 | ID 103 | Correta: B
(103, 'Todos os registros se relacionam obrigatoriamente com todos os outros.', FALSE),
(103, 'Um registro da tabela principal pode estar associado a vários registros da tabela relacionada.', TRUE),
(103, 'Cada registro só pode existir em uma única tabela.', FALSE),
(103, 'Uma tabela não pode ter chaves estrangeiras.', FALSE),

-- Questão 35 | ID 104 | Correta: C
(104, 'Uma única coluna de texto com todos os identificadores.', FALSE),
(104, 'Duas chaves primárias repetidas na mesma tabela sem restrições.', FALSE),
(104, 'Uma tabela associativa com referências às duas entidades.', TRUE),
(104, 'A exclusão de uma das entidades.', FALSE),

-- Questão 36 | ID 105 | Correta: D
(105, 'OPEN TABLE;', FALSE),
(105, 'START DATABASE;', FALSE),
(105, 'BEGIN SELECT;', FALSE),
(105, 'START TRANSACTION;', TRUE),

-- Questão 37 | ID 106 | Correta: D
(106, 'SAVEPOINT;', FALSE),
(106, 'SELECT;', FALSE),
(106, 'ROLLBACK;', FALSE),
(106, 'COMMIT;', TRUE),

-- Questão 38 | ID 107 | Correta: B
(107, 'COMMIT;', FALSE),
(107, 'ROLLBACK;', TRUE),
(107, 'SHOW;', FALSE),
(107, 'ALTER;', FALSE),

-- Questão 39 | ID 108 | Correta: A
(108, 'Restringe o resultado a no máximo dez linhas.', TRUE),
(108, 'Ordena as dez maiores linhas automaticamente.', FALSE),
(108, 'Garante que a tabela tenha dez registros.', FALSE),
(108, 'Remove dez registros do banco.', FALSE),

-- Questão 40 | ID 109 | Correta: B
(109, 'Eliminar a necessidade de índices.', FALSE),
(109, 'Garantir que referências entre tabelas respeitem as chaves e regras definidas.', TRUE),
(109, 'Guardar somente dados criptografados.', FALSE),
(109, 'Permitir que qualquer chave estrangeira aponte para valores inexistentes.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE BANCOS DE DADOS I
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
WHERE q.quiz_id = 9
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;