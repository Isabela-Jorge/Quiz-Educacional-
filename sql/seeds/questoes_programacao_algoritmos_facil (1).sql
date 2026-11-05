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
-- DISCIPLINA: Programação e Algoritmos - Módulo 1
-- DIFICULDADE: FACIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação e Algoritmos
SET @quiz_pa_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação e Algoritmos'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- PROGRAMAÇÃO E ALGORITMOS | Questões 01 a 20 | Fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pa_id, 'O que é um algoritmo?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual símbolo normalmente representa o início ou fim em um fluxograma?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual estrutura executa comandos quando uma condição é verdadeira?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual operador representa a soma em muitas linguagens de programação?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual é o resultado de 7 + 5?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual tipo de dado representa valores verdadeiro ou falso?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Para que serve uma variável em um programa?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual comando conceitual permite receber um valor digitado pelo usuário?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual comando conceitual exibe uma mensagem na tela?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Em um fluxograma, o losango costuma indicar o quê?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual operador é normalmente usado para multiplicação em pseudocódigo?', 'FACIL', 5, 15),
(@quiz_pa_id, 'O que é pseudocódigo?', 'FACIL', 5, 15),
(@quiz_pa_id, 'O que significa atribuir um valor a uma variável?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual estrutura é adequada para repetir um bloco de instruções?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual é o resultado de 18 / 3, considerando divisão aritmética comum?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual é o resultado de 9 - 4?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual dos valores abaixo é um número inteiro?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual operador lógico representa a conjunção de duas condições?', 'FACIL', 5, 15),
(@quiz_pa_id, 'Qual é o propósito de um comentário no código?', 'FACIL', 5, 15),
(@quiz_pa_id, 'O que ocorre quando uma condição de um comando SE é falsa e existe um SENÃO?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTA DOS IDs REAIS DAS QUESTÕES FÁCEIS
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 21
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ==================================================================
-- PROGRAMAÇÃO E ALGORITMOS | Alternativas das questões 01 a 20
-- ==================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 190 | Correta: A
(190, 'Uma sequência finita de passos para resolver um problema.', TRUE),
(190, 'Um arquivo que armazena imagens.', FALSE),
(190, 'Um componente físico do computador.', FALSE),
(190, 'Um tipo de conexão de rede.', FALSE),

-- Questão 02 | ID 191 | Correta: B
(191, 'Losango (decisão).', FALSE),
(191, 'Oval (terminal).', TRUE),
(191, 'Paralelogramo (entrada/saída).', FALSE),
(191, 'Retângulo (processo).', FALSE),

-- Questão 03 | ID 192 | Correta: B
(192, 'Comentário de código.', FALSE),
(192, 'Estrutura condicional.', TRUE),
(192, 'Declaração de constante.', FALSE),
(192, 'Importação de biblioteca.', FALSE),

-- Questão 04 | ID 193 | Correta: A
(193, '+', TRUE),
(193, '%', FALSE),
(193, '/', FALSE),
(193, '*', FALSE),

-- Questão 05 | ID 194 | Correta: C
(194, '13', FALSE),
(194, '10', FALSE),
(194, '12', TRUE),
(194, '11', FALSE),

-- Questão 06 | ID 195 | Correta: D
(195, 'Inteiro.', FALSE),
(195, 'Caractere.', FALSE),
(195, 'Real.', FALSE),
(195, 'Booleano.', TRUE),

-- Questão 07 | ID 196 | Correta: D
(196, 'Criar automaticamente um banco de dados.', FALSE),
(196, 'Desligar o computador.', FALSE),
(196, 'Eliminar a necessidade de instruções.', FALSE),
(196, 'Armazenar um valor que pode mudar durante a execução.', TRUE),

-- Questão 08 | ID 197 | Correta: C
(197, 'Saída de dados.', FALSE),
(197, 'Repetição.', FALSE),
(197, 'Entrada de dados.', TRUE),
(197, 'Comentário.', FALSE),

-- Questão 09 | ID 198 | Correta: D
(198, 'Declaração de variável.', FALSE),
(198, 'Comparação.', FALSE),
(198, 'Entrada de dados.', FALSE),
(198, 'Saída de dados.', TRUE),

-- Questão 10 | ID 199 | Correta: A
(199, 'Uma decisão baseada em condição.', TRUE),
(199, 'O início obrigatório do programa.', FALSE),
(199, 'Uma saída de impressão.', FALSE),
(199, 'Uma atribuição de valor.', FALSE),

-- Questão 11 | ID 200 | Correta: A
(200, '*', TRUE),
(200, '/', FALSE),
(200, '-', FALSE),
(200, '+', FALSE),

-- Questão 12 | ID 201 | Correta: C
(201, 'Um desenho de componentes eletrônicos.', FALSE),
(201, 'Um formato de arquivo de áudio.', FALSE),
(201, 'Uma descrição estruturada de um algoritmo sem depender de uma linguagem específica.', TRUE),
(201, 'Código de máquina executável diretamente.', FALSE),

-- Questão 13 | ID 202 | Correta: D
(202, 'Comparar dois valores sem armazená-los.', FALSE),
(202, 'Exibir automaticamente o valor na tela.', FALSE),
(202, 'Excluir a variável do programa.', FALSE),
(202, 'Guardar nela um valor para uso posterior.', TRUE),

-- Questão 14 | ID 203 | Correta: A
(203, 'Laço de repetição.', TRUE),
(203, 'Operação de entrada isolada.', FALSE),
(203, 'Estrutura de comentário.', FALSE),
(203, 'Declaração de tipo.', FALSE),

-- Questão 15 | ID 204 | Correta: C
(204, '3', FALSE),
(204, '9', FALSE),
(204, '6', TRUE),
(204, '15', FALSE),

-- Questão 16 | ID 205 | Correta: D
(205, '6', FALSE),
(205, '4', FALSE),
(205, '13', FALSE),
(205, '5', TRUE),

-- Questão 17 | ID 206 | Correta: D
(206, '0,25', FALSE),
(206, '2,75', FALSE),
(206, '3,5', FALSE),
(206, '-8', TRUE),

-- Questão 18 | ID 207 | Correta: D
(207, 'NÃO (NOT).', FALSE),
(207, 'OU (OR).', FALSE),
(207, 'Módulo (%).', FALSE),
(207, 'E (AND).', TRUE),

-- Questão 19 | ID 208 | Correta: B
(208, 'Executar um cálculo adicional.', FALSE),
(208, 'Explicar trechos do programa sem executar essas explicações.', TRUE),
(208, 'Encerrar automaticamente um laço.', FALSE),
(208, 'Substituir todas as variáveis.', FALSE),

-- Questão 20 | ID 209 | Correta: B
(209, 'O programa necessariamente termina.', FALSE),
(209, 'Executa-se o bloco SENÃO.', TRUE),
(209, 'Executam-se sempre os dois blocos.', FALSE),
(209, 'A condição passa a ser verdadeira.', FALSE);


-- ================================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE PROGRAMAÇÃO E ALGORITMOS
-- ================================================================

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
WHERE q.quiz_id = 21
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
