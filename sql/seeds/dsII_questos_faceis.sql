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
--    WHERE quiz_id = @quiz_ds2_id
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
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas II
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II' 
       OR d.nome REGEXP 'DS II([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- DS II | Questões 01 a 20 | Nível fácil
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
(@quiz_ds2_id, 'Qual é a finalidade principal de uma API?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP costuma ser usado para criar um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que indica o código HTTP 200?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que indica o código HTTP 404?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Em uma API, o que é um endpoint?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual é a função de um banco de dados em uma aplicação?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que representa o corpo de uma requisição HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual código HTTP normalmente indica que um recurso foi criado?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa CRUD?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que é uma chave primária em uma tabela relacional?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual é a finalidade da autenticação?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa API RESTful?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Para que serve a documentação de uma API?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que é persistência de dados?', 'FACIL', 5, 15);

-- ============================================================
-- DS II | Alternativas das questões 01 a 20
-- (Nota: Ajuste os IDs da coluna questao_id conforme a sua base local gerada)
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 1 | Correta: D
(1, 'Substituir o sistema operacional.', FALSE),
(1, 'Eliminar a necessidade de redes.', FALSE),
(1, 'Criar somente interfaces gráficas.', FALSE),
(1, 'Permitir a comunicação entre sistemas por meio de interfaces definidas.', TRUE),

-- Questão 2 | Correta: C
(2, 'High Transfer Text Program.', FALSE),
(2, 'Hyperlink Technical Process.', FALSE),
(2, 'Hypertext Transfer Protocol.', TRUE),
(2, 'Host Transfer Terminal Protocol.', FALSE),

-- Questão 3 | Correta: B
(3, 'POST.', FALSE),
(3, 'GET.', TRUE),
(3, 'PATCH.', FALSE),
(3, 'DELETE.', FALSE),

-- Questão 4 | Correta: B
(4, 'GET.', FALSE),
(4, 'POST.', TRUE),
(4, 'HEAD.', FALSE),
(4, 'OPTIONS.', FALSE),

-- Questão 5 | Correta: A
(5, 'JSON.', TRUE),
(5, 'PNG.', FALSE),
(5, 'MP3.', FALSE),
(5, 'PDF.', FALSE),

-- Questão 6 | Correta: D
(6, 'O recurso não foi encontrado.', FALSE),
(6, 'O servidor não conseguiu processar a solicitação.', FALSE),
(6, 'A autenticação é obrigatória.', FALSE),
(6, 'A requisição foi processada com sucesso.', TRUE),

-- Questão 7 | Correta: C
(7, 'O recurso foi criado.', FALSE),
(7, 'A requisição foi bem-sucedida.', FALSE),
(7, 'O recurso solicitado não foi encontrado.', TRUE),
(7, 'O servidor está redirecionando a solicitação.', FALSE),

-- Questão 8 | Correta: C
(8, 'Um arquivo de imagem obrigatório.', FALSE),
(8, 'Um tipo de memória RAM.', FALSE),
(8, 'Um endereço que disponibiliza uma operação ou recurso.', TRUE),
(8, 'Um programa antivírus.', FALSE),

-- Questão 9 | Correta: B
(9, 'Substituir todas as regras de negócio.', FALSE),
(9, 'Armazenar e permitir consultar dados de forma organizada.', TRUE),
(9, 'Executar somente páginas HTML.', FALSE),
(9, 'Garantir acesso à internet sem rede.', FALSE),

-- Questão 10 | Correta: A
(10, 'Postman.', TRUE),
(10, 'Paint.', FALSE),
(10, 'Calculadora.', FALSE),
(10, 'Bloco de Notas, sem extensões.', FALSE),

-- Questão 11 | Correta: D
(11, 'User-Agent.', FALSE),
(11, 'Accept-Language.', FALSE),
(11, 'Cache-Control.', FALSE),
(11, 'Content-Type.', TRUE),

-- Questão 12 | Correta: D
(12, 'O endereço IP físico do computador.', FALSE),
(12, 'A senha do servidor obrigatoriamente.', FALSE),
(12, 'A porta USB utilizada.', FALSE),
(12, 'Os dados enviados na mensagem, quando existentes.', TRUE),

-- Questão 13 | Correta: C
(13, '301 Moved Permanently.', FALSE),
(13, '404 Not Found.', FALSE),
(13, '201 Created.', TRUE),
(13, '500 Internal Server Error.', FALSE),

-- Questão 14 | Correta: B
(14, 'GET.', FALSE),
(14, 'DELETE.', TRUE),
(14, 'TRACE.', FALSE),
(14, 'HEAD.', FALSE),

-- Questão 15 | Correta: A
(15, 'Criar, ler, atualizar e excluir dados.', TRUE),
(15, 'Copiar, reiniciar, utilizar e depurar.', FALSE),
(15, 'Conectar, renderizar, unificar e distribuir.', FALSE),
(15, 'Compilar, registrar, atualizar e desenhar.', FALSE),

-- Questão 16 | Correta: A
(16, 'Um atributo ou conjunto de atributos que identifica cada registro.', TRUE),
(16, 'Uma senha de acesso ao sistema.', FALSE),
(16, 'Um campo obrigatoriamente textual.', FALSE),
(16, 'Um endereço de uma API externa.', FALSE),

-- Questão 17 | Correta: D
(17, 'Determinar apenas as cores da interface.', FALSE),
(17, 'Comprimir arquivos de imagem.', FALSE),
(17, 'Ordenador resultados de uma consulta SQL.', FALSE),
(17, 'Verificar a identidade de quem solicita acesso.', TRUE),

-- Questão 18 | Correta: C
(18, 'Uma API que obrigatoriamente utiliza XML.', FALSE),
(18, 'Uma API que funciona somente em redes locais.', FALSE),
(18, 'Uma API projetada segundo restrições arquiteturais REST.', TRUE),
(18, 'Uma API sem recursos identificáveis.', FALSE),

-- Questão 19 | Correta: B
(19, 'Substituir o banco de dados.', FALSE),
(19, 'Descrever operações, parâmetros, respostas e regras de uso.', TRUE),
(19, 'Eliminar a necessidade de testes.', FALSE),
(19, 'Criar automaticamente o hardware do servidor.', FALSE),

-- Questão 20 | Correta: B
(20, 'Apagar todos os dados ao encerrar a aplicação.', FALSE),
(20, 'Manter dados disponíveis além da execução imediata do programa.', TRUE),
(20, 'Exibir apenas mensagens temporárias.', FALSE),
(20, 'Transformar todo arquivo em imagem.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE DS II
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
WHERE q.quiz_id = @quiz_ds2_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
