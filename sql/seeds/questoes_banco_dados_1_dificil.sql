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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Bancos de Dados I
SET @quiz_bd1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Bancos de Dados I'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- BANCOS DE DADOS I | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_bd1_id, 'Uma tabela matricula possui aluno_id e disciplina_id e deve impedir a mesma matrícula duplicada. Qual solução atende diretamente à regra?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Uma coluna email deve ser obrigatória e não permitir duplicidade. Qual combinação de restrições é adequada?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Por que SELECT * pode ser inadequado em consultas de produção?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Qual consulta identifica departamentos com mais de cinco funcionários na tabela funcionario?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Uma tabela pedidos possui cliente_id que referencia cliente(id). O que acontece ao inserir um pedido com cliente_id inexistente, se a FK estiver ativa?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Qual é a diferença entre DELETE FROM produto WHERE id = 7 e DROP TABLE produto?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Por que uma chave primária composta pode ser útil em uma tabela associativa?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em uma tabela venda, o campo valor_total é DECIMAL(10,2). O que representam os parâmetros?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'O que caracteriza uma dependência funcional A → B em um modelo relacional?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em uma relação que satisfaz a primeira forma normal (1FN), como devem ser armazenados os valores de cada atributo?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Uma tabela tem chave primária composta (pedido_id, produto_id) e descricao_produto depende somente de produto_id. Qual problema de normalização isso exemplifica?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Uma tabela funcionario contém funcionario_id, departamento_id e nome_departamento; nome_departamento depende de departamento_id. Qual problema pode ocorrer?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em uma consulta com LEFT JOIN, como encontrar registros da esquerda sem correspondência na direita, usando uma chave não nula da direita?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Qual é a diferença entre COUNT(*) e COUNT(coluna) em SQL?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Por que usar parâmetros preparados em consultas com dados fornecidos pelo usuário?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Qual propriedade ACID assegura que uma transação seja aplicada por inteiro ou não seja aplicada?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Qual propriedade ACID trata da persistência de transações confirmadas após falhas?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em uma transação, qual é o objetivo do isolamento?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em MySQL/InnoDB, qual comportamento descreve ON DELETE CASCADE em uma chave estrangeira?', 'DIFICIL', 15, 15),
(@quiz_bd1_id, 'Em uma tabela com UNIQUE (codigo, versao), qual inserção é proibida se já existe (12, 3) e ambas as colunas são NOT NULL?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;


-- ============================================================
-- BANCOS DE DADOS I | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 110 | Correta: B
(110, 'UNIQUE (aluno_id)', FALSE),
(110, 'UNIQUE (aluno_id, disciplina_id)', TRUE),
(110, 'DEFAULT (aluno_id, disciplina_id)', FALSE),
(110, 'UNIQUE (disciplina_id)', FALSE),

-- Questão 42 | ID 111 | Correta: A
(111, 'NOT NULL e UNIQUE', TRUE),
(111, 'CHECK e AUTO_INCREMENT', FALSE),
(111, 'DEFAULT e NULL', FALSE),
(111, 'FOREIGN KEY e NULL', FALSE),

-- Questão 43 | ID 112 | Correta: D
(112, 'Porque sempre remove índices existentes.', FALSE),
(112, 'Porque altera todos os registros retornados.', FALSE),
(112, 'Porque impede o uso de WHERE em qualquer situação.', FALSE),
(112, 'Porque pode trazer colunas desnecessárias e aumentar o volume de dados transferidos.', TRUE),

-- Questão 44 | ID 113 | Correta: B
(113, 'SELECT departamento_id FROM funcionario GROUP BY departamento_id WHERE COUNT(*) > 5;', FALSE),
(113, 'SELECT departamento_id FROM funcionario GROUP BY departamento_id HAVING COUNT(*) > 5;', TRUE),
(113, 'SELECT departamento_id FROM funcionario WHERE COUNT(*) > 5;', FALSE),
(113, 'SELECT departamento_id FROM funcionario HAVING COUNT(*) > 5 ORDER BY departamento_id;', FALSE),

-- Questão 45 | ID 114 | Correta: A
(114, 'A inserção é rejeitada pela restrição de chave estrangeira.', TRUE),
(114, 'O pedido é salvo e a FK é ignorada.', FALSE),
(114, 'O MySQL cria automaticamente o cliente ausente.', FALSE),
(114, 'O valor cliente_id vira zero automaticamente.', FALSE),

-- Questão 46 | ID 115 | Correta: D
(115, 'Ambos apenas ocultam dados da consulta.', FALSE),
(115, 'Ambos removem apenas a linha indicada.', FALSE),
(115, 'DELETE remove a estrutura; DROP remove apenas dados filtrados.', FALSE),
(115, 'DELETE remove a linha indicada; DROP remove a tabela e sua estrutura.', TRUE),

-- Questão 47 | ID 116 | Correta: B
(116, 'Porque permite repetir livremente a mesma associação.', FALSE),
(116, 'Porque a combinação de colunas pode identificar cada associação de forma única.', TRUE),
(116, 'Porque obriga todas as colunas a serem textos.', FALSE),
(116, 'Porque elimina a necessidade de relacionamentos.', FALSE),

-- Questão 48 | ID 117 | Correta: B
(117, 'Dez casas decimais e dois dígitos inteiros.', FALSE),
(117, 'Até dez dígitos no total, dos quais dois são decimais.', TRUE),
(117, 'Dez registros e duas colunas.', FALSE),
(117, 'Dez bytes fixos e duas tabelas.', FALSE),

-- Questão 49 | ID 118 | Correta: C
(118, 'Cada valor de B precisa determinar vários valores de A.', FALSE),
(118, 'A e B precisam ser chaves estrangeiras.', FALSE),
(118, 'Cada valor de A determina um único valor de B dentro da relação.', TRUE),
(118, 'A e B precisam ter tipos de dados diferentes.', FALSE),

-- Questão 50 | ID 119 | Correta: D
(119, 'Como registros obrigatoriamente sem valores nulos.', FALSE),
(119, 'Como tabelas sem qualquer chave candidata.', FALSE),
(119, 'Como listas separadas por vírgula em todas as colunas.', FALSE),
(119, 'Como valores atômicos no contexto do modelo, sem listas repetidas em uma célula.', TRUE),

-- Questão 51 | ID 120 | Correta: B
(120, 'Dependência transitiva exclusivamente entre chaves candidatas.', FALSE),
(120, 'Dependência parcial, incompatível com a segunda forma normal.', TRUE),
(120, 'Ausência de primeira forma normal por conter números.', FALSE),
(120, 'Violação automática de integridade referencial.', FALSE),

-- Questão 52 | ID 121 | Correta: C
(121, 'Impossibilidade de usar JOIN com departamento.', FALSE),
(121, 'Ausência obrigatória de qualquer chave estrangeira.', FALSE),
(121, 'Dependência transitiva entre chave e atributo não chave, contrariando a terceira forma normal.', TRUE),
(121, 'Dependência parcial de uma chave simples, contrariando a segunda forma normal.', FALSE),

-- Questão 53 | ID 122 | Correta: B
(122, 'Adicionar ORDER BY direita.id DESC.', FALSE),
(122, 'Adicionar WHERE direita.id IS NULL.', TRUE),
(122, 'Adicionar WHERE direita.id = 0 obrigatoriamente.', FALSE),
(122, 'Trocar LEFT JOIN por INNER JOIN.', FALSE),

-- Questão 54 | ID 123 | Correta: A
(123, 'COUNT(*) conta linhas; COUNT(coluna) ignora linhas em que essa coluna é NULL.', TRUE),
(123, 'COUNT(coluna) conta somente valores distintos automaticamente.', FALSE),
(123, 'Ambos somam valores numéricos.', FALSE),
(123, 'COUNT(*) ignora NULL em qualquer coluna; COUNT(coluna) não ignora.', FALSE),

-- Questão 55 | ID 124 | Correta: D
(124, 'Para permitir que o usuário execute qualquer comando SQL.', FALSE),
(124, 'Para desativar todas as restrições do banco.', FALSE),
(124, 'Para eliminar a necessidade de autenticação.', FALSE),
(124, 'Para separar valores da estrutura SQL e reduzir o risco de injeção de SQL.', TRUE),

-- Questão 56 | ID 125 | Correta: C
(125, 'Isolamento.', FALSE),
(125, 'Consistência.', FALSE),
(125, 'Atomicidade.', TRUE),
(125, 'Durabilidade.', FALSE),

-- Questão 57 | ID 126 | Correta: B
(126, 'Normalização.', FALSE),
(126, 'Durabilidade.', TRUE),
(126, 'Isolamento.', FALSE),
(126, 'Atomicidade.', FALSE),

-- Questão 58 | ID 127 | Correta: B
(127, 'Eliminar permanentemente a necessidade de bloqueios.', FALSE),
(127, 'Controlar a interferência entre transações concorrentes.', TRUE),
(127, 'Garantir que toda consulta retorne apenas uma linha.', FALSE),
(127, 'Impedir que existam transações simultâneas.', FALSE),

-- Questão 59 | ID 128 | Correta: D
(128, 'Impedir toda exclusão da tabela referenciada.', FALSE),
(128, 'Atualizar automaticamente a chave primária para um novo valor aleatório.', FALSE),
(128, 'Definir os valores dependentes como zero.', FALSE),
(128, 'Excluir automaticamente linhas dependentes quando a linha referenciada for excluída.', TRUE),

-- Questão 60 | ID 129 | Correta: C
(129, 'Uma linha com codigo 12 e versao 4.', FALSE),
(129, 'Uma linha com codigo 13 e versao 3.', FALSE),
(129, 'Outra linha com codigo 12 e versao 3.', TRUE),
(129, 'Uma linha com codigo 13 e versao 4.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE BANCOS DE DADOS I
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;