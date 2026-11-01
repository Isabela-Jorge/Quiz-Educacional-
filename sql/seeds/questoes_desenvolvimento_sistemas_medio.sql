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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- DS II | Questões 21 a 40 | Nível médio
-- 10 pontos | 15 segundos
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds2_id, 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'MEDIO', 10, 15);

-- ============================================================
-- DS II | Alternativas das questões 21 a 40
-- (Nota: Ajuste os IDs da coluna questao_id conforme a sua base local gerada)
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | Correta: B
(1, 'Criar um novo pedido a cada repetição.', FALSE),
(1, 'Adotar uma chave de idempotência persistida e associada ao resultado.', TRUE),
(1, 'Trocar POST por GET sem alterar a semântica.', FALSE),
(1, 'Desabilitar toda validação de entrada.', FALSE),

-- Questão 22 | Correta: A
(2, 'Atomicidade.', TRUE),
(2, 'Isolamento.', FALSE),
(2, 'Durabilidade.', FALSE),
(2, 'Consistência, isoladamente.', FALSE),

-- Questão 23 | Correta: D
(3, 'Remover a chave primária da tabela.', FALSE),
(3, 'Executar somente consultas SELECT sem transação.', FALSE),
(3, 'Desativar os logs de aplicação.', FALSE),
(3, 'Controle de concorrência por bloqueio ou versão.', TRUE),

-- Questão 24 | Correta: D
(4, 'Realizar uma consulta adicional para cada item.', FALSE),
(4, 'Desabilitar todas as chaves estrangeiras.', FALSE),
(4, 'Enviar a senha do banco ao cliente.', FALSE),
(4, 'Buscar os dados relacionados em lote, com JOIN ou consultas agrupadas.', TRUE),

-- Questão 25 | Correta: C
(5, 'Serialização JSON.', FALSE),
(5, 'Normalização relacional.', FALSE),
(5, 'Rate limiting.', TRUE),
(5, 'Renderização do DOM.', FALSE),

-- Questão 26 | Correta: B
(6, 'Confiar no ID enviado pelo cliente sem verificações.', FALSE),
(6, 'Validar autorização sobre o recurso para a identidade autenticada.', TRUE),
(6, 'Ocultar o botão de acesso no front-end.', FALSE),
(6, 'Trocar o nome da rota para um valor aleatório.', FALSE),

-- Questão 27 | Correta: A
(7, '412 Precondition Failed.', TRUE),
(7, '201 Created.', FALSE),
(7, '204 No Content.', FALSE),
(7, '101 Switching Protocols.', FALSE),

-- Questão 28 | Correta: A
(8, 'Adicionar o campo sem remover nem alterar o significado dos existentes.', TRUE),
(8, 'Renomear todos os campos sem aviso.', FALSE),
(8, 'Trocar todas as respostas por texto não estruturado.', FALSE),
(8, 'Remover o identificador de cada recurso.', FALSE),

-- Questão 29 | Correta: D
(9, 'Paginação sem qualquer ordenação.', FALSE),
(9, 'Retornar todos os registros em uma resposta.', FALSE),
(9, 'Escolher uma página aleatória em cada requisição.', FALSE),
(9, 'Paginação por cursor baseada em ordenação estável.', TRUE),

-- Questão 30 | Correta: C
(10, 'Polling do navegador sem persistência.', FALSE),
(10, 'Exclusão das transações do banco.', FALSE),
(10, 'Transactional outbox.', TRUE),
(10, 'Envio de evento antes de qualquer validação.', FALSE),

-- Questão 31 | Correta: B
(11, 'Cobrar novamente sempre que houver timeout.', FALSE),
(11, 'Reutilizar a mesma chave de idempotência e retornar o resultado da operação original.', TRUE),
(11, 'Ignorar identificadores de operação.', FALSE),
(11, 'Remover a autenticação para acelerar a resposta.', FALSE),

-- Questão 32 | Correta: B
(12, 'Registrar cabeçalhos Authorization integralmente.', FALSE),
(12, 'Mascarar ou omitir tokens, senhas e informações sensíveis.', TRUE),
(12, 'Gravar senhas em texto puro em cada exceção.', FALSE),
(12, 'Publicar logs de produção sem controle de acesso.', FALSE),

-- Questão 33 | Correta: A
(13, 'Aplicar autorização por objeto no servidor antes de retornar o pedido.', TRUE),
(13, 'Verificar apenas se o usuário está autenticado.', FALSE),
(13, 'Confiar na ocultação do link no navegador.', FALSE),
(13, 'Usar identificadores numéricos maiores.', FALSE),

-- Questão 34 | Correta: D
(14, 'Atomicidade.', FALSE),
(14, 'Isolamento.', FALSE),
(14, 'Disponibilidade.', FALSE),
(14, 'Durabilidade.', TRUE),

-- Questão 35 | Correta: C
(15, '200 OK como garantia de conclusão.', FALSE),
(15, '404 Not Found.', FALSE),
(15, '202 Accepted.', TRUE),
(15, '409 Conflict obrigatoriamente.', FALSE),

-- Questão 36 | Correta: C
(16, 'Retentativas infinitas e imediatas.', FALSE),
(16, 'Remover todos os limites de conexão.', FALSE),
(16, 'Timeout, retentativas limitadas com backoff e circuit breaker.', TRUE),
(16, 'Ignorar os erros e declarar sucesso.', FALSE),

-- Questão 37 | Correta: B
(17, 'Garantir que toda consulta seja instantânea.', FALSE),
(17, 'Acelerar consultas compatíveis com a ordem e a estrutura do índice.', TRUE),
(17, 'Eliminar a necessidade de chaves primárias.', FALSE),
(17, 'Impedir qualquer operação de atualização.', FALSE),

-- Questão 38 | Correta: A
(18, 'Restringir explicitamente os campos alteráveis e validar permissões.', TRUE),
(18, 'Aceitar todos os campos recebidos sem filtragem.', FALSE),
(18, 'Deixar a decisão apenas para o JavaScript do cliente.', FALSE),
(18, 'Confiar no nome do campo enviado.', FALSE),

-- Questão 39 | Correta: D
(19, 'Exclusivamente em variável local de uma instância.', FALSE),
(19, 'Apenas em arquivos temporários de cada processo.', FALSE),
(19, 'Somente no código-fonte da aplicação.', FALSE),
(19, 'Em armazenamento compartilhado apropriado, externo à memória local de cada instância.', TRUE),

-- Questão 40 | Correta: D
(20, 'Remover a documentação OpenAPI.', FALSE),
(20, 'Ignorar códigos HTTP nas respostas.', FALSE),
(20, 'Testar apenas a aparência do formulário.', FALSE),
(20, 'Testes de contrato comparando implementações e especificações.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE DS II
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
