-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas I - 3º Módulo
-- TOTAL: 20 Questões Fáceis (5 pts, 15 seg)
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas I
SET @quiz_ds_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I' 
       OR d.nome REGEXP 'DS I([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- Inserção das Questões Fáceis (Evitando duplicações)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'O que é back-end em uma aplicação web?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'O que é back-end em uma aplicação web?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a função de uma rota no servidor web?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a função de uma rota no servidor web?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'O que significa a sigla API?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'O que significa a sigla API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual código HTTP indica que uma requisição foi atendida com sucesso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual código HTTP indica que o recurso solicitado não foi encontrado?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Para que serve um banco de dados em uma aplicação back-end?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Para que serve um banco de dados em uma aplicação back-end?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a finalidade de uma variável em um programa?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a finalidade de uma variável em um programa?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual comando SQL recupera registros de uma tabela?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual comando SQL recupera registros de uma tabela?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'O que é uma função em programação?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'O que é uma função em programação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a principal função de um servidor de aplicações?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a principal função de um servidor de aplicações?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual tecnologia permite executar JavaScript no servidor?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual tecnologia permite executar JavaScript no servidor?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'O que é uma requisição HTTP?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'O que é uma requisição HTTP?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a função de um parâmetro em uma função?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a função de um parâmetro em uma função?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma aplicação, o que é autenticação?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma aplicação, o que é autenticação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'O que é uma exceção em programação?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'O que é uma exceção em programação?');


-- ============================================================
-- INSERÇÃO DAS ALTERNATIVAS USANDO O ENUNCIADO COMO REFERÊNCIA
-- ============================================================

