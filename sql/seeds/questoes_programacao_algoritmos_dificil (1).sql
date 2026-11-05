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
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- PROGRAMAÇÃO E ALGORITMOS | Questões 41 a 60 | Difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pa_id, 'Qual é a complexidade temporal, no pior caso, da busca linear em um vetor de n elementos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é a complexidade temporal da busca binária em um vetor ordenado de n elementos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é o resultado de f(4), se f(n) = 1 para n = 0 e f(n) = n * f(n - 1) para n > 0?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'No algoritmo de Euclides, qual é o máximo divisor comum de 48 e 18?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Quantas comparações faz a busca linear, no pior caso, em uma lista com 30 elementos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é a complexidade temporal de dois laços aninhados que percorrem, cada um, n elementos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Considere x ← 1; PARA i DE 1 ATÉ 4 FAÇA x ← 2*x. Qual é o valor final de x?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Na ordenação por seleção (selection sort), qual é a complexidade temporal no pior caso?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é o resultado de 2³ + 3²?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Um algoritmo divide repetidamente uma lista ordenada ao meio para localizar um elemento. Qual técnica utiliza?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Em uma pilha (LIFO), após empilhar A, B e C, qual elemento sai primeiro?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Em uma fila (FIFO), após enfileirar A, B e C, qual elemento sai primeiro?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é o valor de f(5) se f(0)=0, f(1)=1 e f(n)=f(n-1)+f(n-2) para n>=2?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é a complexidade espacial adicional de um algoritmo que usa apenas três variáveis escalares, independentemente de n?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Considere a lista [8, 3, 5, 1]. Após uma passagem completa do bubble sort crescente, da esquerda para a direita, qual é a lista?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é a saída de soma ← 0; PARA i DE 1 ATÉ 5 FAÇA soma ← soma + i, com limites inclusivos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Para verificar se uma sequência de parênteses está corretamente balanceada, qual estrutura de dados é especialmente adequada?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Qual é a condição essencial para que a busca binária produza resultados corretos?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Se um algoritmo executa n operações e depois n² operações, qual é sua complexidade temporal assintótica?', 'DIFICIL', 15, 15),
(@quiz_pa_id, 'Em uma função recursiva, qual é o papel do caso-base?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ==================================================================
-- PROGRAMAÇÃO E ALGORITMOS | Alternativas das questões 41 a 60
-- ==================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 230 | Correta: B
(230, 'O(n²).', FALSE),
(230, 'O(n).', TRUE),
(230, 'O(1).', FALSE),
(230, 'O(log n).', FALSE),

-- Questão 42 | ID 231 | Correta: A
(231, 'O(log n).', TRUE),
(231, 'O(2ⁿ).', FALSE),
(231, 'O(n²).', FALSE),
(231, 'O(n).', FALSE),

-- Questão 43 | ID 232 | Correta: B
(232, '16', FALSE),
(232, '24', TRUE),
(232, '120', FALSE),
(232, '12', FALSE),

-- Questão 44 | ID 233 | Correta: D
(233, '3', FALSE),
(233, '2', FALSE),
(233, '12', FALSE),
(233, '6', TRUE),

-- Questão 45 | ID 234 | Correta: D
(234, '15', FALSE),
(234, '29', FALSE),
(234, '31', FALSE),
(234, '30', TRUE),

-- Questão 46 | ID 235 | Correta: B
(235, 'O(n).', FALSE),
(235, 'O(n²).', TRUE),
(235, 'O(log n).', FALSE),
(235, 'O(1).', FALSE),

-- Questão 47 | ID 236 | Correta: D
(236, '8', FALSE),
(236, '10', FALSE),
(236, '32', FALSE),
(236, '16', TRUE),

-- Questão 48 | ID 237 | Correta: C
(237, 'O(1).', FALSE),
(237, 'O(n).', FALSE),
(237, 'O(n²).', TRUE),
(237, 'O(log n).', FALSE),

-- Questão 49 | ID 238 | Correta: B
(238, '25', FALSE),
(238, '17', TRUE),
(238, '36', FALSE),
(238, '13', FALSE),

-- Questão 50 | ID 239 | Correta: A
(239, 'Busca binária.', TRUE),
(239, 'Ordenação por bolha.', FALSE),
(239, 'Busca linear.', FALSE),
(239, 'Percurso em profundidade.', FALSE),

-- Questão 51 | ID 240 | Correta: A
(240, 'C', TRUE),
(240, 'Nenhum', FALSE),
(240, 'B', FALSE),
(240, 'A', FALSE),

-- Questão 52 | ID 241 | Correta: C
(241, 'Nenhum', FALSE),
(241, 'C', FALSE),
(241, 'A', TRUE),
(241, 'B', FALSE),

-- Questão 53 | ID 242 | Correta: B
(242, '8', FALSE),
(242, '5', TRUE),
(242, '13', FALSE),
(242, '3', FALSE),

-- Questão 54 | ID 243 | Correta: D
(243, 'O(n²).', FALSE),
(243, 'O(log n).', FALSE),
(243, 'O(n).', FALSE),
(243, 'O(1).', TRUE),

-- Questão 55 | ID 244 | Correta: D
(244, '[8, 5, 3, 1]', FALSE),
(244, '[3, 8, 1, 5]', FALSE),
(244, '[1, 3, 5, 8]', FALSE),
(244, '[3, 5, 1, 8]', TRUE),

-- Questão 56 | ID 245 | Correta: C
(245, '20', FALSE),
(245, '10', FALSE),
(245, '15', TRUE),
(245, '25', FALSE),

-- Questão 57 | ID 246 | Correta: C
(246, 'Fila simples.', FALSE),
(246, 'Vetor ordenado por valor.', FALSE),
(246, 'Pilha.', TRUE),
(246, 'Tabela de dispersão obrigatória.', FALSE),

-- Questão 58 | ID 247 | Correta: A
(247, 'A coleção deve estar ordenada conforme o critério de comparação.', TRUE),
(247, 'O número de elementos deve ser par.', FALSE),
(247, 'Todos os elementos devem ser distintos.', FALSE),
(247, 'A coleção deve conter apenas números pares.', FALSE),

-- Questão 59 | ID 248 | Correta: B
(248, 'O(log n).', FALSE),
(248, 'O(n²).', TRUE),
(248, 'O(n).', FALSE),
(248, 'O(1).', FALSE),

-- Questão 60 | ID 249 | Correta: D
(249, 'Eliminar todos os parâmetros da função.', FALSE),
(249, 'Reiniciar o programa indefinidamente.', FALSE),
(249, 'Garantir que nenhuma chamada retorne um valor.', FALSE),
(249, 'Interromper a recursão quando uma condição de parada é alcançada.', TRUE);

-- =================================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE PROGRAMAÇÃO E ALGORITMOS
-- =================================================================

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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
