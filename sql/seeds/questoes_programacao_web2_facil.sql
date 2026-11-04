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
-- DISCIPLINA: Programação Web II - Módulo 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar automaticamente o quiz de Programação Web II
SET @quiz_web2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação Web II'
      AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- Programação Web II | QUESTÕES 01 A 20 | NÍVEL FÁCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web2_id, 'Qual linguagem é utilizada para adicionar interatividade a uma página web?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual objeto representa o documento HTML no navegador?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método seleciona um elemento pelo seu identificador (id)?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual evento é disparado quando o usuário clica em um botão?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual propriedade altera o conteúdo textual de um elemento sem interpretar HTML?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual palavra-chave declara uma variável que pode receber outro valor?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual operador compara valor e tipo em JavaScript?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método exibe uma mensagem no console do navegador?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual tipo de dado representa verdadeiro ou falso?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual estrutura executa um bloco apenas quando uma condição é verdadeira?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método transforma uma string JSON válida em objeto JavaScript?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método transforma um objeto JavaScript em texto JSON?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual API do navegador permite armazenar pares chave-valor que persistem após fechar a aba?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual propriedade CSS permite organizar elementos em linhas e colunas com Grid?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual unidade CSS é relativa ao tamanho da fonte do elemento raiz?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual atributo de um campo de formulário indica que seu preenchimento é obrigatório?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método registra um ouvinte de eventos em um elemento?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual função nativa realiza uma requisição HTTP e retorna uma Promise?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual método de array cria um novo array a partir da transformação de cada item?', 'FACIL', 5, 15),
(@quiz_web2_id, 'Qual elemento HTML associa uma legenda a um campo por meio do atributo for?', 'FACIL', 5, 15);

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
WHERE quiz_id = 23
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB II | ALTERNATIVAS DAS QUESTÕES 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 430 | Gabarito C
(430, 'SQL', FALSE),
(430, 'HTML', FALSE),
(430, 'JavaScript', TRUE),
(430, 'CSS', FALSE),

-- Questão 02 | ID 431 | Gabarito C
(431, 'localStorage', FALSE),
(431, 'navigator', FALSE),
(431, 'document', TRUE),
(431, 'console', FALSE),

-- Questão 03 | ID 432 | Gabarito D
(432, 'document.getElementsByClassName()', FALSE),
(432, 'document.querySelectorAll(''p'')', FALSE),
(432, 'document.createElement()', FALSE),
(432, 'document.getElementById()', TRUE),

-- Questão 04 | ID 433 | Gabarito B
(433, 'load', FALSE),
(433, 'click', TRUE),
(433, 'scroll', FALSE),
(433, 'resize', FALSE),

-- Questão 05 | ID 434 | Gabarito C
(434, 'style', FALSE),
(434, 'innerHTML', FALSE),
(434, 'textContent', TRUE),
(434, 'className', FALSE),

-- Questão 06 | ID 435 | Gabarito D
(435, 'return', FALSE),
(435, 'import', FALSE),
(435, 'const', FALSE),
(435, 'let', TRUE),

-- Questão 07 | ID 436 | Gabarito C
(436, '=', FALSE),
(436, '!=', FALSE),
(436, '===', TRUE),
(436, '==', FALSE),

-- Questão 08 | ID 437 | Gabarito C
(437, 'alert()', FALSE),
(437, 'prompt()', FALSE),
(437, 'console.log()', TRUE),
(437, 'document.write()', FALSE),

-- Questão 09 | ID 438 | Gabarito D
(438, 'undefined', FALSE),
(438, 'string', FALSE),
(438, 'number', FALSE),
(438, 'boolean', TRUE),

-- Questão 10 | ID 439 | Gabarito A
(439, 'if', TRUE),
(439, 'import', FALSE),
(439, 'for', FALSE),
(439, 'function', FALSE),

-- Questão 11 | ID 440 | Gabarito C
(440, 'JSON.stringify()', FALSE),
(440, 'Object.keys()', FALSE),
(440, 'JSON.parse()', TRUE),
(440, 'Array.from()', FALSE),

-- Questão 12 | ID 441 | Gabarito C
(441, 'encodeURI()', FALSE),
(441, 'JSON.parse()', FALSE),
(441, 'JSON.stringify()', TRUE),
(441, 'parseInt()', FALSE),

-- Questão 13 | ID 442 | Gabarito D
(442, 'console', FALSE),
(442, 'history', FALSE),
(442, 'sessionStorage', FALSE),
(442, 'localStorage', TRUE),

-- Questão 14 | ID 443 | Gabarito C
(443, 'position: static', FALSE),
(443, 'display: inline', FALSE),
(443, 'display: grid', TRUE),
(443, 'visibility: hidden', FALSE),

-- Questão 15 | ID 444 | Gabarito D
(444, 'px', FALSE),
(444, 'cm', FALSE),
(444, 'vh', FALSE),
(444, 'rem', TRUE),

-- Questão 16 | ID 445 | Gabarito C
(445, 'hidden', FALSE),
(445, 'readonly', FALSE),
(445, 'required', TRUE),
(445, 'disabled', FALSE),

-- Questão 17 | ID 446 | Gabarito C
(446, 'setAttribute()', FALSE),
(446, 'remove()', FALSE),
(446, 'addEventListener()', TRUE),
(446, 'appendChild()', FALSE),

-- Questão 18 | ID 447 | Gabarito D
(447, 'setTimeout()', FALSE),
(447, 'parseFloat()', FALSE),
(447, 'confirm()', FALSE),
(447, 'fetch()', TRUE),

-- Questão 19 | ID 448 | Gabarito D
(448, 'shift()', FALSE),
(448, 'push()', FALSE),
(448, 'pop()', FALSE),
(448, 'map()', TRUE),

-- Questão 20 | ID 449 | Gabarito D
(449, 'span', FALSE),
(449, 'div', FALSE),
(449, 'strong', FALSE),
(449, 'label', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS
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
WHERE q.quiz_id = 23
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