INSERT INTO alternativa (questao_id, texto_alternativa, is_correta)
SELECT q.id, t.texto, t.correta
FROM questao q
JOIN (
    -- Q01
    SELECT 'O que é back-end em uma aplicação web?' AS enun, 'A parte que define apenas as cores da interface.' AS texto, FALSE AS correta UNION ALL
    SELECT 'O que é back-end em uma aplicação web?', 'O arquivo que contém somente imagens do site.', FALSE UNION ALL
    SELECT 'O que é back-end em uma aplicação web?', 'O programa usado exclusivamente para desenhar telas.', FALSE UNION ALL
    SELECT 'O que é back-end em uma aplicação web?', 'A parte responsável pelo processamento no servidor e pelas regras de negócio.', TRUE UNION ALL
    
    -- Q02
    SELECT 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'HTTP.', TRUE UNION ALL
    SELECT 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'SMTP.', FALSE UNION ALL
    SELECT 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'FTP.', FALSE UNION ALL
    SELECT 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'SSH.', FALSE UNION ALL
    
    -- Q03
    SELECT 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'PATCH.', FALSE UNION ALL
    SELECT 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'GET.', TRUE UNION ALL
    SELECT 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'POST.', FALSE UNION ALL
    SELECT 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'DELETE.', FALSE UNION ALL
    
    -- Q04
    SELECT 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'MP3.', FALSE UNION ALL
    SELECT 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'PDF.', FALSE UNION ALL
    SELECT 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'JSON.', TRUE UNION ALL
    SELECT 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'PNG.', FALSE UNION ALL
    
    -- Q05
    SELECT 'Qual é a função de uma rota no servidor web?', 'Definir a resolução física do monitor.', FALSE UNION ALL
    SELECT 'Qual é a função de uma rota no servidor web?', 'Criar automaticamente a interface visual do navegador.', FALSE UNION ALL
    SELECT 'Qual é a função de uma rota no servidor web?', 'Alterar a velocidade da conexão de internet.', FALSE UNION ALL
    SELECT 'Qual é a função de uma rota no servidor web?', 'Associar uma URL e um método HTTP a um tratamento de requisição.', TRUE UNION ALL
    
    -- Q06
    SELECT 'O que significa a sigla API?', 'Interface de Programação de Aplicações.', TRUE UNION ALL
    SELECT 'O que significa a sigla API?', 'Acesso Privado à Internet.', FALSE UNION ALL
    SELECT 'O que significa a sigla API?', 'Aplicação de Processamento Interno.', FALSE UNION ALL
    SELECT 'O que significa a sigla API?', 'Arquivo de Programação Integrada.', FALSE UNION ALL
    
    -- Q07
    SELECT 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', '401.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', '200.', TRUE UNION ALL
    SELECT 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', '404.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', '500.', FALSE UNION ALL
    
    -- Q08
    SELECT 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', '200.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', '204.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', '404.', TRUE UNION ALL
    SELECT 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', '201.', FALSE UNION ALL
    
    -- Q09
    SELECT 'Para que serve um banco de dados em uma aplicação back-end?', 'Substituir o sistema operacional do servidor.', FALSE UNION ALL
    SELECT 'Para que serve um banco de dados em uma aplicação back-end?', 'Exibir animações diretamente no navegador.', FALSE UNION ALL
    SELECT 'Para que serve um banco de dados em uma aplicação back-end?', 'Controlar a luminosidade do monitor.', FALSE UNION ALL
    SELECT 'Para que serve um banco de dados em uma aplicação back-end?', 'Armazenar e recuperar informações de forma organizada.', TRUE UNION ALL
    
    -- Q10
    SELECT 'Qual é a finalidade de uma variável em um programa?', 'Armazenar um valor que pode ser utilizado pelo código.', TRUE UNION ALL
    SELECT 'Qual é a finalidade de uma variável em um programa?', 'Executar automaticamente todas as funções.', FALSE UNION ALL
    SELECT 'Qual é a finalidade de uma variável em um programa?', 'Garantir que o servidor nunca falhe.', FALSE UNION ALL
    SELECT 'Qual é a finalidade de uma variável em um programa?', 'Substituir a necessidade de algoritmos.', FALSE UNION ALL
    
    -- Q11
    SELECT 'Qual comando SQL recupera registros de uma tabela?', 'DELETE.', FALSE UNION ALL
    SELECT 'Qual comando SQL recupera registros de uma tabela?', 'SELECT.', TRUE UNION ALL
    SELECT 'Qual comando SQL recupera registros de uma tabela?', 'INSERT.', FALSE UNION ALL
    SELECT 'Qual comando SQL recupera registros de uma tabela?', 'UPDATE.', FALSE UNION ALL
    
    -- Q12
    SELECT 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'HEAD.', FALSE UNION ALL
    SELECT 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'OPTIONS.', FALSE UNION ALL
    SELECT 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'POST.', TRUE UNION ALL
    SELECT 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'GET.', FALSE UNION ALL
    
    -- Q13
    SELECT 'O que é uma função em programação?', 'Um arquivo que necessariamente contém imagens.', FALSE UNION ALL
    SELECT 'O que é uma função em programação?', 'Uma conexão física entre computadores.', FALSE UNION ALL
    SELECT 'O que é uma função em programação?', 'Um tipo exclusivo de banco de dados.', FALSE UNION ALL
    SELECT 'O que é uma função em programação?', 'Um bloco reutilizável de instruções que pode receber argumentos.', TRUE UNION ALL
    
    -- Q14
    SELECT 'Qual é a principal função de um servidor de aplicações?', 'Receber requisições e executar a lógica necessária para produzir respostas.', TRUE UNION ALL
    SELECT 'Qual é a principal função de um servidor de aplicações?', 'Converter toda página em um arquivo de vídeo.', FALSE UNION ALL
    SELECT 'Qual é a principal função de um servidor de aplicações?', 'Ajustar automaticamente o brilho do navegador.', FALSE UNION ALL
    SELECT 'Qual é a principal função de um servidor de aplicações?', 'Substituir todos os computadores clientes.', FALSE UNION ALL
    
    -- Q15
    SELECT 'Qual tecnologia permite executar JavaScript no servidor?', 'SVG.', FALSE UNION ALL
    SELECT 'Qual tecnologia permite executar JavaScript no servidor?', 'Node.js.', TRUE UNION ALL
    SELECT 'Qual tecnologia permite executar JavaScript no servidor?', 'CSS.', FALSE UNION ALL
    SELECT 'Qual tecnologia permite executar JavaScript no servidor?', 'HTML.', FALSE UNION ALL
    
    -- Q16
    SELECT 'O que é uma requisição HTTP?', 'Uma instrução de montagem de hardware.', FALSE UNION ALL
    SELECT 'O que é uma requisição HTTP?', 'Um arquivo de áudio transmitido pelo monitor.', FALSE UNION ALL
    SELECT 'O que é uma requisição HTTP?', 'Uma mensagem enviada por um cliente a um servidor para solicitar uma operação.', TRUE UNION ALL
    SELECT 'O que é uma requisição HTTP?', 'Uma cópia obrigatória de todo o banco de dados.', FALSE UNION ALL
    
    -- Q17
    SELECT 'Qual é a função de um parâmetro em uma função?', 'Apagar o código-fonte depois da execução.', FALSE UNION ALL
    SELECT 'Qual é a função de um parâmetro em uma função?', 'Criar uma tabela sem conexão com o programa.', FALSE UNION ALL
    SELECT 'Qual é a função de um parâmetro em uma função?', 'Determinar a cor do navegador.', FALSE UNION ALL
    SELECT 'Qual é a função de um parâmetro em uma função?', 'Receber um valor fornecido durante a chamada da função.', TRUE UNION ALL
    
    -- Q18
    SELECT 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', '201.', TRUE UNION ALL
    SELECT 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', '404.', FALSE UNION ALL
    SELECT 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', '403.', FALSE UNION ALL
    SELECT 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', '503.', FALSE UNION ALL
    
    -- Q19
    SELECT 'Em uma aplicação, o que é autenticação?', 'Compactar os arquivos estáticos do site.', FALSE UNION ALL
    SELECT 'Em uma aplicação, o que é autenticação?', 'Verificar a identidade de quem solicita acesso.', TRUE UNION ALL
    SELECT 'Em uma aplicação, o que é autenticação?', 'Definir as cores do formulário de login.', FALSE UNION ALL
    SELECT 'Em uma aplicação, o que é autenticação?', 'Ordenar resultados de uma consulta SQL.', FALSE UNION ALL
    
    -- Q20
    SELECT 'O que é uma exceção em programação?', 'Uma propriedade visual obrigatória de um botão.', FALSE UNION ALL
    SELECT 'O que é uma exceção em programação?', 'Um sinônimo de variável global.', FALSE UNION ALL
    SELECT 'O que é uma exceção em programação?', 'Uma condição anormal que pode interromper o fluxo esperado da execução.', TRUE UNION ALL
    SELECT 'O que é uma exceção em programação?', 'Uma instrução que sempre retorna verdadeiro.', FALSE UNION ALL
) t ON t.enun = q.enunciado
WHERE q.quiz_id = @quiz_ds_id
  AND NOT EXISTS (
      SELECT 1 FROM alternativa a WHERE a.questao_id = q.id AND a.texto_alternativa = t.texto
  );


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
WHERE q.quiz_id = @quiz_ds_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
