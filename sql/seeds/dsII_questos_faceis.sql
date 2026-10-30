-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- TOTAL: 20 Questões Fáceis (5 pts, 15 seg)
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas II
-- Ajustado para evitar capturar "DS II" incorretamente (Item 3 do líder)
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II' 
       OR d.nome REGEXP 'DS II([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- Inserção das Questões (Evitando duplicações - Item 6)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a finalidade principal de uma API?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a finalidade principal de uma API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que significa HTTP?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que significa HTTP?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual método HTTP é normalmente utilizado para consultar um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual método HTTP costuma ser usado para criar um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual método HTTP costuma ser usado para criar um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual formato é amplamente utilizado na troca de dados em APIs REST?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que indica o código HTTP 200?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que indica o código HTTP 200?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que indica o código HTTP 404?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que indica o código HTTP 404?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma API, o que é um endpoint?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma API, o que é um endpoint?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a função de um banco de dados em uma aplicação?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a função de um banco de dados em uma aplicação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual ferramenta pode ser utilizada para testar requisições HTTP?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que representa o corpo de uma requisição HTTP?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que representa o corpo de uma requisição HTTP?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual código HTTP normalmente indica que um recurso foi criado?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual código HTTP normalmente indica que um recurso foi criado?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual método HTTP normalmente solicita a exclusão de um recurso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que significa CRUD?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que significa CRUD?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que é uma chave primária em uma tabela relacional?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que é uma chave primária em uma tabela relacional?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a finalidade da autenticação?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a finalidade da autenticação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que significa API RESTful?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que significa API RESTful?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Para que serve a documentação de uma API?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Para que serve a documentação de uma API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que é persistência de dados?', 'FACIL', 5, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que é persistência de dados?');


-- ============================================================
-- INSERÇÃO DAS ALTERNATIVAS USANDO O ENUNCIADO COMO REFERÊNCIA
-- ============================================================

