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
-- DISCIPLINA: Programação Web I - Módulo 1
-- DIFICULDADE: FACIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
SET @quiz_web1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação Web I'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- PROGRAMAÇÃO WEB I | QUESTÕES 01 A 20 | FÁCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web1_id, 'O que significa HTML?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual é a função principal do HTML?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento HTML representa um parágrafo?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento cria um título principal na página?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual atributo informa o destino de um link HTML?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento é usado para inserir uma imagem?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual atributo indica o endereço da imagem?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento representa uma lista não ordenada?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento representa um item de lista?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento insere uma quebra de linha?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento HTML identifica o conteúdo principal do documento?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento representa uma área de navegação?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento define o título exibido na aba do navegador?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Em qual seção ficam metadados e referências a estilos?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual atributo fornece texto alternativo para imagens?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento HTML cria um formulário?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento permite digitar texto em um formulário?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento cria um botão clicável?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual declaração indica HTML5 no início do documento?', 'FACIL', 5, 15),
(@quiz_web1_id, 'Qual elemento contém o conteúdo visível da página?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTAR IDs REAIS
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 22
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB I | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 250 | Correta: B
(250, 'Sistema operacional para servidores', FALSE),
(250, 'Linguagem de Marcação de Hipertexto', TRUE),
(250, 'Protocolo de transferência de arquivos', FALSE),
(250, 'Linguagem de programação de banco de dados', FALSE),

-- Questão 02 | ID 251 | Correta: B
(251, 'Definir a velocidade da internet', FALSE),
(251, 'Estruturar o conteúdo de páginas web', TRUE),
(251, 'Gerenciar processos do computador', FALSE),
(251, 'Criptografar o tráfego da rede', FALSE),

-- Questão 03 | ID 252 | Correta: B
(252, '<table>', FALSE),
(252, '<p>', TRUE),
(252, '<head>', FALSE),
(252, '<img>', FALSE),

-- Questão 04 | ID 253 | Correta: A
(253, '<h1>', TRUE),
(253, '<br>', FALSE),
(253, '<span>', FALSE),
(253, '<footer>', FALSE),

-- Questão 05 | ID 254 | Correta: A
(254, 'href', TRUE),
(254, 'class', FALSE),
(254, 'alt', FALSE),
(254, 'src', FALSE),

-- Questão 06 | ID 255 | Correta: B
(255, '<form>', FALSE),
(255, '<img>', TRUE),
(255, '<ul>', FALSE),
(255, '<a>', FALSE),

-- Questão 07 | ID 256 | Correta: C
(256, 'method', FALSE),
(256, 'target', FALSE),
(256, 'src', TRUE),
(256, 'href', FALSE),

-- Questão 08 | ID 257 | Correta: A
(257, '<ul>', TRUE),
(257, '<tr>', FALSE),
(257, '<dl>', FALSE),
(257, '<ol>', FALSE),

-- Questão 09 | ID 258 | Correta: B
(258, '<nav>', FALSE),
(258, '<li>', TRUE),
(258, '<td>', FALSE),
(258, '<meta>', FALSE),

-- Questão 10 | ID 259 | Correta: D
(259, '<section>', FALSE),
(259, '<hr>', FALSE),
(259, '<strong>', FALSE),
(259, '<br>', TRUE),

-- Questão 11 | ID 260 | Correta: D
(260, '<aside>', FALSE),
(260, '<title>', FALSE),
(260, '<head>', FALSE),
(260, '<main>', TRUE),

-- Questão 12 | ID 261 | Correta: D
(261, '<time>', FALSE),
(261, '<small>', FALSE),
(261, '<mark>', FALSE),
(261, '<nav>', TRUE),

-- Questão 13 | ID 262 | Correta: A
(262, '<title>', TRUE),
(262, '<h2>', FALSE),
(262, '<label>', FALSE),
(262, '<header>', FALSE),

-- Questão 14 | ID 263 | Correta: B
(263, '<body>', FALSE),
(263, '<head>', TRUE),
(263, '<main>', FALSE),
(263, '<footer>', FALSE),

-- Questão 15 | ID 264 | Correta: D
(264, 'height', FALSE),
(264, 'src', FALSE),
(264, 'width', FALSE),
(264, 'alt', TRUE),

-- Questão 16 | ID 265 | Correta: B
(265, '<article>', FALSE),
(265, '<form>', TRUE),
(265, '<fieldset>', FALSE),
(265, '<figure>', FALSE),

-- Questão 17 | ID 266 | Correta: D
(266, '<output>', FALSE),
(266, '<legend>', FALSE),
(266, '<progress>', FALSE),
(266, '<input>', TRUE),

-- Questão 18 | ID 267 | Correta: B
(267, '<address>', FALSE),
(267, '<button>', TRUE),
(267, '<summary>', FALSE),
(267, '<caption>', FALSE),

-- Questão 19 | ID 268 | Correta: D
(268, '<meta html="5">', FALSE),
(268, '<doctype version="html">', FALSE),
(268, '<html version="5">', FALSE),
(268, '<!DOCTYPE html>', TRUE),

-- Questão 20 | ID 269 | Correta: B
(269, '<head>', FALSE),
(269, '<body>', TRUE),
(269, '<link>', FALSE),
(269, '<meta>', FALSE);

-- =================================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE PROGRAMAÇÃO WEB I
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
WHERE q.quiz_id = 22
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
