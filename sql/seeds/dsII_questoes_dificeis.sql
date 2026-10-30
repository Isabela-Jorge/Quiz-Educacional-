-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- TOTAL: 20 Questões Difíceis (15 pts, 15 seg)
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
-- Inserção das Questões Difíceis (Evitando duplicações)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds2_id, 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds2_id AND enunciado = 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?');


-- ============================================================
-- INSERÇÃO DAS ALTERNATIVAS USANDO O ENUNCIADO COMO REFERÊNCIA
-- ============================================================

INSERT INTO alternativa (questao_id, texto_alternativa, is_correta)
SELECT q.id, t.texto, t.correta
FROM questao q
JOIN (
    -- Q41
    SELECT 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?' AS enun, 'Criar um novo pedido a cada repetição.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'Adotar uma chave de idempotência persistida e associada ao resultado.', TRUE UNION ALL
    SELECT 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'Trocar POST por GET sem alterar a semântica.', FALSE UNION ALL
    SELECT 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'Desabilitar toda validação de entrada.', FALSE UNION ALL
    
    -- Q42
    SELECT 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'Atomicidade.', TRUE UNION ALL
    SELECT 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'Isolamento.', FALSE UNION ALL
    SELECT 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'Durabilidade.', FALSE UNION ALL
    SELECT 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'Consistência, isoladamente.', FALSE UNION ALL
    
    -- Q43
    SELECT 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'Remover a chave primária da tabela.', FALSE UNION ALL
    SELECT 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'Executar somente consultas SELECT sem transação.', FALSE UNION ALL
    SELECT 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'Desativar os logs de aplicação.', FALSE UNION ALL
    SELECT 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'Controle de concorrência por bloqueio ou versão.', TRUE UNION ALL
    
    -- Q44
    SELECT 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'Realizar uma consulta adicional para cada item.', FALSE UNION ALL
    SELECT 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'Desabilitar todas as chaves estrangeiras.', FALSE UNION ALL
    SELECT 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'Enviar a senha do banco ao cliente.', FALSE UNION ALL
    SELECT 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'Buscar os dados relacionados em lote, com JOIN ou consultas agrupadas.', TRUE UNION ALL
    
    -- Q45
    SELECT 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'Serialização JSON.', FALSE UNION ALL
    SELECT 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'Normalização relacional.', FALSE UNION ALL
    SELECT 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'Rate limiting.', TRUE UNION ALL
    SELECT 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'Renderização do DOM.', FALSE UNION ALL
    
    -- Q46
    SELECT 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'Confiar no ID enviado pelo cliente sem verificações.', FALSE UNION ALL
    SELECT 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'Validar autorização sobre o recurso para a identidade autenticada.', TRUE UNION ALL
    SELECT 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'Ocultar o botão de acesso no front-end.', FALSE UNION ALL
    SELECT 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'Trocar o nome da rota para um valor aleatório.', FALSE UNION ALL
    
    -- Q47
    SELECT 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', '412 Precondition Failed.', TRUE UNION ALL
    SELECT 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', '201 Created.', FALSE UNION ALL
    SELECT 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', '204 No Content.', FALSE UNION ALL
    SELECT 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', '101 Switching Protocols.', FALSE UNION ALL
    
    -- Q48
    SELECT 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'Adicionar o campo sem remover nem alterar o significado dos existentes.', TRUE UNION ALL
    SELECT 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'Renomear todos os campos sem aviso.', FALSE UNION ALL
    SELECT 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'Trocar todas as respostas por texto não estruturado.', FALSE UNION ALL
    SELECT 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'Remover o identificador de cada recurso.', FALSE UNION ALL
    
    -- Q49
    SELECT 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'Paginação sem qualquer ordenação.', FALSE UNION ALL
    SELECT 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'Retornar todos os registros em uma resposta.', FALSE UNION ALL
    SELECT 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'Escolher uma página aleatória em cada requisição.', FALSE UNION ALL
    SELECT 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'Paginação por cursor baseada em ordenação estável.', TRUE UNION ALL
    
    -- Q50
    SELECT 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'Polling do navegador sem persistência.', FALSE UNION ALL
    SELECT 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'Exclusão das transações do banco.', FALSE UNION ALL
    SELECT 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'Transactional outbox.', TRUE UNION ALL
    SELECT 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'Envio de evento antes de qualquer validação.', FALSE UNION ALL
    
    -- Q51
    SELECT 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'Cobrar novamente sempre que houver timeout.', FALSE UNION ALL
    SELECT 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'Reutilizar a mesma chave de idempotência e retornar o resultado da operação original.', TRUE UNION ALL
    SELECT 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'Ignorar identificadores de operação.', FALSE UNION ALL
    SELECT 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'Remover a autenticação para acelerar a resposta.', FALSE UNION ALL
    
    -- Q52
    SELECT 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'Registrar cabeçalhos Authorization integralmente.', FALSE UNION ALL
    SELECT 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'Mascarar ou omitir tokens, senhas e informações sensíveis.', TRUE UNION ALL
    SELECT 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'Gravar senhas em texto puro em cada exceção.', FALSE UNION ALL
    SELECT 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'Publicar logs de produção sem controle de acesso.', FALSE UNION ALL
    
    -- Q53
    SELECT 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'Aplicar autorização por objeto no servidor antes de retornar o pedido.', TRUE UNION ALL
    SELECT 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'Verificar apenas se o usuário está autenticado.', FALSE UNION ALL
    SELECT 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'Confiar na ocultação do link no navegador.', FALSE UNION ALL
    SELECT 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'Usar identificadores numéricos maiores.', FALSE UNION ALL
    
    -- Q54
    SELECT 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'Atomicidade.', FALSE UNION ALL
    SELECT 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'Isolamento.', FALSE UNION ALL
    SELECT 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'Disponibilidade.', FALSE UNION ALL
    SELECT 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'Durabilidade.', TRUE UNION ALL
    
    -- Q55
    SELECT 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', '200 OK como garantia de conclusão.', FALSE UNION ALL
    SELECT 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', '404 Not Found.', FALSE UNION ALL
    SELECT 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', '202 Accepted.', TRUE UNION ALL
    SELECT 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', '409 Conflict obrigatoriamente.', FALSE UNION ALL
    
    -- Q56
    SELECT 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'Retentativas infinitas e imediatas.', FALSE UNION ALL
    SELECT 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'Remover todos os limites de conexão.', FALSE UNION ALL
    SELECT 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'Timeout, retentativas limitadas com backoff e circuit breaker.', TRUE UNION ALL
    SELECT 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'Ignorar os erros e declarar sucesso.', FALSE UNION ALL
    
    -- Q57
    SELECT 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'Garantir que toda consulta seja instantânea.', FALSE UNION ALL
    SELECT 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'Acelerar consultas compatíveis com a ordem e a estrutura do índice.', TRUE UNION ALL
    SELECT 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'Eliminar a necessidade de chaves primárias.', FALSE UNION ALL
    SELECT 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'Impedir qualquer operação de atualização.', FALSE UNION ALL
    
    -- Q58
    SELECT 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'Restringir explicitamente os campos alteráveis e validar permissões.', TRUE UNION ALL
    SELECT 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'Aceitar todos os campos recebidos sem filtragem.', FALSE UNION ALL
    SELECT 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'Deixar a decisão apenas para o JavaScript do cliente.', FALSE UNION ALL
    SELECT 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'Confiar no nome do campo enviado.', FALSE UNION ALL
    
    -- Q59
    SELECT 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'Exclusivamente em variável local de uma instância.', FALSE UNION ALL
    SELECT 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'Apenas em arquivos temporários de cada processo.', FALSE UNION ALL
    SELECT 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'Somente no código-fonte da aplicação.', FALSE UNION ALL
    SELECT 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'Em armazenamento compartilhado apropriado, externo à memória local de cada instância.', TRUE UNION ALL
    
    -- Q60
    SELECT 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'Remover a documentação OpenAPI.', FALSE UNION ALL
    SELECT 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'Ignorar códigos HTTP nas respostas.', FALSE UNION ALL
    SELECT 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'Testar apenas a aparência do formulário.', FALSE UNION ALL
    SELECT 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'Testes de contrato comparando implementações e especificações.', TRUE UNION ALL
) t ON t.enun = q.enunciado
WHERE q.quiz_id = @quiz_ds2_id
  AND NOT EXISTS (
      SELECT 1 FROM alternativa a WHERE a.questao_id = q.id AND a.texto_alternativa = t.texto
  );


-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE DS
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
