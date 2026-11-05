-- ============================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas II - Modulo 3
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programacao Web III
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II'
      AND d.modulo = 3
    LIMIT 1
);

-- ==================================================================
-- Desenvolvimento de Sistemas II | QUESTOES 41 A 60 | NIVEL DIFÍCIL
-- ==================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
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

-- ============================================================
-- CONSULTAR OS IDS REAIS DAS QUESTOES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_ds2_id
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ====================================================================
-- Desenvolvimento de Sistemas II | Alternativas das questões  41 a 60
-- ====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 41 | ID 890 | CORRETA: B
(890, 'Criar um novo pedido a cada repetição.', FALSE),
(890, 'Adotar uma chave de idempotência persistida e associada ao resultado.', TRUE),
(890, 'Trocar POST por GET sem alterar a semântica.', FALSE),
(890, 'Desabilitar toda validação de entrada.', FALSE),

-- QUESTAO 42 | ID 891 | CORRETA: A
(891, 'Atomicidade.', TRUE),
(891, 'Isolamento.', FALSE),
(891, 'Durabilidade.', FALSE),
(891, 'Consistência, isoladamente.', FALSE),

-- QUESTAO 43 | ID 892 | CORRETA: D
(892, 'Remover a chave primária da tabela.', FALSE),
(892, 'Executar somente consultas SELECT sem transação.', FALSE),
(892, 'Desativar os logs de aplicação.', FALSE),
(892, 'Controle de concorrência por bloqueio ou versão.', TRUE),

-- QUESTAO 44 | ID 893 | CORRETA: D
(893, 'Realizar uma consulta adicional para cada item.', FALSE),
(893, 'Desabilitar todas as chaves estrangeiras.', FALSE),
(893, 'Enviar a senha do banco ao cliente.', FALSE),
(893, 'Buscar os dados relacionados em lote, com JOIN ou consultas agrupadas.', TRUE),

-- QUESTAO 45 | ID 894 | CORRETA: C
(894, 'Serialização JSON.', FALSE),
(894, 'Normalização relacional.', FALSE),
(894, 'Rate limiting.', TRUE),
(894, 'Renderização do DOM.', FALSE),

-- QUESTAO 46 | ID 895 | CORRETA: B
(895, 'Confiar no ID enviado pelo cliente sem verificações.', FALSE),
(895, 'Validar autorização sobre o recurso para a identidade autenticada.', TRUE),
(895, 'Ocultar o botão de acesso no front-end.', FALSE),
(895, 'Trocar o nome da rota para um valor aleatório.', FALSE),

-- QUESTAO 47 | ID 896 | CORRETA: A
(896, '412 Precondition Failed.', TRUE),
(896, '201 Created.', FALSE),
(896, '204 No Content.', FALSE),
(896, '101 Switching Protocols.', FALSE),

-- QUESTAO 48 | ID 897 | CORRETA: A
(897, 'Adicionar o campo sem remover nem alterar o significado dos existentes.', TRUE),
(897, 'Renomear todos os campos sem aviso.', FALSE),
(897, 'Trocar todas as respostas por texto não estruturado.', FALSE),
(897, 'Remover o identificador de cada recurso.', FALSE),

-- QUESTAO 49 | ID 898 | CORRETA: D
(898, 'Paginação sem qualquer ordenação.', FALSE),
(898, 'Retornar todos os registros em uma resposta.', FALSE),
(898, 'Escolher uma página aleatória em cada requisição.', FALSE),
(898, 'Paginação por cursor baseada em ordenação estável.', TRUE),

-- QUESTAO 50 | ID 899 | CORRETA: C
(899, 'Polling do navegador sem persistência.', FALSE),
(899, 'Exclusão das transações do banco.', FALSE),
(899, 'Transactional outbox.', TRUE),
(899, 'Envio de evento antes de qualquer validação.', FALSE),

-- QUESTAO 51 | ID 900 | CORRETA: B
(900, 'Cobrar novamente sempre que houver timeout.', FALSE),
(900, 'Reutilizar a mesma chave de idempotência e retornar o resultado da operação original.', TRUE),
(900, 'Ignorar identificadores de operação.', FALSE),
(900, 'Remover a autenticação para acelerar a resposta.', FALSE),

-- QUESTAO 52 | ID 901 | CORRETA: B
(901, 'Registrar cabeçalhos Authorization integralmente.', FALSE),
(901, 'Mascarar ou omitir tokens, senhas e informações sensíveis.', TRUE),
(901, 'Gravar senhas em texto puro em cada exceção.', FALSE),
(901, 'Publicar logs de produção sem controle de acesso.', FALSE),

-- QUESTAO 53 | ID 902 | CORRETA: A
(902, 'Aplicar autorização por objeto no servidor antes de retornar o pedido.', TRUE),
(902, 'Verificar apenas se o usuário está autenticado.', FALSE),
(902, 'Confiar na ocultação do link no navegador.', FALSE),
(902, 'Usar identificadores numéricos maiores.', FALSE),

-- QUESTAO 54 | ID 903 | CORRETA: D
(903, 'Atomicidade.', FALSE),
(903, 'Isolamento.', FALSE),
(903, 'Disponibilidade.', FALSE),
(903, 'Durabilidade.', TRUE),

-- QUESTAO 55 | ID 904 | CORRETA: C
(904, '200 OK como garantia de conclusão.', FALSE),
(904, '404 Not Found.', FALSE),
(904, '202 Accepted.', TRUE),
(904, '409 Conflict obrigatoriamente.', FALSE),

-- QUESTAO 56 | ID 905 | CORRETA: C
(905, 'Retentativas infinitas e imediatas.', FALSE),
(905, 'Remover todos os limites de conexão.', FALSE),
(905, 'Timeout, retentativas limitadas com backoff e circuit breaker.', TRUE),
(905, 'Ignorar os erros e declarar sucesso.', FALSE),

-- QUESTAO 57 | ID 906 | CORRETA: B
(906, 'Garantir que toda consulta seja instantânea.', FALSE),
(906, 'Acelerar consultas compatíveis com a ordem e a estrutura do índice.', TRUE),
(906, 'Eliminar a necessidade de chaves primárias.', FALSE),
(906, 'Impedir qualquer operação de atualização.', FALSE),

-- QUESTAO 58 | ID 907 | CORRETA: A
(907, 'Restringir explicitamente os campos alteráveis e validar permissões.', TRUE),
(907, 'Aceitar todos os campos recebidos sem filtragem.', FALSE),
(907, 'Deixar a decisão apenas para o JavaScript do cliente.', FALSE),
(907, 'Confiar no nome do campo enviado.', FALSE),

-- QUESTAO 59 | ID 908 | CORRETA: D
(908, 'Exclusivamente em variável local de uma instância.', FALSE),
(908, 'Apenas em arquivos temporários de cada processo.', FALSE),
(908, 'Somente no código-fonte da aplicação.', FALSE),
(908, 'Em armazenamento compartilhado apropriado, externo à memória local de cada instância.', TRUE),

-- QUESTAO 60 | ID 909 | CORRETA: D
(909, 'Remover a documentação OpenAPI.', FALSE),
(909, 'Ignorar códigos HTTP nas respostas.', FALSE),
(909, 'Testar apenas a aparência do formulário.', FALSE),
(909, 'Testes de contrato comparando implementações e especificações.', TRUE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES DIFICEIS
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

LEFT JOIN alternativa a
    ON a.questao_id = q.id

WHERE q.quiz_id = 14
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
