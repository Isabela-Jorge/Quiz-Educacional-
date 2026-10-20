-- ============================================================
-- DS II | Questões 41 a 60 | Nível difícil (15 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
(@quiz_ds2_id, 'Em uma API com criação de pedidos, como evitar pedidos duplicados após tentativas repetidas de POST?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Uma transferência entre contas precisa ser integral ou não ocorrer. Qual propriedade ACID atende a isso?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Duas transações atualizam o mesmo saldo simultaneamente. Qual recurso ajuda a evitar atualização perdida?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual abordagem reduz o problema N+1 consultas ao carregar pedidos e seus itens?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Em uma API pública, qual mecanismo limita o número de requisições por cliente em uma janela?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Uma rota recebe o ID do usuário no corpo da requisição. Como evitar acesso indevido a dados de outro usuário?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual resposta é mais adequada para uma atualização condicional com ETag incompatível e If-Match?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Uma API precisa manter compatibilidade ao adicionar um campo opcional em JSON. Qual medida é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Em um endpoint de listagem com muitos registros, qual paginação tende a ser mais estável diante de inserções frequentes?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Um serviço grava um pedido e precisa publicar um evento de forma confiável. Qual padrão reduz inconsistências entre gravação e publicação?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Uma API recebe requisições repetidas de pagamento após timeout. Qual comportamento é mais seguro?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual medida reduz o risco de exposição de dados sensíveis em logs de API?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Como evitar que uma API retorne dados de um pedido pertencente a outro cliente?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Em uma transação, qual propriedade ACID assegura que dados confirmados sobrevivam a falhas conforme as garantias do SGBD?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Em uma API, quando o servidor aceita uma tarefa assíncrona ainda não concluída, qual código é adequado?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual estratégia melhora a confiabilidade de chamadas a um serviço externo instável sem provocar sobrecarga contínua?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual é a principal finalidade de um índice composto em colunas frequentemente filtradas em conjunto?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Uma API permite alterar o campo papel do usuário. Qual controle é essencial?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Em uma arquitetura com múltiplas instâncias de API, onde guardar sessões compartilhadas quando necessário?', 'DIFICIL', 15, 15),
(@quiz_ds2_id, 'Qual técnica ajuda a detectar alterações incompatíveis no contrato de uma API antes da publicação?', 'DIFICIL', 15, 15);

-- ALTERNATIVAS QUESTÕES 41 a 60 (DIFÍCIL)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q41 (Gabarito: B)
(ID_Q41, 'Criar um novo pedido a cada repetição.', FALSE),
(ID_Q41, 'Adotar uma chave de idempotência persistida e associada ao resultado.', TRUE),
(ID_Q41, 'Trocar POST por GET sem alterar a semântica.', FALSE),
(ID_Q41, 'Desabilitar toda validação de entrada.', FALSE),

-- Q42 (Gabarito: A)
(ID_Q42, 'Atomicidade.', TRUE),
(ID_Q42, 'Isolamento.', FALSE),
(ID_Q42, 'Durabilidade.', FALSE),
(ID_Q42, 'Consistência, isoladamente.', FALSE),

-- Q43 (Gabarito: D)
(ID_Q43, 'Remover a chave primária da tabela.', FALSE),
(ID_Q43, 'Executar somente consultas SELECT sem transação.', FALSE),
(ID_Q43, 'Desativar os logs de aplicação.', FALSE),
(ID_Q43, 'Controle de concorrência por bloqueio ou versão.', TRUE),

-- Q44 (Gabarito: D)
(ID_Q44, 'Realizar uma consulta adicional para cada item.', FALSE),
(ID_Q44, 'Desabilitar todas as chaves estrangeiras.', FALSE),
(ID_Q44, 'Enviar a senha do banco ao cliente.', FALSE),
(ID_Q44, 'Buscar os dados relacionados em lote, com JOIN ou consultas agrupadas.', TRUE),

-- Q45 (Gabarito: C)
(ID_Q45, 'Serialização JSON.', FALSE),
(ID_Q45, 'Normalização relacional.', FALSE),
(ID_Q45, 'Rate limiting.', TRUE),
(ID_Q45, 'Renderização do DOM.', FALSE),

-- Q46 (Gabarito: B)
(ID_Q46, 'Confiar no ID enviado pelo cliente sem verificações.', FALSE),
(ID_Q46, 'Validar autorização sobre o recurso para a identidade autenticada.', TRUE),
(ID_Q46, 'Ocultar o botão de acesso no front-end.', FALSE),
(ID_Q46, 'Trocar o nome da rota para um valor aleatório.', FALSE),

-- Q47 (Gabarito: A)
(ID_Q47, '412 Precondition Failed.', TRUE),
(ID_Q47, '201 Created.', FALSE),
(ID_Q47, '204 No Content.', FALSE),
(ID_Q47, '101 Switching Protocols.', FALSE),

-- Q48 (Gabarito: A)
(ID_Q48, 'Adicionar o campo sem remover nem alterar o significado dos existentes.', TRUE),
(ID_Q48, 'Renomear todos os campos sem aviso.', FALSE),
(ID_Q48, 'Trocar todas as respostas por texto não estruturado.', FALSE),
(ID_Q48, 'Remover o identificador de cada recurso.', FALSE),

-- Q49 (Gabarito: D)
(ID_Q49, 'Paginação sem qualquer ordenação.', FALSE),
(ID_Q49, 'Retornar todos os registros em uma resposta.', FALSE),
(ID_Q49, 'Escolher uma página aleatória em cada requisição.', FALSE),
(ID_Q49, 'Paginação por cursor baseada em ordenação estável.', TRUE),

-- Q50 (Gabarito: C)
(ID_Q50, 'Polling do navegador sem persistência.', FALSE),
(ID_Q50, 'Exclusão das transações do banco.', FALSE),
(ID_Q50, 'Transactional outbox.', TRUE),
(ID_Q50, 'Envio de evento antes de qualquer validação.', FALSE),

-- Q51 (Gabarito: B)
(ID_Q51, 'Cobrar novamente sempre que houver timeout.', FALSE),
(ID_Q51, 'Reutilizar a mesma chave de idempotência e retornar o resultado da operação original.', TRUE),
(ID_Q51, 'Ignorar identificadores de operação.', FALSE),
(ID_Q51, 'Remover a autenticação para acelerar a resposta.', FALSE),

-- Q52 (Gabarito: B)
(ID_Q52, 'Registrar cabeçalhos Authorization integralmente.', FALSE),
(ID_Q52, 'Mascarar ou omitir tokens, senhas e informações sensíveis.', TRUE),
(ID_Q52, 'Gravar senhas em texto puro em cada exceção.', FALSE),
(ID_Q52, 'Publicar logs de produção sem controle de acesso.', FALSE),

-- Q53 (Gabarito: A)
(ID_Q53, 'Aplicar autorização por objeto no servidor antes de retornar o pedido.', TRUE),
(ID_Q53, 'Verificar apenas se o usuário está autenticado.', FALSE),
(ID_Q53, 'Confiar na ocultação do link no navegador.', FALSE),
(ID_Q53, 'Usar identificadores numéricos maiores.', FALSE),

-- Q54 (Gabarito: D)
(ID_Q54, 'Atomicidade.', FALSE),
(ID_Q54, 'Isolamento.', FALSE),
(ID_Q54, 'Disponibilidade.', FALSE),
(ID_Q54, 'Durabilidade.', TRUE),

-- Q55 (Gabarito: C)
(ID_Q55, '200 OK como garantia de conclusão.', FALSE),
(ID_Q55, '404 Not Found.', FALSE),
(ID_Q55, '202 Accepted.', TRUE),
(ID_Q55, '409 Conflict obrigatoriamente.', FALSE),

-- Q56 (Gabarito: C)
(ID_Q56, 'Retentativas infinitas e imediatas.', FALSE),
(ID_Q56, 'Remover todos os limites de conexão.', FALSE),
(ID_Q56, 'Timeout, retentativas limitadas com backoff e circuit breaker.', TRUE),
(ID_Q56, 'Ignorar os erros e declarar sucesso.', FALSE),

-- Q57 (Gabarito: B)
(ID_Q57, 'Garantir que toda consulta seja instantânea.', FALSE),
(ID_Q57, 'Acelerar consultas compatíveis com a ordem e a estrutura do índice.', TRUE),
(ID_Q57, 'Eliminar a necessidade de chaves primárias.', FALSE),
(ID_Q57, 'Impedir qualquer operação de atualização.', FALSE),

-- Q58 (Gabarito: A)
(ID_Q58, 'Restringir explicitamente os campos alteráveis e validar permissões.', TRUE),
(ID_Q58, 'Aceitar todos os campos recebidos sem filtragem.', FALSE),
(ID_Q58, 'Deixar a decisão apenas para o JavaScript do cliente.', FALSE),
(ID_Q58, 'Confiar no nome do campo enviado.', FALSE),

-- Q59 (Gabarito: D)
(ID_Q59, 'Exclusivamente em variável local de uma instância.', FALSE),
(ID_Q59, 'Apenas em arquivos temporários de cada processo.', FALSE),
(ID_Q59, 'Somente no código-fonte da aplicação.', FALSE),
(ID_Q59, 'Em armazenamento compartilhado apropriado, externo à memória local de cada instância.', TRUE),

-- Q60 (Gabarito: D)
(ID_Q60, 'Remover a documentação OpenAPI.', FALSE),
(ID_Q60, 'Ignorar códigos HTTP nas respostas.', FALSE),
(ID_Q60, 'Testar apenas a aparência do formulário.', FALSE),
(ID_Q60, 'Testes de contrato comparando implementações e especificações.', TRUE);


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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;