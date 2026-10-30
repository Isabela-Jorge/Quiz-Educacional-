-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- TOTAL: 20 Questões Médias (10 pts, 15 seg)
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
-- Inserção das Questões Médias (Evitando duplicações)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a diferença entre autenticação e autorização?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a diferença entre autenticação e autorização?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual propriedade caracteriza uma operação HTTP idempotente?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é o benefício de utilizar parâmetros em consultas SQL?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que representa uma transação de banco de dados?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que representa uma transação de banco de dados?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a função de ROLLBACK em uma transação?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a função de ROLLBACK em uma transação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma API paginada, para que serve um parâmetro de limite?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma API paginada, para que serve um parâmetro de limite?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a principal utilidade do OpenAPI?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a principal utilidade do OpenAPI?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Por que validar os dados recebidos por uma API?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Por que validar os dados recebidos por uma API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a finalidade de um middleware em um servidor web?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a finalidade de um middleware em um servidor web?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a função de uma chave estrangeira?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a função de uma chave estrangeira?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que significa o código HTTP 409 Conflict?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que significa o código HTTP 409 Conflict?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual prática é adequada para armazenar senhas de usuários?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual prática é adequada para armazenar senhas de usuários?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que é um teste de integração de API?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que é um teste de integração de API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é o objetivo do tratamento centralizado de erros?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é o objetivo do tratamento centralizado de erros?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'O que é versionamento de API?', 'MEDIO', 10, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'O que é versionamento de API?');


-- ============================================================
-- INSERÇÃO DAS ALTERNATIVAS USANDO O ENUNCIADO COMO REFERÊNCIA
-- ============================================================

