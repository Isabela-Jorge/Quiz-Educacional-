-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas I - Módulo 1 / 2
-- TOTAL: 60 questões (20 Fácil, 20 Médio, 20 Difícil)
-- DISTRIBUIÇÃO: 1-20 Fácil (5 pts) | 21-40 Médio (10 pts) | 41-60 Difícil (15 pts)
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas I
SET @quiz_ds_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome LIKE '%Desenvolvimento de Sistemas%'
    LIMIT 1
);

-- ============================================================
-- DS I | Questões 01 a 20 | Nível fácil (5 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
(@quiz_ds_id, 'O que é back-end em uma aplicação web?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual protocolo é normalmente usado para comunicação entre navegador e servidor web?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Em uma API REST, qual método HTTP é geralmente usado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual formato é muito utilizado para trocar dados entre uma API e seu cliente?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual é a função de uma rota no servidor web?', 'FACIL', 5, 15),
(@quiz_ds_id, 'O que significa a sigla API?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual código HTTP indica que uma requisição foi atendida com sucesso?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual código HTTP indica que o recurso solicitado não foi encontrado?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Para que serve um banco de dados em uma aplicação back-end?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual é a finalidade de uma variável em um programa?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual comando SQL recupera registros de uma tabela?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual método HTTP é normalmente usado para enviar dados de criação de um recurso?', 'FACIL', 5, 15),
(@quiz_ds_id, 'O que é uma função em programação?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual é a principal função de um servidor de aplicações?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual tecnologia permite executar JavaScript no servidor?', 'FACIL', 5, 15),
(@quiz_ds_id, 'O que é uma requisição HTTP?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual é a função de um parâmetro em uma função?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Qual código HTTP é comumente retornado após a criação bem-sucedida de um recurso?', 'FACIL', 5, 15),
(@quiz_ds_id, 'Em uma aplicação, o que é autenticação?', 'FACIL', 5, 15),
(@quiz_ds_id, 'O que é uma exceção em programação?', 'FACIL', 5, 15);

-- ALTERNATIVAS QUESTÕES 01 a 20 (FÁCIL)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q01 (Gabarito: D)
(ID_Q1, 'A parte que define apenas as cores da interface.', FALSE),
(ID_Q1, 'O arquivo que contém somente imagens do site.', FALSE),
(ID_Q1, 'O programa usado exclusivamente para desenhar telas.', FALSE),
(ID_Q1, 'A parte responsável pelo processamento no servidor e pelas regras de negócio.', TRUE),

-- Q02 (Gabarito: A)
(ID_Q2, 'HTTP.', TRUE),
(ID_Q2, 'SMTP.', FALSE),
(ID_Q2, 'FTP.', FALSE),
(ID_Q2, 'SSH.', FALSE),

-- Q03 (Gabarito: B)
(ID_Q3, 'PATCH.', FALSE),
(ID_Q3, 'GET.', TRUE),
(ID_Q3, 'POST.', FALSE),
(ID_Q3, 'DELETE.', FALSE),

-- Q04 (Gabarito: C)
(ID_Q4, 'MP3.', FALSE),
(ID_Q4, 'PDF.', FALSE),
(ID_Q4, 'JSON.', TRUE),
(ID_Q4, 'PNG.', FALSE),

-- Q05 (Gabarito: D)
(ID_Q5, 'Definir a resolução física do monitor.', FALSE),
(ID_Q5, 'Criar automaticamente a interface visual do navegador.', FALSE),
(ID_Q5, 'Alterar a velocidade da conexão de internet.', FALSE),
(ID_Q5, 'Associar uma URL e um método HTTP a um tratamento de requisição.', TRUE),

-- Q06 (Gabarito: A)
(ID_Q6, 'Interface de Programação de Aplicações.', TRUE),
(ID_Q6, 'Acesso Privado à Internet.', FALSE),
(ID_Q6, 'Aplicação de Processamento Interno.', FALSE),
(ID_Q6, 'Arquivo de Programação Integrada.', FALSE),

-- Q07 (Gabarito: B)
(ID_Q7, '401.', FALSE),
(ID_Q7, '200.', TRUE),
(ID_Q7, '404.', FALSE),
(ID_Q7, '500.', FALSE),

-- Q08 (Gabarito: C)
(ID_Q8, '200.', FALSE),
(ID_Q8, '204.', FALSE),
(ID_Q8, '404.', TRUE),
(ID_Q8, '201.', FALSE),

-- Q09 (Gabarito: D)
(ID_Q9, 'Substituir o sistema operacional do servidor.', FALSE),
(ID_Q9, 'Exibir animações diretamente no navegador.', FALSE),
(ID_Q9, 'Controlar a luminosidade do monitor.', FALSE),
(ID_Q9, 'Armazenar e recuperar informações de forma organizada.', TRUE),

-- Q10 (Gabarito: A)
(ID_Q10, 'Armazenar um valor que pode ser utilizado pelo código.', TRUE),
(ID_Q10, 'Executar automaticamente todas as funções.', FALSE),
(ID_Q10, 'Garantir que o servidor nunca falhe.', FALSE),
(ID_Q10, 'Substituir a necessidade de algoritmos.', FALSE),

-- Q11 (Gabarito: B)
(ID_Q11, 'DELETE.', FALSE),
(ID_Q11, 'SELECT.', TRUE),
(ID_Q11, 'INSERT.', FALSE),
(ID_Q11, 'UPDATE.', FALSE),

-- Q12 (Gabarito: C)
(ID_Q12, 'HEAD.', FALSE),
(ID_Q12, 'OPTIONS.', FALSE),
(ID_Q12, 'POST.', TRUE),
(ID_Q12, 'GET.', FALSE),

-- Q13 (Gabarito: D)
(ID_Q13, 'Um arquivo que necessariamente contém imagens.', FALSE),
(ID_Q13, 'Uma conexão física entre computadores.', FALSE),
(ID_Q13, 'Um tipo exclusivo de banco de dados.', FALSE),
(ID_Q13, 'Um bloco reutilizável de instruções que pode receber argumentos.', TRUE),

-- Q14 (Gabarito: A)
(ID_Q14, 'Receber requisições e executar a lógica necessária para produzir respostas.', TRUE),
(ID_Q14, 'Converter toda página em um arquivo de vídeo.', FALSE),
(ID_Q14, 'Ajustar automaticamente o brilho do navegador.', FALSE),
(ID_Q14, 'Substituir todos os computadores clientes.', FALSE),

-- Q15 (Gabarito: B)
(ID_Q15, 'SVG.', FALSE),
(ID_Q15, 'Node.js.', TRUE),
(ID_Q15, 'CSS.', FALSE),
(ID_Q15, 'HTML.', FALSE),

-- Q16 (Gabarito: C)
(ID_Q16, 'Uma instrução de montagem de hardware.', FALSE),
(ID_Q16, 'Um arquivo de áudio transmitido pelo monitor.', FALSE),
(ID_Q16, 'Uma mensagem enviada por um cliente a um servidor para solicitar uma operação.', TRUE),
(ID_Q16, 'Uma cópia obrigatória de todo o banco de dados.', FALSE),

-- Q17 (Gabarito: D)
(ID_Q17, 'Apagar o código-fonte depois da execução.', FALSE),
(ID_Q17, 'Criar uma tabela sem conexão com o programa.', FALSE),
(ID_Q17, 'Determinar a cor do navegador.', FALSE),
(ID_Q17, 'Receber um valor fornecido durante a chamada da função.', TRUE),

-- Q18 (Gabarito: A)
(ID_Q18, '201.', TRUE),
(ID_Q18, '404.', FALSE),
(ID_Q18, '403.', FALSE),
(ID_Q18, '503.', FALSE),

-- Q19 (Gabarito: B)
(ID_Q19, 'Compactar os arquivos estáticos do site.', FALSE),
(ID_Q19, 'Verificar a identidade de quem solicita acesso.', TRUE),
(ID_Q19, 'Definir as cores do formulário de login.', FALSE),
(ID_Q19, 'Ordenar resultados de uma consulta SQL.', FALSE),

-- Q20 (Gabarito: C)
(ID_Q20, 'Uma propriedade visual obrigatória de um botão.', FALSE),
(ID_Q20, 'Um sinônimo de variável global.', FALSE),
(ID_Q20, 'Uma condição anormal que pode interromper o fluxo esperado da execução.', TRUE),
(ID_Q20, 'Uma instrução que sempre retorna verdadeiro.', FALSE);




-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES Fáceis DE DS
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