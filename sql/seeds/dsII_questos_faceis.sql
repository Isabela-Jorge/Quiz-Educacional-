-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- TOTAL: 60 questões (20 Fácil, 20 Médio, 20 Difícil)
-- DISTRIBUIÇÃO: 1-20 Fácil (5 pts) | 21-40 Médio (10 pts) | 41-60 Difícil (15 pts)
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas II
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome LIKE '%Desenvolvimento de Sistemas II%' OR d.nome LIKE '%DS II%'
    LIMIT 1
);

-- ============================================================
-- DS II | Questões 01 a 20 | Nível fácil (5 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
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

-- ALTERNATIVAS QUESTÕES 01 a 20 (FÁCIL)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q01 (Gabarito: D)
(ID_Q1, 'Substituir o sistema operacional.', FALSE),
(ID_Q1, 'Eliminar a necessidade de redes.', FALSE),
(ID_Q1, 'Criar somente interfaces gráficas.', FALSE),
(ID_Q1, 'Permitir a comunicação entre sistemas por meio de interfaces definidas.', TRUE),

-- Q02 (Gabarito: C)
(ID_Q2, 'High Transfer Text Program.', FALSE),
(ID_Q2, 'Hyperlink Technical Process.', FALSE),
(ID_Q2, 'Hypertext Transfer Protocol.', TRUE),
(ID_Q2, 'Host Transfer Terminal Protocol.', FALSE),

-- Q03 (Gabarito: B)
(ID_Q3, 'POST.', FALSE),
(ID_Q3, 'GET.', TRUE),
(ID_Q3, 'PATCH.', FALSE),
(ID_Q3, 'DELETE.', FALSE),

-- Q04 (Gabarito: B)
(ID_Q4, 'GET.', FALSE),
(ID_Q4, 'POST.', TRUE),
(ID_Q4, 'HEAD.', FALSE),
(ID_Q4, 'OPTIONS.', FALSE),

-- Q05 (Gabarito: A)
(ID_Q5, 'JSON.', TRUE),
(ID_Q5, 'PNG.', FALSE),
(ID_Q5, 'MP3.', FALSE),
(ID_Q5, 'PDF.', FALSE),

-- Q06 (Gabarito: D)
(ID_Q6, 'O recurso não foi encontrado.', FALSE),
(ID_Q6, 'O servidor não conseguiu processar a solicitação.', FALSE),
(ID_Q6, 'A autenticação é obrigatória.', FALSE),
(ID_Q6, 'A requisição foi processada com sucesso.', TRUE),

-- Q07 (Gabarito: C)
(ID_Q7, 'O recurso foi criado.', FALSE),
(ID_Q7, 'A requisição foi bem-sucedida.', FALSE),
(ID_Q7, 'O recurso solicitado não foi encontrado.', TRUE),
(ID_Q7, 'O servidor está redirecionando a solicitação.', FALSE),

-- Q08 (Gabarito: C)
(ID_Q8, 'Um arquivo de imagem obrigatório.', FALSE),
(ID_Q8, 'Um tipo de memória RAM.', FALSE),
(ID_Q8, 'Um endereço que disponibiliza uma operação ou recurso.', TRUE),
(ID_Q8, 'Um programa antivírus.', FALSE),

-- Q09 (Gabarito: B)
(ID_Q9, 'Substituir todas as regras de negócio.', FALSE),
(ID_Q9, 'Armazenar e permitir consultar dados de forma organizada.', TRUE),
(ID_Q9, 'Executar somente páginas HTML.', FALSE),
(ID_Q9, 'Garantir acesso à internet sem rede.', FALSE),

-- Q10 (Gabarito: A)
(ID_Q10, 'Postman.', TRUE),
(ID_Q10, 'Paint.', FALSE),
(ID_Q10, 'Calculadora.', FALSE),
(ID_Q10, 'Bloco de Notas, sem extensões.', FALSE),

-- Q11 (Gabarito: D)
(ID_Q11, 'User-Agent.', FALSE),
(ID_Q11, 'Accept-Language.', FALSE),
(ID_Q11, 'Cache-Control.', FALSE),
(ID_Q11, 'Content-Type.', TRUE),

-- Q12 (Gabarito: D)
(ID_Q12, 'O endereço IP físico do computador.', FALSE),
(ID_Q12, 'A senha do servidor obrigatoriamente.', FALSE),
(ID_Q12, 'A porta USB utilizada.', FALSE),
(ID_Q12, 'Os dados enviados na mensagem, quando existentes.', TRUE),

-- Q13 (Gabarito: C)
(ID_Q13, '301 Moved Permanently.', FALSE),
(ID_Q13, '404 Not Found.', FALSE),
(ID_Q13, '201 Created.', TRUE),
(ID_Q13, '500 Internal Server Error.', FALSE),

-- Q14 (Gabarito: B)
(ID_Q14, 'GET.', FALSE),
(ID_Q14, 'DELETE.', TRUE),
(ID_Q14, 'TRACE.', FALSE),
(ID_Q14, 'HEAD.', FALSE),

-- Q15 (Gabarito: A)
(ID_Q15, 'Criar, ler, atualizar e excluir dados.', TRUE),
(ID_Q15, 'Copiar, reiniciar, utilizar e depurar.', FALSE),
(ID_Q15, 'Conectar, renderizar, unificar e distribuir.', FALSE),
(ID_Q15, 'Compilar, registrar, atualizar e desenhar.', FALSE),

-- Q16 (Gabarito: A)
(ID_Q16, 'Um atributo ou conjunto de atributos que identifica cada registro.', TRUE),
(ID_Q16, 'Uma senha de acesso ao sistema.', FALSE),
(ID_Q16, 'Um campo obrigatoriamente textual.', FALSE),
(ID_Q16, 'Um endereço de uma API externa.', FALSE),

-- Q17 (Gabarito: D)
(ID_Q17, 'Determinar apenas as cores da interface.', FALSE),
(ID_Q17, 'Comprimir arquivos de imagem.', FALSE),
(ID_Q17, 'Ordenador resultados de uma consulta SQL.', FALSE),
(ID_Q17, 'Verificar a identidade de quem solicita acesso.', TRUE),

-- Q18 (Gabarito: C)
(ID_Q18, 'Uma API que obrigatoriamente utiliza XML.', FALSE),
(ID_Q18, 'Uma API que funciona somente em redes locais.', FALSE),
(ID_Q18, 'Uma API projetada segundo restrições arquiteturais REST.', TRUE),
(ID_Q18, 'Uma API sem recursos identificáveis.', FALSE),

-- Q19 (Gabarito: B)
(ID_Q19, 'Substituir o banco de dados.', FALSE),
(ID_Q19, 'Descrever operações, parâmetros, respostas e regras de uso.', TRUE),
(ID_Q19, 'Eliminar a necessidade de testes.', FALSE),
(ID_Q19, 'Criar automaticamente o hardware do servidor.', FALSE),

-- Q20 (Gabarito: B)
(ID_Q20, 'Apagar todos os dados ao encerrar a aplicação.', FALSE),
(ID_Q20, 'Manter dados disponíveis além da execução imediata do programa.', TRUE),
(ID_Q20, 'Exibir apenas mensagens temporárias.', FALSE),
(ID_Q20, 'Transformar todo arquivo em imagem.', FALSE);


-- VALIDAÇÃO DAS 20 QUESTÕES Difíceis DE DS
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
  AND q.dificuldade = 'FACEIS'
GROUP BY q.id, q.enunciado
ORDER BY q.id;