INSERT INTO alternativa (questao_id, texto_alternativa, is_correta)
SELECT q.id, t.texto, t.correta
FROM questao q
JOIN (
    -- Q21
    SELECT 'Qual é a diferença entre autenticação e autorização?' AS enun, 'Autenticação confirma identidade; autorização verifica permissões.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Autenticação define permissões; autorização verifica identidade.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Ambas apenas criptografam o banco de dados.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Ambas são sinônimos de validação de JSON.', FALSE UNION ALL
    
    -- Q22
    SELECT 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'Ela sempre cria um novo registro.', FALSE UNION ALL
    SELECT 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'Ela nunca retorna um código de erro.', FALSE UNION ALL
    SELECT 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'Ela obrigatoriamente utiliza o método POST.', FALSE UNION ALL
    SELECT 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'Repeti-la produz o mesmo efeito pretendido no estado do servidor.', TRUE UNION ALL
    
    -- Q23
    SELECT 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', '200 OK.', FALSE UNION ALL
    SELECT 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', '201 Created.', FALSE UNION ALL
    SELECT 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', '400 Bad Request.', TRUE UNION ALL
    SELECT 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', '304 Not Modified.', FALSE UNION ALL
    
    -- Q24
    SELECT 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', '403 Forbidden, em qualquer situação.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', '409 Conflict.', FALSE UNION ALL
    SELECT 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', '401 Unauthorized.', TRUE UNION ALL
    SELECT 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', '204 No Content.', FALSE UNION ALL
    
    -- Q25
    SELECT 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', '201 Created.', FALSE UNION ALL
    SELECT 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', '403 Forbidden.', TRUE UNION ALL
    SELECT 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', '301 Moved Permanently.', FALSE UNION ALL
    SELECT 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', '100 Continue.', FALSE UNION ALL
    
    -- Q26
    SELECT 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'PATCH.', TRUE UNION ALL
    SELECT 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'HEAD.', FALSE UNION ALL
    SELECT 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'CONNECT.', FALSE UNION ALL
    SELECT 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'TRACE.', FALSE UNION ALL
    
    -- Q27
    SELECT 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'Permitir que o usuário execute qualquer SQL.', FALSE UNION ALL
    SELECT 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'Desativar as restrições de integridade.', FALSE UNION ALL
    SELECT 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'Garantir que todas as consultas usem índices.', FALSE UNION ALL
    SELECT 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'Separar dados do comando e reduzir riscos de injeção de SQL.', TRUE UNION ALL
    
    -- Q28
    SELECT 'O que representa uma transação de banco de dados?', 'Um único arquivo JSON obrigatório.', FALSE UNION ALL
    SELECT 'O que representa uma transação de banco de dados?', 'Um tipo de rota HTTP.', FALSE UNION ALL
    SELECT 'O que representa uma transação de banco de dados?', 'Uma interface visual para consultas.', FALSE UNION ALL
    SELECT 'O que representa uma transação de banco de dados?', 'Um conjunto de operações tratado como unidade de trabalho.', TRUE UNION ALL
    
    -- Q29
    SELECT 'Qual é a função de ROLLBACK em uma transação?', 'Confirmar definitivamente todas as alterações.', FALSE UNION ALL
    SELECT 'Qual é a função de ROLLBACK em uma transação?', 'Criar um índice em toda tabela.', FALSE UNION ALL
    SELECT 'Qual é a função de ROLLBACK em uma transação?', 'Desfazer alterações ainda não confirmadas da transação.', TRUE UNION ALL
    SELECT 'Qual é a função de ROLLBACK em uma transação?', 'Excluir o banco de dados completo.', FALSE UNION ALL
    
    -- Q30
    SELECT 'Em uma API paginada, para que serve um parâmetro de limite?', 'Definir a senha do usuário.', FALSE UNION ALL
    SELECT 'Em uma API paginada, para que serve um parâmetro de limite?', 'Controlar a quantidade máxima de itens retornados por página.', TRUE UNION ALL
    SELECT 'Em uma API paginada, para que serve um parâmetro de limite?', 'Indicar o formato de uma imagem.', FALSE UNION ALL
    SELECT 'Em uma API paginada, para que serve um parâmetro de limite?', 'Escolher a linguagem do servidor.', FALSE UNION ALL
    
    -- Q31
    SELECT 'Qual é a principal utilidade do OpenAPI?', 'Descrever de forma padronizada o contrato de uma API HTTP.', TRUE UNION ALL
    SELECT 'Qual é a principal utilidade do OpenAPI?', 'Substituir o protocolo HTTP.', FALSE UNION ALL
    SELECT 'Qual é a principal utilidade do OpenAPI?', 'Armazenar permanentemente os dados de produção.', FALSE UNION ALL
    SELECT 'Qual é a principal utilidade do OpenAPI?', 'Gerar energia para servidores.', FALSE UNION ALL
    
    -- Q32
    SELECT 'Por que validar os dados recebidos por uma API?', 'Para rejeitar entradas inválidas antes de executar operações.', TRUE UNION ALL
    SELECT 'Por que validar os dados recebidos por uma API?', 'Para garantir que qualquer entrada seja aceita.', FALSE UNION ALL
    SELECT 'Por que validar os dados recebidos por uma API?', 'Para remover a necessidade de autenticação.', FALSE UNION ALL
    SELECT 'Por que validar os dados recebidos por uma API?', 'Para impedir toda falha de infraestrutura.', FALSE UNION ALL
    
    -- Q33
    SELECT 'Qual é a finalidade de um middleware em um servidor web?', 'Substituir fisicamente o roteador.', FALSE UNION ALL
    SELECT 'Qual é a finalidade de um middleware em um servidor web?', 'Criar somente arquivos CSS.', FALSE UNION ALL
    SELECT 'Qual é a finalidade de um middleware em um servidor web?', 'Converter automaticamente SQL em HTML.', FALSE UNION ALL
    SELECT 'Qual é a finalidade de um middleware em um servidor web?', 'Executar lógica intermediária no processamento de requisições.', TRUE UNION ALL
    
    -- Q34
    SELECT 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'PUT é apenas leitura; PATCH é apenas exclusão.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'Ambos servem exclusivamente para autenticação.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'PUT representa substituição do recurso; PATCH, alteração parcial.', TRUE UNION ALL
    SELECT 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'PATCH sempre substitui integralmente o recurso.', FALSE UNION ALL
    
    -- Q35
    SELECT 'Qual é a função de uma chave estrangeira?', 'Criptografar todos os registros.', FALSE UNION ALL
    SELECT 'Qual é a função de uma chave estrangeira?', 'Garantir referência válida a uma chave da tabela relacionada.', TRUE UNION ALL
    SELECT 'Qual é a função de uma chave estrangeira?', 'Criar uma cópia automática de cada tabela.', FALSE UNION ALL
    SELECT 'Qual é a função de uma chave estrangeira?', 'Definir a porta HTTP da aplicação.', FALSE UNION ALL
    
    -- Q36
    SELECT 'O que significa o código HTTP 409 Conflict?', 'O servidor concluiu a criação sem conflito.', FALSE UNION ALL
    SELECT 'O que significa o código HTTP 409 Conflict?', 'A operação conflita com o estado atual do recurso.', TRUE UNION ALL
    SELECT 'O que significa o código HTTP 409 Conflict?', 'O conteúdo não foi modificado por cache.', FALSE UNION ALL
    SELECT 'O que significa o código HTTP 409 Conflict?', 'A conexão foi estabelecida por WebSocket.', FALSE UNION ALL
    
    -- Q37
    SELECT 'Qual prática é adequada para armazenar senhas de usuários?', 'Armazenar hashes produzidos por algoritmo apropriado para senhas.', TRUE UNION ALL
    SELECT 'Qual prática é adequada para armazenar senhas de usuários?', 'Guardar senhas em texto puro para facilitar recuperação.', FALSE UNION ALL
    SELECT 'Qual prática é adequada para armazenar senhas de usuários?', 'Usar apenas codificação Base64 como proteção.', FALSE UNION ALL
    SELECT 'Qual prática é adequada para armazenar senhas de usuários?', 'Enviar a senha de todos os usuários em cada resposta.', FALSE UNION ALL
    
    -- Q38
    SELECT 'O que é um teste de integração de API?', 'Um teste restrito à cor dos botões.', FALSE UNION ALL
    SELECT 'O que é um teste de integração de API?', 'Um teste que nunca utiliza banco de dados.', FALSE UNION ALL
    SELECT 'O que é um teste de integração de API?', 'Um teste executado somente antes da escrita do código.', FALSE UNION ALL
    SELECT 'O que é um teste de integração de API?', 'Um teste que verifica a interação entre componentes reais ou integrados.', TRUE UNION ALL
    
    -- Q39
    SELECT 'Qual é o objetivo do tratamento centralizado de erros?', 'Transformar qualquer erro em resposta 200.', FALSE UNION ALL
    SELECT 'Qual é o objetivo do tratamento centralizado de erros?', 'Expor detalhes internos completos aos clientes.', FALSE UNION ALL
    SELECT 'Qual é o objetivo do tratamento centralizado de erros?', 'Padronizar respostas e reduzir duplicação no tratamento de falhas.', TRUE UNION ALL
    SELECT 'Qual é o objetivo do tratamento centralizado de erros?', 'Ignorar exceções sem registrar informações.', FALSE UNION ALL
    
    -- Q40
    SELECT 'O que é versionamento de API?', 'A troca diária obrigatória do domínio.', FALSE UNION ALL
    SELECT 'O que é versionamento de API?', 'A exclusão automática de todos os endpoints.', FALSE UNION ALL
    SELECT 'O que é versionamento de API?', 'Uma estratégia para evoluir contratos e gerenciar compatibilidade.', TRUE UNION ALL
    SELECT 'O que é versionamento de API?', 'O aumento da versão do sistema operacional.', FALSE UNION ALL
) t ON t.enun = q.enunciado
WHERE q.quiz_id = @quiz_ds2_id
  AND NOT EXISTS (
      SELECT 1 FROM alternativa a WHERE a.questao_id = q.id AND a.texto_alternativa = t.texto
  );


-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE DS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
