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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação Web II
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
-- Programação Web II | QUESTÕES 41 A 60 | NÍVEL FÁCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web2_id, 'Em um formulário, qual risco surge ao inserir diretamente texto não confiável com innerHTML?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual abordagem evita que uma busca antiga sobrescreva o resultado de uma busca mais recente?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Em JavaScript, qual será o valor de typeof null?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual será a saída de [1, 2, 3].reduce((acc, n) => acc + n, 0)?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual é o resultado de [...new Set([1, 1, 2, 3, 3])]?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Em uma função de evento, o que representa event.currentTarget?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual problema pode ocorrer quando se adiciona o mesmo ouvinte repetidamente com funções anônimas diferentes?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual é o resultado de Boolean([]) em JavaScript?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual será a saída de console.log(0 ?? 10)?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual será a saída de console.log(0 || 10)?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual prática é apropriada ao renderizar texto recebido de uma API em um elemento HTML?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual é a consequência de usar await fetch(url) sem verificar response.ok?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'O que ocorre ao executar const copia = {...original} em um objeto com objetos aninhados?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual valor resulta de [10, 20, 30].slice(1, 2)?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual será o resultado de ''5'' + 2 em JavaScript?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual será o resultado de Number(''5'') + 2?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual recurso permite interromper uma requisição fetch em andamento?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual é a vantagem de usar debounce em uma busca disparada pela digitação?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Em CSS, qual seletor tem maior especificidade entre os apresentados?', 'DIFICIL', 15, 15),
(@quiz_web2_id, 'Qual prática ajuda a prevenir falhas de acessibilidade em botões que exibem apenas um ícone?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB II | ALTERNATIVAS DAS QUESTÕES 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id, 
    texto_alternativa, 
    is_correta
)
VALUES
-- Questão 41 - ID 470 | Gabarito B
(470, 'Perda do atributo lang da página', FALSE),
(470, 'Execução de HTML ou scripts maliciosos (XSS)', TRUE),
(470, 'Bloqueio obrigatório de todos os cookies', FALSE),
(470, 'Conversão automática do texto em número', FALSE),

-- Questão 42 - ID 471 | Gabarito A
(471, 'Cancelar ou identificar requisições obsoletas antes de atualizar a interface', TRUE),
(471, 'Desabilitar todas as Promises', FALSE),
(471, 'Remover o atributo id do campo de busca', FALSE),
(471, 'Executar as buscas somente com POST', FALSE),

-- Questão 43 - ID 472 | Gabarito C
(472, '"boolean"', FALSE),
(472, '"null"', FALSE),
(472, '"object"', TRUE),
(472, '"undefined"', FALSE),

-- Questão 44 - ID 473 | Gabarito C
(473, '123', FALSE),
(473, '0', FALSE),
(473, '6', TRUE),
(473, '3', FALSE),

-- Questão 45 - ID 474 | Gabarito C
(474, '[1, 1, 2, 3, 3]', FALSE),
(474, '[1, 3]', FALSE),
(474, '[1, 2, 3]', TRUE),
(474, '[2, 3]', FALSE),

-- Questão 46 - ID 475 | Gabarito D
(475, 'O documento HTML completo', FALSE),
(475, 'Sempre o elemento mais interno clicado', FALSE),
(475, 'O elemento que receberá foco após o evento', FALSE),
(475, 'O elemento em que o ouvinte atual foi registrado', TRUE),

-- Questão 47 - ID 476 | Gabarito D
(476, 'O JavaScript passa a ignorar todos os cliques', FALSE),
(476, 'O CSS deixa de ser aplicado', FALSE),
(476, 'O navegador remove automaticamente o elemento', FALSE),
(476, 'A mesma ação pode ser executada várias vezes por evento', TRUE),

-- Questão 48 - ID 477 | Gabarito A
(477, 'true', TRUE),
(477, 'undefined', FALSE),
(477, 'false', FALSE),
(477, 'null', FALSE),

-- Questão 49 - ID 478 | Gabarito D
(478, '10', FALSE),
(478, 'null', FALSE),
(478, 'undefined', FALSE),
(478, '0', TRUE),

-- Questão 50 - ID 479 | Gabarito C
(479, 'false', FALSE),
(479, 'null', FALSE),
(479, '10', TRUE),
(479, '0', FALSE),

-- Questão 51 - ID 480 | Gabarito A
(480, 'Atribuir o texto a textContent', TRUE),
(480, 'Concatenar o texto em innerHTML sem sanitização', FALSE),
(480, 'Inserir o texto como código JavaScript', FALSE),
(480, 'Executar o texto com eval()', FALSE),

-- Questão 52 - ID 481 | Gabarito C
(481, 'O navegador bloqueia qualquer redirecionamento', FALSE),
(481, 'Todas as respostas 404 se tornam 200', FALSE),
(481, 'Respostas HTTP como 404 podem não gerar rejeição automática', TRUE),
(481, 'O corpo da resposta é convertido automaticamente em JSON', FALSE),

-- Questão 53 - ID 482 | Gabarito C
(482, 'O objeto original é apagado', FALSE),
(482, 'Todos os objetos internos são clonados profundamente', FALSE),
(482, 'É criada uma cópia superficial; objetos internos continuam compartilhados', TRUE),
(482, 'A cópia torna-se imutável automaticamente', FALSE),

-- Questão 54 - ID 483 | Gabarito B
(483, '[10, 20]', FALSE),
(483, '[20]', TRUE),
(483, '[20, 30]', FALSE),
(483, '[30]', FALSE),

-- Questão 55 - ID 484 | Gabarito B
(484, 'NaN', FALSE),
(484, '"52"', TRUE),
(484, '7', FALSE),
(484, 'undefined', FALSE),

-- Questão 56 - ID 485 | Gabarito B
(485, 'undefined', FALSE),
(485, '7', TRUE),
(485, '"52"', FALSE),
(485, 'NaN', FALSE),

-- Questão 57 - ID 486 | Gabarito C
(486, 'ResizeObserver', FALSE),
(486, 'IntersectionObserver', FALSE),
(486, 'AbortController', TRUE),
(486, 'MutationObserver', FALSE),

-- Questão 58 - ID 487 | Gabarito A
(487, 'Reduz chamadas ao esperar uma pausa curta na digitação', TRUE),
(487, 'Converte automaticamente GET em POST', FALSE),
(487, 'Garante que todas as teclas gerem uma requisição imediata', FALSE),
(487, 'Elimina a necessidade de tratar erros de rede', FALSE),

-- Questão 59 - ID 488 | Gabarito C
(488, 'section', FALSE),
(488, '*', FALSE),
(488, '#painel', TRUE),
(488, '.painel', FALSE),

-- Questão 60 - ID 489 | Gabarito C
(489, 'Remover a possibilidade de foco por teclado', FALSE),
(489, 'Usar uma div sem papel semântico', FALSE),
(489, 'Fornecer um nome acessível, como aria-label', TRUE),
(489, 'Esconder o botão de leitores de tela', FALSE);

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
LEFT JOIN alternativa a ON a.questao_id = q.id
WHERE q.quiz_id = 23
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