INSERT INTO alternativa (questao_id, texto_alternativa, is_correta)
SELECT q.id, t.texto, t.correta
FROM questao q
JOIN (
    -- Q01
    SELECT 'Qual é a finalidade principal de uma API?' AS enun, 'Substituir o sistema operacional.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual é a finalidade principal de uma API?', 'Eliminar a necessidade de redes.', FALSE UNION ALL
    SELECT 'Qual é a finalidade principal de uma API?', 'Criar somente interfaces gráficas.', FALSE UNION ALL
    SELECT 'Qual é a finalidade principal de uma API?', 'Permitir a comunicação entre sistemas por meio de interfaces definidas.', TRUE UNION ALL
    
    -- Q02
    SELECT 'O que significa HTTP?', 'High Transfer Text Program.', FALSE UNION ALL
    SELECT 'O que significa HTTP?', 'Hyperlink Technical Process.', FALSE UNION ALL
    SELECT 'O que significa HTTP?', 'Hypertext Transfer Protocol.', TRUE UNION ALL
    SELECT 'O que significa HTTP?', 'Host Transfer Terminal Protocol.', FALSE UNION ALL
    
    -- Q03
    SELECT 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'POST.', FALSE UNION ALL
    SELECT 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'GET.', TRUE UNION ALL
    SELECT 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'PATCH.', FALSE UNION ALL
    SELECT 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'DELETE.', FALSE UNION ALL
    
    -- Q04
    SELECT 'Qual método HTTP costuma ser usado para criar um recurso?', 'GET.', FALSE UNION ALL
    SELECT 'Qual método HTTP costuma ser usado para criar um recurso?', 'POST.', TRUE UNION ALL
    SELECT 'Qual método HTTP costuma ser usado para criar um recurso?', 'HEAD.', FALSE UNION ALL
    SELECT 'Qual método HTTP costuma ser usado para criar um recurso?', 'OPTIONS.', FALSE UNION ALL
    
    -- Q05
    SELECT 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'JSON.', TRUE UNION ALL
    SELECT 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'PNG.', FALSE UNION ALL
    SELECT 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'MP3.', FALSE UNION ALL
    SELECT 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'PDF.', FALSE UNION ALL
    
    -- Q06
    SELECT 'O que indica o código HTTP 200?', 'O recurso não foi encontrado.', FALSE UNION ALL
    SELECT 'O que indica o código HTTP 200?', 'O servidor não conseguiu processar a solicitação.', FALSE UNION ALL
    SELECT 'O que indica o código HTTP 200?', 'A autenticação é obrigatória.', FALSE UNION ALL
    SELECT 'O que indica o código HTTP 200?', 'A requisição foi processada com sucesso.', TRUE UNION ALL
    
    -- Q07
    SELECT 'O que indica o código HTTP 404?', 'O recurso foi criado.', FALSE UNION ALL
    SELECT 'O que indica o código HTTP 404?', 'A requisição foi bem-sucedida.', FALSE UNION ALL
    SELECT 'O que indica o código HTTP 404?', 'O recurso solicitado não foi encontrado.', TRUE UNION ALL
    SELECT 'O que indica o código HTTP 404?', 'O servidor está redirecionando a solicitação.', FALSE UNION ALL
    
    -- Q08
    SELECT 'Em uma API, o que é um endpoint?', 'Um arquivo de imagem obrigatório.', FALSE UNION ALL
    SELECT 'Em uma API, o que é um endpoint?', 'Um tipo de memória RAM.', FALSE UNION ALL
    SELECT 'Em uma API, o que é um endpoint?', 'Um endereço que disponibiliza uma operação ou recurso.', TRUE UNION ALL
    SELECT 'Em uma API, o what é um endpoint?', 'Um programa antivírus.', FALSE UNION ALL -- (ajustado texto abaixo)
    
    -- Q09
    SELECT 'Qual é a função de um banco de dados em uma aplicação?', 'Substituir todas as regras de negócio.', FALSE UNION ALL
    SELECT 'Qual é a função de um banco de dados em uma aplicação?', 'Armazenar e permitir consultar dados de forma organizada.', TRUE UNION ALL
    SELECT 'Qual é a função de um banco de dados em uma aplicação?', 'Executar somente páginas HTML.', FALSE UNION ALL
    SELECT 'Qual é a função de um banco de dados em uma aplicação?', 'Garantir acesso à internet sem rede.', FALSE UNION ALL
    
    -- Q10
    SELECT 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'Postman.', TRUE UNION ALL
    SELECT 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'Paint.', FALSE UNION ALL
    SELECT 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'Calculadora.', FALSE UNION ALL
    SELECT 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'Bloco de Notas, sem extensões.', FALSE UNION ALL
    
    -- Q11
    SELECT 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'User-Agent.', FALSE UNION ALL
    SELECT 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'Accept-Language.', FALSE UNION ALL
    SELECT 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'Cache-Control.', FALSE UNION ALL
    SELECT 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'Content-Type.', TRUE UNION ALL
    
    -- Q12
    SELECT 'O que representa o corpo de uma requisição HTTP?', 'O endereço IP físico do computador.', FALSE UNION ALL
    SELECT 'O que representa o corpo de uma requisição HTTP?', 'A senha do servidor obrigatoriamente.', FALSE UNION ALL
    SELECT 'O que representa o corpo de uma requisição HTTP?', 'A porta USB utilizada.', FALSE UNION ALL
    SELECT 'O que representa o corpo de uma requisição HTTP?', 'Os dados enviados na mensagem, quando existentes.', TRUE UNION ALL
    
    -- Q13
    SELECT 'Qual código HTTP normalmente indica que um recurso foi criado?', '301 Moved Permanently.', FALSE UNION ALL
    SELECT 'Qual código HTTP normalmente indica que um recurso foi criado?', '404 Not Found.', FALSE UNION ALL
    SELECT 'Qual código HTTP normalmente indica que um recurso foi criado?', '201 Created.', TRUE UNION ALL
    SELECT 'Qual código HTTP normalmente indica que um recurso foi criado?', '500 Internal Server Error.', FALSE UNION ALL
    
    -- Q14
    SELECT 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'GET.', FALSE UNION ALL
    SELECT 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'DELETE.', TRUE UNION ALL
    SELECT 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'TRACE.', FALSE UNION ALL
    SELECT 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'HEAD.', FALSE UNION ALL
    
    -- Q15
    SELECT 'O que significa CRUD?', 'Criar, ler, atualizar e excluir dados.', TRUE UNION ALL
    SELECT 'O que significa CRUD?', 'Copiar, reiniciar, utilizar e depurar.', FALSE UNION ALL
    SELECT 'O que significa CRUD?', 'Conectar, renderizar, unificar e distribuir.', FALSE UNION ALL
    SELECT 'O que significa CRUD?', 'Compilar, registrar, atualizar e desenhar.', FALSE UNION ALL
    
    -- Q16
    SELECT 'O que é uma chave primária em uma tabela relacional?', 'Um atributo ou conjunto de atributos que identifica cada registro.', TRUE UNION ALL
    SELECT 'O que é uma chave primária em uma tabela relacional?', 'Uma senha de acesso ao sistema.', FALSE UNION ALL
    SELECT 'O que é uma chave primária em uma tabela relacional?', 'Um campo obrigatoriamente textual.', FALSE UNION ALL
    SELECT 'O que é uma chave primária em uma tabela relacional?', 'Um endereço de uma API externa.', FALSE UNION ALL
    
    -- Q17
    SELECT 'Qual é a finalidade da autenticação?', 'Determinar apenas as cores da interface.', FALSE UNION ALL
    SELECT 'Qual é a finalidade da autenticação?', 'Comprimir arquivos de imagem.', FALSE UNION ALL
    SELECT 'Qual é a finalidade da autenticação?', 'Ordenador resultados de uma consulta SQL.', FALSE UNION ALL
    SELECT 'Qual é a finalidade da autenticação?', 'Verificar a identidade de quem solicita acesso.', TRUE UNION ALL
    
    -- Q18
    SELECT 'O que significa API RESTful?', 'Uma API que obrigatoriamente utiliza XML.', FALSE UNION ALL
    SELECT 'O que significa API RESTful?', 'Uma API que funciona somente em redes locais.', FALSE UNION ALL
    SELECT 'O what significa API RESTful?', 'Uma API projetada segundo restrições arquiteturais REST.', TRUE UNION ALL
    SELECT 'O que significa API RESTful?', 'Uma API sem recursos identificáveis.', FALSE UNION ALL
    
    -- Q19
    SELECT 'Para que serve a documentação de uma API?', 'Substituir o banco de dados.', FALSE UNION ALL
    SELECT 'Para que serve a documentação de uma API?', 'Descrever operações, parâmetros, respostas e regras de uso.', TRUE UNION ALL
    SELECT 'Para que serve a documentação de uma API?', 'Eliminar a necessidade de testes.', FALSE UNION ALL
    SELECT 'Para que serve a documentação de uma API?', 'Criar automaticamente o hardware do servidor.', FALSE UNION ALL
    
    -- Q20
    SELECT 'O que é persistência de dados?', 'Apagar todos os dados ao encerrar a aplicação.', FALSE UNION ALL
    SELECT 'O que é persistência de dados?', 'Manter dados disponíveis além da execução imediata do programa.', TRUE UNION ALL
    SELECT 'O que é persistência de dados?', 'Exibir apenas mensagens temporárias.', FALSE UNION ALL
    SELECT 'O que é persistência de dados?', 'Transformar todo arquivo em imagem.', FALSE UNION ALL
) t ON t.enun = q.enunciado
WHERE q.quiz_id = @quiz_ds2_id
  AND NOT EXISTS (
      SELECT 1 FROM alternativa a WHERE a.questao_id = q.id AND a.texto_alternativa = t.texto
  );


-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE DS
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
