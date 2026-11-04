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
-- DISCIPLINA: Desenvolvimento de Sistemas I - MÓDULO 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Desenvolvimento de Sistemas I
SET @quiz_ds1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I'
      AND d.modulo = 2
    LIMIT 1
);

-- ================================================================
-- DESENVOLVIMENTO DE SISTEMAS I | QUESTÕES 01 A 20 | NÍVEL FÁCIL
-- ================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds1_id, 'O que é back-end em uma aplicação web?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual é a função de uma rota no servidor web?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'O que significa a sigla API?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Para que serve um banco de dados em uma aplicação back-end?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual é a finalidade de uma variável em um programa?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual comando SQL recupera registros de uma tabela?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'O que é uma função em programação?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual é a principal função de um servidor de aplicações?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual tecnologia permite executar JavaScript no servidor?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'O que é uma requisição HTTP?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual é a função de um parâmetro em uma função?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'Em uma aplicação, o que é autenticação?', 'FACIL', 5, 15),
(@quiz_ds1_id, 'O que é uma exceção em programação?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_ds1_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ==================================================================
-- DESENVOLVIMENTO DE SISTEMAS I | ALTERNATIVAS DAS QUESTÕES 01 A 20
-- ==================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTÃO 01 | ID 550 | GABARITO D
(550, 'A parte que define apenas as cores da interface.', FALSE),
(550, 'O arquivo que contém somente imagens do site.', FALSE),
(550, 'O programa usado exclusivamente para desenhar telas.', FALSE),
(550, 'A parte responsável pelo processamento no servidor e pelas regras de negócio.', TRUE),

-- QUESTÃO 02 | ID 551 | GABARITO A
(551, 'HTTP.', TRUE),
(551, 'SMTP.', FALSE),
(551, 'FTP.', FALSE),
(551, 'SSH.', FALSE),

-- QUESTÃO 03 | ID 552 | GABARITO B
(552, 'PATCH.', FALSE),
(552, 'GET.', TRUE),
(552, 'POST.', FALSE),
(552, 'DELETE.', FALSE),

-- QUESTÃO 04 | ID 553 | GABARITO C
(553, 'MP3.', FALSE),
(553, 'PDF.', FALSE),
(553, 'JSON.', TRUE),
(553, 'PNG.', FALSE),

-- QUESTÃO 05 | ID 554 | GABARITO D
(554, 'Definir a resolução física do monitor.', FALSE),
(554, 'Criar automaticamente a interface visual do navegador.', FALSE),
(554, 'Alterar a velocidade da conexão de internet.', FALSE),
(554, 'Associar uma URL e um método HTTP a um tratamento de requisição.', TRUE),

-- QUESTÃO 06 | ID 555 | GABARITO A
(555, 'Interface de Programação de Aplicações.', TRUE),
(555, 'Acesso Privado à Internet.', FALSE),
(555, 'Aplicação de Processamento Interno.', FALSE),
(555, 'Arquivo de Programação Integrada.', FALSE),

-- QUESTÃO 07 | ID 556 | GABARITO B
(556, '401.', FALSE),
(556, '200.', TRUE),
(556, '404.', FALSE),
(556, '500.', FALSE),

-- QUESTÃO 08 | ID 557 | GABARITO C
(557, '200.', FALSE),
(557, '204.', FALSE),
(557, '404.', TRUE),
(557, '201.', FALSE),

-- QUESTÃO 09 | ID 558 | GABARITO D
(558, 'Substituir o sistema operacional do servidor.', FALSE),
(558, 'Exibir animações diretamente no navegador.', FALSE),
(558, 'Controlar a luminosidade do monitor.', FALSE),
(558, 'Armazenar e recuperar informações de forma organizada.', TRUE),

-- QUESTÃO 10 | ID 559 | GABARITO A
(559, 'Armazenar um valor que pode ser utilizado pelo código.', TRUE),
(559, 'Executar automaticamente todas as funções.', FALSE),
(559, 'Garantir que o servidor nunca falhe.', FALSE),
(559, 'Substituir a necessidade de algoritmos.', FALSE),

-- QUESTÃO 11 | ID 560 | GABARITO B
(560, 'DELETE.', FALSE),
(560, 'SELECT.', TRUE),
(560, 'INSERT.', FALSE),
(560, 'UPDATE.', FALSE),

-- QUESTÃO 12 | ID 561 | GABARITO C
(561, 'HEAD.', FALSE),
(561, 'OPTIONS.', FALSE),
(561, 'POST.', TRUE),
(561, 'GET.', FALSE),

-- QUESTÃO 13 | ID 562 | GABARITO D
(562, 'Um arquivo que necessariamente contém imagens.', FALSE),
(562, 'Uma conexão física entre computadores.', FALSE),
(562, 'Um tipo exclusivo de banco de dados.', FALSE),
(562, 'Um bloco reutilizável de instruções que pode receber argumentos.', TRUE),

-- QUESTÃO 14 | ID 563 | GABARITO A
(563, 'Receber requisições e executar a lógica necessária para produzir respostas.', TRUE),
(563, 'Converter toda página em um arquivo de vídeo.', FALSE),
(563, 'Ajustar automaticamente o brilho do navegador.', FALSE),
(563, 'Substituir todos os computadores clientes.', FALSE),

-- QUESTÃO 15 | ID 564 | GABARITO B
(564, 'SVG.', FALSE),
(564, 'Node.js.', TRUE),
(564, 'CSS.', FALSE),
(564, 'HTML.', FALSE),

-- QUESTÃO 16 | ID 565 | GABARITO C
(565, 'Uma instrução de montagem de hardware.', FALSE),
(565, 'Um arquivo de áudio transmitido pelo monitor.', FALSE),
(565, 'Uma mensagem enviada por um cliente a um servidor para solicitar uma operação.', TRUE),
(565, 'Uma cópia obrigatória de todo o banco de dados.', FALSE),

-- QUESTÃO 17 | ID 566 | GABARITO D
(566, 'Apagar o código-fonte depois da execução.', FALSE),
(566, 'Criar uma tabela sem conexão com o programa.', FALSE),
(566, 'Determinar a cor do navegador.', FALSE),
(566, 'Receber um valor fornecido durante a chamada da função.', TRUE),

-- QUESTÃO 18 | ID 567 | GABARITO A
(567, '201.', TRUE),
(567, '404.', FALSE),
(567, '403.', FALSE),
(567, '503.', FALSE),

-- QUESTÃO 19 | ID 568 | GABARITO B
(568, 'Compactar os arquivos estáticos do site.', FALSE),
(568, 'Verificar a identidade de quem solicita acesso.', TRUE),
(568, 'Definir as cores do formulário de login.', FALSE),
(568, 'Ordenar resultados de uma consulta SQL.', FALSE),

-- QUESTÃO 20 | ID 569 | GABARITO C
(569, 'Uma propriedade visual obrigatória de um botão.', FALSE),
(569, 'Um sinônimo de variável global.', FALSE),
(569, 'Uma condição anormal que pode interromper o fluxo esperado da execução.', TRUE),
(569, 'Uma instrução que sempre retorna verdadeiro.', FALSE);

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
WHERE q.quiz_id = 13
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
