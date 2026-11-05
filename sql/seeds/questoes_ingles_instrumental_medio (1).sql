
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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- INGLÊS INSTRUMENTAL | Questões 21 a 40 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ingles_id, 'Leia: “Please restart your computer after installing the update.” O que deve ser feito após a instalação?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Do not share your password with anyone.” Qual é a orientação?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “The file was uploaded successfully”, o arquivo foi:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “If the problem persists, contact technical support.” Em que condição deve-se procurar suporte?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual alternativa traduz “The application requires an internet connection”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “Users must accept the terms before proceeding”, “must” expressa:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Make sure the device is plugged in.” O usuário deve verificar se o dispositivo está:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'No contexto “The server is currently unavailable”, qual é a situação do servidor?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Back up your files before resetting the device.” Qual é a sequência recomendada?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “This feature is enabled by default”, a funcionalidade está:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual tradução preserva o sentido de “The password must contain at least eight characters”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Although the download completed, the installation failed.” O que ocorreu?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em um tutorial, “Select the folder where you want to store the file” orienta a:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “The website collects data to improve user experience.” Para que o site coleta dados?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “You should verify the sender before opening the link”, “should” indica:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Unless you save your changes, they will be lost.” O que evita a perda das alterações?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “The new version is more reliable than the previous one”, o comparativo indica:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Access is restricted to authorized personnel.” Quem pode acessar?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual é a função de “however” em “The tool is free; however, registration is required”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “The issue has been resolved.” Qual é o estado atual do problema?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- INGLÊS INSTRUMENTAL | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 150 | Correta: B
(150, 'Desligar o roteador', FALSE),
(150, 'Reiniciar o computador', TRUE),
(150, 'Excluir a atualização', FALSE),
(150, 'Trocar a senha', FALSE),

-- Questão 22 | ID 151 | Correta: A
(151, 'Não compartilhar a senha com ninguém', TRUE),
(151, 'Enviar a senha ao suporte', FALSE),
(151, 'Alterar a senha diariamente', FALSE),
(151, 'Anotar a senha na tela', FALSE),

-- Questão 23 | ID 152 | Correta: D
(152, 'Baixado com erro', FALSE),
(152, 'Excluído permanentemente', FALSE),
(152, 'Renomeado automaticamente', FALSE),
(152, 'Enviado com sucesso', TRUE),

-- Questão 24 | ID 153 | Correta: C
(153, 'Antes de ligar o equipamento', FALSE),
(153, 'Sempre que houver atualização', FALSE),
(153, 'Se o problema continuar', TRUE),
(153, 'Somente após trocar o computador', FALSE),

-- Questão 25 | ID 154 | Correta: B
(154, 'O aplicativo dispensa conexão com a internet.', FALSE),
(154, 'O aplicativo exige conexão com a internet.', TRUE),
(154, 'A conexão será removida pelo aplicativo.', FALSE),
(154, 'O aplicativo bloqueia toda conexão com a internet.', FALSE),

-- Questão 26 | ID 155 | Correta: A
(155, 'Obrigação', TRUE),
(155, 'Possibilidade remota', FALSE),
(155, 'Preferência', FALSE),
(155, 'Proibição', FALSE),

-- Questão 27 | ID 156 | Correta: D
(156, 'Desconectado da rede', FALSE),
(156, 'Com a tela bloqueada', FALSE),
(156, 'Com o volume reduzido', FALSE),
(156, 'Conectado à tomada', TRUE),

-- Questão 28 | ID 157 | Correta: C
(157, 'Está disponível para todos', FALSE),
(157, 'Foi instalado recentemente', FALSE),
(157, 'Está indisponível no momento', TRUE),
(157, 'Está realizando uma cópia concluída', FALSE),

-- Questão 29 | ID 158 | Correta: B
(158, 'Redefinir o dispositivo antes de salvar arquivos', FALSE),
(158, 'Fazer backup antes de redefinir o dispositivo', TRUE),
(158, 'Apagar os arquivos e depois fazer backup', FALSE),
(158, 'Ignorar os arquivos antes de redefinir', FALSE),

-- Questão 30 | ID 159 | Correta: A
(159, 'Ativada por padrão', TRUE),
(159, 'Desativada permanentemente', FALSE),
(159, 'Disponível apenas mediante pagamento', FALSE),
(159, 'Oculta por falha', FALSE),

-- Questão 31 | ID 160 | Correta: D
(160, 'A senha deve conter exatamente oito números.', FALSE),
(160, 'A senha pode ter no máximo oito caracteres.', FALSE),
(160, 'A senha não pode conter letras.', FALSE),
(160, 'A senha deve conter pelo menos oito caracteres.', TRUE),

-- Questão 32 | ID 161 | Correta: C
(161, 'A instalação terminou antes do download', FALSE),
(161, 'O download e a instalação falharam', FALSE),
(161, 'O download terminou, mas a instalação falhou', TRUE),
(161, 'A instalação foi concluída com sucesso', FALSE),

-- Questão 33 | ID 162 | Correta: B
(162, 'Apagar a pasta que contém o arquivo', FALSE),
(162, 'Escolher a pasta de destino do arquivo', TRUE),
(162, 'Compactar todas as pastas', FALSE),
(162, 'Compartilhar a pasta com todos', FALSE),

-- Questão 34 | ID 163 | Correta: A
(163, 'Para melhorar a experiência do usuário', TRUE),
(163, 'Para impedir a navegação', FALSE),
(163, 'Para desligar o dispositivo', FALSE),
(163, 'Para remover todas as contas', FALSE),

-- Questão 35 | ID 164 | Correta: D
(164, 'Certeza de conclusão', FALSE),
(164, 'Ação já executada', FALSE),
(164, 'Impossibilidade', FALSE),
(164, 'Recomendação', TRUE),

-- Questão 36 | ID 165 | Correta: C
(165, 'Fechar o programa sem salvar', FALSE),
(165, 'Reiniciar o computador imediatamente', FALSE),
(165, 'Salvar as alterações', TRUE),
(165, 'Desconectar o teclado', FALSE),

-- Questão 37 | ID 166 | Correta: B
(166, 'Menor confiabilidade da nova versão', FALSE),
(166, 'Maior confiabilidade da nova versão', TRUE),
(166, 'Confiabilidade idêntica', FALSE),
(166, 'Ausência de versões anteriores', FALSE),

-- Questão 38 | ID 167 | Correta: A
(167, 'Somente pessoas autorizadas', TRUE),
(167, 'Qualquer visitante', FALSE),
(167, 'Somente usuários desconectados', FALSE),
(167, 'Todos os usuários anônimos', FALSE),

-- Questão 39 | ID 168 | Correta: D
(168, 'Indicar causa direta', FALSE),
(168, 'Enumerar etapas', FALSE),
(168, 'Concluir uma sequência temporal', FALSE),
(168, 'Introduzir contraste', TRUE),

-- Questão 40 | ID 169 | Correta: C
(169, 'Será analisado amanhã', FALSE),
(169, 'Ainda não foi identificado', FALSE),
(169, 'Foi resolvido', TRUE),
(169, 'Está sendo criado', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE INGLÊS INSTRUMENTAL
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
