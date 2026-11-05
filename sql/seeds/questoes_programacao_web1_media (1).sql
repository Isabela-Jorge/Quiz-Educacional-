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
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação Web I
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
-- PROGRAMAÇÃO WEB I | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web1_id, 'Para associar um rótulo a um campo de formulário, qual combinação é adequada?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual é a diferença entre id e class em HTML?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Para tornar um campo obrigatório antes do envio, qual atributo HTML pode ser usado?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual atributo de input informa o tipo de dado esperado, como email?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual método de formulário coloca os parâmetros normalmente na URL da requisição?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual atributo do form indica para onde os dados serão enviados?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento agrupa campos relacionados de um formulário?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento associa uma legenda a um fieldset?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento é mais adequado para uma tabela de dados tabulares?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento representa uma célula de cabeçalho de tabela?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual atributo permite a uma célula ocupar várias colunas?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual é a finalidade do atributo lang no elemento html?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual metatag é usada para definir a codificação UTF-8?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual é a função da metatag viewport em páginas responsivas?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento semântico representa conteúdo independente, como uma postagem?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento semântico representa uma seção temática do documento?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual elemento representa o rodapé de uma página ou seção?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual atributo em um link pode abrir o destino em nova aba ou janela?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual é a finalidade de rel="noopener" em um link com target="_blank"?', 'MEDIO', 10, 15),
(@quiz_web1_id, 'Qual é a diferença básica entre caminhos relativos e absolutos em URLs?', 'MEDIO', 10, 15);

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
WHERE quiz_id = 22
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB I | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 270 | Correta: C
(270, 'alt no label igual ao type do input', FALSE),
(270, 'class no label igual ao name do input', FALSE),
(270, 'for no label igual ao id do input', TRUE),
(270, 'href no label igual ao src do input', FALSE),

-- Questão 22 | ID 271 | Correta: D
(271, 'id define o idioma; class define a codificação', FALSE),
(271, 'id é obrigatório em todos os elementos; class é proibido', FALSE),
(271, 'id só funciona em imagens; class só funciona em links', FALSE),
(271, 'id identifica um elemento de forma única no documento; class pode agrupar vários', TRUE),

-- Questão 23 | ID 272 | Correta: D
(272, 'hidden', FALSE),
(272, 'readonly', FALSE),
(272, 'multiple', FALSE),
(272, 'required', TRUE),

-- Questão 24 | ID 273 | Correta: D
(273, 'action', FALSE),
(273, 'scope', FALSE),
(273, 'for', FALSE),
(273, 'type', TRUE),

-- Questão 25 | ID 274 | Correta: D
(274, 'PUT', FALSE),
(274, 'POST', FALSE),
(274, 'PATCH', FALSE),
(274, 'GET', TRUE),

-- Questão 26 | ID 275 | Correta: A
(275, 'action', TRUE),
(275, 'alt', FALSE),
(275, 'rel', FALSE),
(275, 'download', FALSE),

-- Questão 27 | ID 276 | Correta: A
(276, '<fieldset>', TRUE),
(276, '<source>', FALSE),
(276, '<abbr>', FALSE),
(276, '<template>', FALSE),

-- Questão 28 | ID 277 | Correta: B
(277, '<caption>', FALSE),
(277, '<legend>', TRUE),
(277, '<label>', FALSE),
(277, '<figcaption>', FALSE),

-- Questão 29 | ID 278 | Correta: D
(278, '<div>', FALSE),
(278, '<nav>', FALSE),
(278, '<article>', FALSE),
(278, '<table>', TRUE),

-- Questão 30 | ID 279 | Correta: D
(279, '<tbody>', FALSE),
(279, '<td>', FALSE),
(279, '<tr>', FALSE),
(279, '<th>', TRUE),

-- Questão 31 | ID 280 | Correta: D
(280, 'rowspan', FALSE),
(280, 'scope', FALSE),
(280, 'headers', FALSE),
(280, 'colspan', TRUE),

-- Questão 32 | ID 281 | Correta: D
(281, 'Definir a linguagem de programação do servidor', FALSE),
(281, 'Determinar a resolução da tela', FALSE),
(281, 'Escolher o navegador padrão', FALSE),
(281, 'Informar o idioma principal do documento', TRUE),

-- Questão 33 | ID 282 | Correta: C
(282, '<meta name="html" content="UTF-8">', FALSE),
(282, '<meta lang="UTF-8">', FALSE),
(282, '<meta charset="UTF-8">', TRUE),
(282, '<meta encoding="ASCII">', FALSE),

-- Questão 34 | ID 283 | Correta: C
(283, 'Carregar imagens em segundo plano', FALSE),
(283, 'Substituir a folha de estilos', FALSE),
(283, 'Orientar o dimensionamento da área de visualização em dispositivos', TRUE),
(283, 'Impedir o uso de dispositivos móveis', FALSE),

-- Questão 35 | ID 284 | Correta: C
(284, '<span>', FALSE),
(284, '<br>', FALSE),
(284, '<article>', TRUE),
(284, '<b>', FALSE),

-- Questão 36 | ID 285 | Correta: D
(285, '<em>', FALSE),
(285, '<input>', FALSE),
(285, '<img>', FALSE),
(285, '<section>', TRUE),

-- Questão 37 | ID 286 | Correta: D
(286, '<label>', FALSE),
(286, '<main>', FALSE),
(286, '<figure>', FALSE),
(286, '<footer>', TRUE),

-- Questão 38 | ID 287 | Correta: D
(287, 'rel="open"', FALSE),
(287, 'src="_blank"', FALSE),
(287, 'method="new"', FALSE),
(287, 'target="_blank"', TRUE),

-- Questão 39 | ID 288 | Correta: A
(288, 'Impedir que a página aberta acesse window.opener em navegadores compatíveis', TRUE),
(288, 'Obrigar a página a usar HTTPS', FALSE),
(288, 'Ocultar o endereço de destino', FALSE),
(288, 'Fazer o link funcionar sem internet', FALSE),

-- Questão 40 | ID 289 | Correta: D
(289, 'Relativos sempre usam HTTPS; absolutos usam HTTP', FALSE),
(289, 'Relativos são exclusivos de imagens; absolutos de textos', FALSE),
(289, 'Relativos não podem apontar para arquivos HTML', FALSE),
(289, 'Relativos dependem de uma base; absolutos incluem esquema e endereço completo', TRUE);

-- ==============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE PROGRAMAÇÃO WEB I
-- ==============================================================

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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
