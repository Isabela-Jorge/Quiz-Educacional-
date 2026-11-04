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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar automaticamente o quiz
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
-- Programação Web II | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web2_id, 'Qual é o efeito de event.preventDefault() no envio de um formulário?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual seletor CSS identifica um elemento com id igual a menu?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual é o resultado de [1, 2, 3].filter(n => n > 1)?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual método adiciona um novo elemento ao final de um nó pai no DOM?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Para que serve o atributo alt em uma imagem HTML?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Em uma função async, qual expressão espera a resolução de uma Promise?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'O que significa o status HTTP 404 em uma resposta?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual cabeçalho HTTP informa o tipo de mídia do corpo da resposta?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual abordagem ajuda a adaptar o layout a telas menores?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual é a principal diferença entre sessionStorage e localStorage?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual método de array retorna o primeiro elemento que satisfaz uma condição?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual opção adiciona ou remove uma classe CSS sem substituir as demais classes?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Por que é recomendado usar encodeURIComponent() em valores inseridos em parâmetros de URL?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual método HTTP é normalmente utilizado para obter dados sem solicitar alteração do recurso?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Em fetch(), qual propriedade da Response indica se o status está na faixa de sucesso 200–299?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual recurso CSS define variáveis reutilizáveis como --cor-primaria?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual sintaxe adiciona um atributo data-id="7" ao HTML para leitura via dataset?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual método converte uma NodeList em um array comum?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual técnica evita repetir código ao responder a cliques de vários itens de uma lista?', 'MEDIO', 10, 15),
(@quiz_web2_id, 'Qual é o resultado de Promise.all() quando uma das Promises fornecidas é rejeitada?', 'MEDIO', 10, 15);


-- ============================================================
-- CONSULTAR IDs DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 23
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB II | ALTERNATIVAS DAS QUESTÕES 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 450 | Gabarito C
(450, 'Apaga todos os campos do formulário', FALSE),
(450, 'Envia a requisição duas vezes', FALSE),
(450, 'Impede a ação padrão do navegador', TRUE),
(450, 'Remove os ouvintes de eventos', FALSE),

-- Questão 22 | ID 451 | Gabarito C
(451, '.menu', FALSE),
(451, 'menu', FALSE),
(451, '#menu', TRUE),
(451, '*menu', FALSE),

-- Questão 23 | ID 452 | Gabarito B
(452, '[true, true]', FALSE),
(452, '[2, 3]', TRUE),
(452, '[1, 2, 3]', FALSE),
(452, '[1]', FALSE),

-- Questão 24 | ID 453 | Gabarito A
(453, 'appendChild()', TRUE),
(453, 'cloneNode(false)', FALSE),
(453, 'removeChild()', FALSE),
(453, 'getAttribute()', FALSE),

-- Questão 25 | ID 454 | Gabarito D
(454, 'Alterar o formato do arquivo', FALSE),
(454, 'Definir a largura obrigatória da imagem', FALSE),
(454, 'Carregar JavaScript ao clicar', FALSE),
(454, 'Fornecer texto alternativo à imagem', TRUE),

-- Questão 26 | ID 455 | Gabarito D
(455, 'yield', FALSE),
(455, 'break', FALSE),
(455, 'typeof', FALSE),
(455, 'await', TRUE),

-- Questão 27 | ID 456 | Gabarito A
(456, 'Recurso solicitado não encontrado', TRUE),
(456, 'Servidor criou um novo recurso', FALSE),
(456, 'Requisição concluída com sucesso', FALSE),
(456, 'Usuário autenticado com sucesso', FALSE),

-- Questão 28 | ID 457 | Gabarito C
(457, 'Cache-Control', FALSE),
(457, 'User-Agent', FALSE),
(457, 'Content-Type', TRUE),
(457, 'Accept-Language', FALSE),

-- Questão 29 | ID 458 | Gabarito D
(458, 'Remoção do viewport', FALSE),
(458, 'Desativação de eventos', FALSE),
(458, 'Uso exclusivo de larguras fixas', FALSE),
(458, 'Media queries CSS', TRUE),

-- Questão 30 | ID 459 | Gabarito B
(459, 'localStorage é apagado a cada recarregamento', FALSE),
(459, 'sessionStorage dura, em geral, até o fim da sessão da aba', TRUE),
(459, 'sessionStorage é compartilhado entre todos os domínios', FALSE),
(459, 'localStorage aceita somente números', FALSE),

-- Questão 31 | ID 460 | Gabarito C
(460, 'reduce()', FALSE),
(460, 'filter()', FALSE),
(460, 'find()', TRUE),
(460, 'every()', FALSE),

-- Questão 32 | ID 461 | Gabarito B
(461, 'element.className = ''''', FALSE),
(461, 'element.classList.toggle()', TRUE),
(461, 'document.write()', FALSE),
(461, 'element.remove()', FALSE),

-- Questão 33 | ID 462 | Gabarito C
(462, 'Para criptografar o conteúdo da requisição', FALSE),
(462, 'Para converter a resposta em JSON', FALSE),
(462, 'Para codificar caracteres especiais de um componente da URL', TRUE),
(462, 'Para substituir autenticação por token', FALSE),

-- Questão 34 | ID 463 | Gabarito D
(463, 'PATCH', FALSE),
(463, 'DELETE', FALSE),
(463, 'POST', FALSE),
(463, 'GET', TRUE),

-- Questão 35 | ID 464 | Gabarito D
(464, 'redirected', FALSE),
(464, 'type', FALSE),
(464, 'bodyUsed', FALSE),
(464, 'ok', TRUE),

-- Questão 36 | ID 465 | Gabarito B
(465, 'Keyframes', FALSE),
(465, 'Custom properties', TRUE),
(465, 'Pseudo-elementos', FALSE),
(465, 'Media types', FALSE),

-- Questão 37 | ID 466 | Gabarito B
(466, 'dataset-id="7"', FALSE),
(466, 'data-id="7"', TRUE),
(466, 'meta-id="7"', FALSE),
(466, 'id-data="7"', FALSE),

-- Questão 38 | ID 467 | Gabarito C
(467, 'JSON.parse()', FALSE),
(467, 'String.raw()', FALSE),
(467, 'Array.from()', TRUE),
(467, 'Object.freeze()', FALSE),

-- Questão 39 | ID 468 | Gabarito B
(468, 'Recarregar a página após cada clique', FALSE),
(468, 'Delegação de eventos no elemento pai', TRUE),
(468, 'Um setInterval por item', FALSE),
(468, 'Duplicar todo o HTML no JavaScript', FALSE),

-- Questão 40 | ID 469 | Gabarito B
(469, 'O navegador cancela todas as requisições automaticamente', FALSE),
(469, 'A Promise resultante é rejeitada', TRUE),
(469, 'A função retorna sempre um array vazio', FALSE),
(469, 'Todas as Promises passam a ser resolvidas', FALSE);

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
WHERE q.quiz_id = 23
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
