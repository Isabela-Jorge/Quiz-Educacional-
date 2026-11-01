-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script correspondem ao banco
-- de dados original do projeto.
--
-- Como a tabela questao utiliza AUTO_INCREMENT, os IDs
-- podem ser diferentes em outros bancos de dados.
--
-- ORIENTAÇÕES PARA EXECUÇÃO:
-- 1. Execute primeiro o INSERT das questões.
-- 2. Consulte os IDs gerados:
--
--    SELECT id, enunciado
--    FROM questao
--    WHERE quiz_id = @quiz_ds1_id
--    ORDER BY id;
--
-- 3. Confira os IDs das questões cadastradas.
-- 4. Se necessário, atualize os IDs no INSERT das
--    alternativas antes de executá-lo.
-- 5. Execute o INSERT das alternativas.
--
-- IMPORTANTE:
-- Não execute novamente os INSERTs caso os registros
-- já estejam cadastrados, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas I - 2º Módulo
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas I
SET @quiz_ds1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I' 
       OR d.nome REGEXP 'DS I([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- DS I | Questões 01 a 20 | Nível fácil
-- 5 pontos | 15 segundos
-- ============================================================

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
-- DS I | Alternativas das questões 01 a 20
-- (Nota: Ajuste os IDs da coluna questao_id conforme a sua base local gerada)
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 1 | Correta: D
(1, 'A parte que define apenas as cores da interface.', FALSE),
(1, 'O arquivo que contém somente imagens do site.', FALSE),
(1, 'O programa usado exclusivamente para desenhar telas.', FALSE),
(1, 'A parte responsável pelo processamento no servidor e pelas regras de negócio.', TRUE),

-- Questão 2 | Correta: A
(2, 'HTTP.', TRUE),
(2, 'SMTP.', FALSE),
(2, 'FTP.', FALSE),
(2, 'SSH.', FALSE),

-- Questão 3 | Correta: B
(3, 'PATCH.', FALSE),
(3, 'GET.', TRUE),
(3, 'POST.', FALSE),
(3, 'DELETE.', FALSE),

-- Questão 4 | Correta: C
(4, 'MP3.', FALSE),
(4, 'PDF.', FALSE),
(4, 'JSON.', TRUE),
(4, 'PNG.', FALSE),

-- Questão 5 | Correta: D
(5, 'Definir a resolução física do monitor.', FALSE),
(5, 'Criar automaticamente a interface visual do navegador.', FALSE),
(5, 'Alterar a velocidade da conexão de internet.', FALSE),
(5, 'Associar uma URL e um método HTTP a um tratamento de requisição.', TRUE),

-- Questão 6 | Correta: A
(6, 'Interface de Programação de Aplicações.', TRUE),
(6, 'Acesso Privado à Internet.', FALSE),
(6, 'Aplicação de Processamento Interno.', FALSE),
(6, 'Arquivo de Programação Integrada.', FALSE),

-- Questão 7 | Correta: B
(7, '401.', FALSE),
(7, '200.', TRUE),
(7, '404.', FALSE),
(7, '500.', FALSE),

-- Questão 8 | Correta: C
(8, '200.', FALSE),
(8, '204.', FALSE),
(8, '404.', TRUE),
(8, '201.', FALSE),

-- Questão 9 | Correta: D
(9, 'Substituir o sistema operacional do servidor.', FALSE),
(9, 'Exibir animações diretamente no navegador.', FALSE),
(9, 'Controlar a luminosidade do monitor.', FALSE),
(9, 'Armazenar e recuperar informações de forma organizada.', TRUE),

-- Questão 10 | Correta: A
(10, 'Armazenar um valor que pode ser utilizado pelo código.', TRUE),
(10, 'Executar automaticamente todas as funções.', FALSE),
(10, 'Garantir que o servidor nunca falhe.', FALSE),
(10, 'Substituir a necessidade de algoritmos.', FALSE),

-- Questão 11 | Correta: B
(11, 'DELETE.', FALSE),
(11, 'SELECT.', TRUE),
(11, 'INSERT.', FALSE),
(11, 'UPDATE.', FALSE),

-- Questão 12 | Correta: C
(12, 'HEAD.', FALSE),
(12, 'OPTIONS.', FALSE),
(12, 'POST.', TRUE),
(12, 'GET.', FALSE),

-- Questão 13 | Correta: D
(13, 'Um arquivo que necessariamente contém imagens.', FALSE),
(13, 'Uma conexão física entre computadores.', FALSE),
(13, 'Um tipo exclusivo de banco de dados.', FALSE),
(13, 'Um bloco reutilizável de instruções que pode receber argumentos.', TRUE),

-- Questão 14 | Correta: A
(14, 'Receber requisições e executar a lógica necessária para produzir respostas.', TRUE),
(14, 'Converter toda página em um arquivo de vídeo.', FALSE),
(14, 'Ajustar automaticamente o brilho do navegador.', FALSE),
(14, 'Substituir todos os computadores clientes.', FALSE),

-- Questão 15 | Correta: B
(15, 'SVG.', FALSE),
(15, 'Node.js.', TRUE),
(15, 'CSS.', FALSE),
(15, 'HTML.', FALSE),

-- Questão 16 | Correta: C
(16, 'Uma instrução de montagem de hardware.', FALSE),
(16, 'Um arquivo de áudio transmitido pelo monitor.', FALSE),
(16, 'Uma mensagem enviada por um cliente a um servidor para solicitar uma operação.', TRUE),
(16, 'Uma cópia obrigatória de todo o banco de dados.', FALSE),

-- Questão 17 | Correta: D
(17, 'Apagar o código-fonte depois da execução.', FALSE),
(17, 'Criar uma tabela sem conexão com o programa.', FALSE),
(17, 'Determinar a cor do navegador.', FALSE),
(17, 'Receber um valor fornecido durante a chamada da função.', TRUE),

-- Questão 18 | Correta: A
(18, '201.', TRUE),
(18, '404.', FALSE),
(18, '403.', FALSE),
(18, '503.', FALSE),

-- Questão 19 | Correta: B
(19, 'Compactar os arquivos estáticos do site.', FALSE),
(19, 'Verificar a identidade de quem solicita acesso.', TRUE),
(19, 'Definir as cores do formulário de login.', FALSE),
(19, 'Ordenar resultados de uma consulta SQL.', FALSE),

-- Questão 20 | Correta: C
(20, 'Uma propriedade visual obrigatória de um botão.', FALSE),
(20, 'Um sinônimo de variável global.', FALSE),
(20, 'Uma condição anormal que pode interromper o fluxo esperado da execução.', TRUE),
(20, 'Uma instrução que sempre retorna verdadeiro.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE DS I
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
WHERE q.quiz_id = @quiz_ds1_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
