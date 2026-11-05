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
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- PROGRAMAÇÃO E ALGORITMOS | Questões 21 a 40 | Médio
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pa_id, 'Após x ← 4 e x ← x + 3, qual é o valor final de x?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Se a ← 8 e b ← 5, qual é o resultado de a > b?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é o resultado da expressão 2 + 3 * 4, respeitando a precedência usual?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Se idade = 17, qual bloco é executado em SE idade >= 18 ENTÃO "maior" SENÃO "menor"?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Um laço PARA i DE 1 ATÉ 5, com passo 1 e limites inclusivos, executa quantas vezes?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é o resto da divisão inteira de 17 por 5?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Quanto vale NÃO (verdadeiro E falso)?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Se x = 6, qual é o resultado de (x > 3) E (x < 10)?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Um vetor com índices de 0 a 4 possui quantos elementos?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é o valor de soma após soma ← 0; soma ← soma + 2; soma ← soma + 4?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual estrutura é mais adequada quando o número de repetições depende de uma condição avaliada a cada ciclo?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Se um vetor v = [4, 7, 9], com índice inicial 0, quanto vale v[1]?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é a média aritmética de 6, 8 e 10?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Em uma função que recebe dois números e devolve sua soma, o que é o valor retornado?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é o valor final de contador após iniciar em 0 e incrementá-lo três vezes em 1?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Em uma busca sequencial, quando o elemento procurado está na primeira posição, quantas comparações são necessárias?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual condição verifica se um inteiro n é par?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Se uma função quadrado(n) retorna n * n, qual é quadrado(5)?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Uma matriz com 3 linhas e 4 colunas possui quantos elementos?', 'MEDIO', 10, 15),
(@quiz_pa_id, 'Qual é o valor final de x após x ← 10; SE x > 5 ENTÃO x ← x - 4?', 'MEDIO', 10, 15);

-- ============================================================
-- CONSULTA DOS IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 21
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ==================================================================
-- PROGRAMAÇÃO E ALGORITMOS | Alternativas das questões 21 a 40
-- ==================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 210 | Correta: B
(210, '4', FALSE),
(210, '7', TRUE),
(210, '3', FALSE),
(210, '12', FALSE),

-- Questão 22 | ID 211 | Correta: A
(211, 'Verdadeiro.', TRUE),
(211, 'Falso.', FALSE),
(211, 'Nulo.', FALSE),
(211, 'Indefinido.', FALSE),

-- Questão 23 | ID 212 | Correta: C
(212, '20', FALSE),
(212, '11', FALSE),
(212, '14', TRUE),
(212, '24', FALSE),

-- Questão 24 | ID 213 | Correta: B
(213, 'Bloco MAIOR.', FALSE),
(213, 'Bloco MENOR.', TRUE),
(213, 'Os dois blocos.', FALSE),
(213, 'Nenhum bloco.', FALSE),

-- Questão 25 | ID 214 | Correta: D
(214, '4', FALSE),
(214, '6', FALSE),
(214, '3', FALSE),
(214, '5', TRUE),

-- Questão 26 | ID 215 | Correta: C
(215, '1', FALSE),
(215, '3', FALSE),
(215, '2', TRUE),
(215, '5', FALSE),

-- Questão 27 | ID 216 | Correta: B
(216, 'Falso.', FALSE),
(216, 'Verdadeiro.', TRUE),
(216, 'Indefinido.', FALSE),
(216, 'Erro de sintaxe.', FALSE),

-- Questão 28 | ID 217 | Correta: A
(217, 'Verdadeiro.', TRUE),
(217, 'Falso.', FALSE),
(217, 'Nulo.', FALSE),
(217, 'Não é possível avaliar.', FALSE),

-- Questão 29 | ID 218 | Correta: C
(218, '4', FALSE),
(218, '6', FALSE),
(218, '5', TRUE),
(218, '3', FALSE),

-- Questão 30 | ID 219 | Correta: B
(219, '4', FALSE),
(219, '6', TRUE),
(219, '2', FALSE),
(219, '8', FALSE),

-- Questão 31 | ID 220 | Correta: D
(220, 'Uma constante.', FALSE),
(220, 'Uma estrutura de seleção.', FALSE),
(220, 'Um comentário.', FALSE),
(220, 'Um laço condicional, como ENQUANTO.', TRUE),

-- Questão 32 | ID 221 | Correta: C
(221, '4', FALSE),
(221, '9', FALSE),
(221, '7', TRUE),
(221, '1', FALSE),

-- Questão 33 | ID 222 | Correta: A
(222, '8', TRUE),
(222, '6', FALSE),
(222, '10', FALSE),
(222, '24', FALSE),

-- Questão 34 | ID 223 | Correta: B
(223, 'O nome da função.', FALSE),
(223, 'O resultado da soma dos dois números.', TRUE),
(223, 'A quantidade de parâmetros.', FALSE),
(223, 'O tipo de variável utilizada.', FALSE),

-- Questão 35 | ID 224 | Correta: D
(224, '2', FALSE),
(224, '1', FALSE),
(224, '4', FALSE),
(224, '3', TRUE),

-- Questão 36 | ID 225 | Correta: A
(225, '1 comparação.', TRUE),
(225, '2 comparações.', FALSE),
(225, '3 comparações.', FALSE),
(225, 'Nenhuma comparação.', FALSE),

-- Questão 37 | ID 226 | Correta: C
(226, 'n / 2 = 0', FALSE),
(226, 'n + 2 = 0', FALSE),
(226, 'n MOD 2 = 0', TRUE),
(226, 'n * 2 = 0', FALSE),

-- Questão 38 | ID 227 | Correta: B
(227, '10', FALSE),
(227, '25', TRUE),
(227, '5', FALSE),
(227, '20', FALSE),

-- Questão 39 | ID 228 | Correta: D
(228, '7', FALSE),
(228, '9', FALSE),
(228, '3', FALSE),
(228, '12', TRUE),

-- Questão 40 | ID 229 | Correta: A
(229, '6', TRUE),
(229, '10', FALSE),
(229, '4', FALSE),
(229, '14', FALSE);

-- ================================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE PROGRAMAÇÃO E ALGORITMOS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
