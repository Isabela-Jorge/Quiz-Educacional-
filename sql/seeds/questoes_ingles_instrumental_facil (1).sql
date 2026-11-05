
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
-- DISCIPLINA: Inglês Instrumental - Módulo 1
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Inglês Instrumental
SET @quiz_ingles_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Inglês Instrumental'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- INGLÊS INSTRUMENTAL | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ingles_id, 'Em um manual, o termo “save” indica qual ação?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual é a tradução adequada de “keyboard” em informática?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma interface, “settings” geralmente significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O botão “cancel” normalmente permite:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em instruções de software, “click” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual palavra inglesa significa “senha”?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em um formulário, “required field” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O termo “download” corresponde a:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma mensagem, “error” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual expressão indica que um dispositivo está conectado?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em “Open the file”, o verbo “open” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma página de cadastro, “first name” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'A palavra “update”, em um aplicativo, indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual expressão significa “tente novamente”?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em um site, “search” identifica a função de:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'A palavra “warning” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma conta de usuário, “sign in” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em “The system is ready”, “ready” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O termo “attachment”, em um e-mail, significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual palavra inglesa indica “impressora”?', 'FACIL', 5, 15);

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
WHERE quiz_id = 16
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- INGLÊS INSTRUMENTAL | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 130 | Correta: B
(130, 'Imprimir', FALSE),
(130, 'Salvar', TRUE),
(130, 'Excluir', FALSE),
(130, 'Fechar', FALSE),

-- Questão 02 | ID 131 | Correta: A
(131, 'Teclado', TRUE),
(131, 'Tela', FALSE),
(131, 'Mouse', FALSE),
(131, 'Impressora', FALSE),

-- Questão 03 | ID 132 | Correta: D
(132, 'Downloads', FALSE),
(132, 'Arquivos', FALSE),
(132, 'Mensagens', FALSE),
(132, 'Configurações', TRUE),

-- Questão 04 | ID 133 | Correta: C
(133, 'Confirmar uma compra', FALSE),
(133, 'Salvar um arquivo', FALSE),
(133, 'Cancelar uma operação', TRUE),
(133, 'Atualizar uma página', FALSE),

-- Questão 05 | ID 134 | Correta: B
(134, 'Arrastar', FALSE),
(134, 'Clicar', TRUE),
(134, 'Copiar', FALSE),
(134, 'Digitar', FALSE),

-- Questão 06 | ID 135 | Correta: A
(135, 'Password', TRUE),
(135, 'Username', FALSE),
(135, 'Folder', FALSE),
(135, 'Window', FALSE),

-- Questão 07 | ID 136 | Correta: D
(136, 'Campo oculto', FALSE),
(136, 'Campo desativado', FALSE),
(136, 'Campo opcional', FALSE),
(136, 'Campo obrigatório', TRUE),

-- Questão 08 | ID 137 | Correta: C
(137, 'Enviar um arquivo', FALSE),
(137, 'Excluir um arquivo', FALSE),
(137, 'Baixar um arquivo', TRUE),
(137, 'Renomear um arquivo', FALSE),

-- Questão 09 | ID 138 | Correta: B
(138, 'Sucesso', FALSE),
(138, 'Erro', TRUE),
(138, 'Ajuda', FALSE),
(138, 'Aviso de conclusão', FALSE),

-- Questão 10 | ID 139 | Correta: A
(139, 'Connected', TRUE),
(139, 'Deleted', FALSE),
(139, 'Expired', FALSE),
(139, 'Disabled', FALSE),

-- Questão 11 | ID 140 | Correta: D
(140, 'Salvar', FALSE),
(140, 'Fechar', FALSE),
(140, 'Mover', FALSE),
(140, 'Abrir', TRUE),

-- Questão 12 | ID 141 | Correta: C
(141, 'Sobrenome', FALSE),
(141, 'Nome de usuário', FALSE),
(141, 'Primeiro nome', TRUE),
(141, 'Nome da empresa', FALSE),

-- Questão 13 | ID 142 | Correta: B
(142, 'Desinstalação', FALSE),
(142, 'Atualização', TRUE),
(142, 'Impressão', FALSE),
(142, 'Tradução', FALSE),

-- Questão 14 | ID 143 | Correta: A
(143, 'Try again', TRUE),
(143, 'Turn off', FALSE),
(143, 'Sign out', FALSE),
(143, 'Go back', FALSE),

-- Questão 15 | ID 144 | Correta: D
(144, 'Compartilhar', FALSE),
(144, 'Arquivar', FALSE),
(144, 'Imprimir', FALSE),
(144, 'Pesquisar', TRUE),

-- Questão 16 | ID 145 | Correta: C
(145, 'Confirmação', FALSE),
(145, 'Arquivo', FALSE),
(145, 'Aviso ou alerta', TRUE),
(145, 'Permissão', FALSE),

-- Questão 17 | ID 146 | Correta: B
(146, 'Criar uma pasta', FALSE),
(146, 'Entrar na conta', TRUE),
(146, 'Alterar o idioma', FALSE),
(146, 'Desligar o aparelho', FALSE),

-- Questão 18 | ID 147 | Correta: A
(147, 'Pronto', TRUE),
(147, 'Lento', FALSE),
(147, 'Vazio', FALSE),
(147, 'Bloqueado', FALSE),

-- Questão 19 | ID 148 | Correta: D
(148, 'Assunto', FALSE),
(148, 'Destinatário', FALSE),
(148, 'Rascunho', FALSE),
(148, 'Anexo', TRUE),

-- Questão 20 | ID 149 | Correta: C
(149, 'Scanner', FALSE),
(149, 'Speaker', FALSE),
(149, 'Printer', TRUE),
(149, 'Router', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE INGLÊS INSTRUMENTAL
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
WHERE q.quiz_id = 16
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;