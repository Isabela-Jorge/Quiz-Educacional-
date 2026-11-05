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
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II'
      AND d.modulo = 3
    LIMIT 1
);

-- ================================================================
-- Desenvolvimento de Sistemas II | QUESTOES 21 A 40 | NIVEL MÉDIO
-- ================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds2_id, 'Qual é a diferença entre autenticação e autorização?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual propriedade caracteriza uma operação HTTP idempotente?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual código HTTP é adequado quando o cliente envia JSON sintaticamente inválido?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual código HTTP indica ausência de credenciais válidas para acessar um recurso protegido?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual código HTTP é apropriado quando um usuário autenticado não possui permissão?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Para atualizar parcialmente um recurso em uma API HTTP, qual método é usual?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é o benefício de utilizar parâmetros em consultas SQL?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que representa uma transação de banco de dados?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a função de ROLLBACK em uma transação?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em uma API paginada, para que serve um parâmetro de limite?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a principal utilidade do OpenAPI?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Por que validar os dados recebidos por uma API?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a finalidade de um middleware em um servidor web?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a diferença entre PUT e PATCH no uso comum de APIs?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a função de uma chave estrangeira?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que significa o código HTTP 409 Conflict?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual prática é adequada para armazenar senhas de usuários?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é um teste de integração de API?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é o objetivo do tratamento centralizado de erros?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é versionamento de API?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ====================================================================
-- Desenvolvimento de Sistemas II | Alternativas das questões  21 a 40
-- ====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 21 | ID 870 | CORRETA: A
(870, 'Autenticação confirma identidade; autorização verifica permissões.', TRUE),
(870, 'Autenticação define permissões; autorização verifica identidade.', FALSE),
(870, 'Ambas apenas criptografam o banco de dados.', FALSE),
(870, 'Ambas são sinônimos de validação de JSON.', FALSE),

-- QUESTAO 22 | ID 871 | CORRETA: D
(871, 'Ela sempre cria um novo registro.', FALSE),
(871, 'Ela nunca retorna um código de erro.', FALSE),
(871, 'Ela obrigatoriamente utiliza o método POST.', FALSE),
(871, 'Repeti-la produz o mesmo efeito pretendido no estado do servidor.', TRUE),

-- QUESTAO 23 | ID 872 | CORRETA: C
(872, '200 OK.', FALSE),
(872, '201 Created.', FALSE),
(872, '400 Bad Request.', TRUE),
(872, '304 Not Modified.', FALSE),

-- QUESTAO 24 | ID 873 | CORRETA: C
(873, '403 Forbidden, em qualquer situação.', FALSE),
(873, '409 Conflict.', FALSE),
(873, '401 Unauthorized.', TRUE),
(873, '204 No Content.', FALSE),

-- QUESTAO 25 | ID 874 | CORRETA: B
(874, '201 Created.', FALSE),
(874, '403 Forbidden.', TRUE),
(874, '301 Moved Permanently.', FALSE),
(874, '100 Continue.', FALSE),

-- QUESTAO 26 | ID 875 | CORRETA: A
(875, 'PATCH.', TRUE),
(875, 'HEAD.', FALSE),
(875, 'CONNECT.', FALSE),
(875, 'TRACE.', FALSE),

-- QUESTAO 27 | ID 876 | CORRETA: D
(876, 'Permitir que o usuário execute qualquer SQL.', FALSE),
(876, 'Desativar as restrições de integridade.', FALSE),
(876, 'Garantir que todas as consultas usem índices.', FALSE),
(876, 'Separar dados do comando e reduzir riscos de injeção de SQL.', TRUE),

-- QUESTAO 28 | ID 877 | CORRETA: D
(877, 'Um único arquivo JSON obrigatório.', FALSE),
(877, 'Um tipo de rota HTTP.', FALSE),
(877, 'Uma interface visual para consultas.', FALSE),
(877, 'Um conjunto de operações tratado como unidade de trabalho.', TRUE),

-- QUESTAO 29 | ID 878 | CORRETA: C
(878, 'Confirmar definitivamente todas as alterações.', FALSE),
(878, 'Criar um índice em toda tabela.', FALSE),
(878, 'Desfazer alterações ainda não confirmadas da transação.', TRUE),
(878, 'Excluir o banco de dados completo.', FALSE),

-- QUESTAO 30 | ID 879 | CORRETA: B
(879, 'Definir a senha do usuário.', FALSE),
(879, 'Controlar a quantidade máxima de itens retornados por página.', TRUE),
(879, 'Indicar o formato de uma imagem.', FALSE),
(879, 'Escolher a linguagem do servidor.', FALSE),

-- QUESTAO 31 | ID 880 | CORRETA: A
(880, 'Descrever de forma padronizada o contrato de uma API HTTP.', TRUE),
(880, 'Substituir o protocolo HTTP.', FALSE),
(880, 'Armazenar permanentemente os dados de produção.', FALSE),
(880, 'Gerar energia para servidores.', FALSE),

-- QUESTAO 32 | ID 881 | CORRETA: A
(881, 'Para rejeitar entradas inválidas antes de executar operações.', TRUE),
(881, 'Para garantir que qualquer entrada seja aceita.', FALSE),
(881, 'Para remover a necessidade de autenticação.', FALSE),
(881, 'Para impedir toda falha de infraestrutura.', FALSE),

-- QUESTAO 33 | ID 882 | CORRETA: D
(882, 'Substituir fisicamente o roteador.', FALSE),
(882, 'Criar somente arquivos CSS.', FALSE),
(882, 'Converter automaticamente SQL em HTML.', FALSE),
(882, 'Executar lógica intermediária no processamento de requisições.', TRUE),

-- QUESTAO 34 | ID 883 | CORRETA: C
(883, 'PUT é apenas leitura; PATCH é apenas exclusão.', FALSE),
(883, 'Ambos servem exclusivamente para autenticação.', FALSE),
(883, 'PUT representa substituição do recurso; PATCH, alteração parcial.', TRUE),
(883, 'PATCH sempre substitui integralmente o recurso.', FALSE),

-- QUESTAO 35 | ID 884 | CORRETA: B
(884, 'Criptografar todos os registros.', FALSE),
(884, 'Garantir referência válida a uma chave da tabela relacionada.', TRUE),
(884, 'Criar uma cópia automática de cada tabela.', FALSE),
(884, 'Definir a porta HTTP da aplicação.', FALSE),

-- QUESTAO 36 | ID 885 | CORRETA: B
(885, 'O servidor concluiu a criação sem conflito.', FALSE),
(885, 'A operação conflita com o estado atual do recurso.', TRUE),
(885, 'O conteúdo não foi modificado por cache.', FALSE),
(885, 'A conexão foi estabelecida por WebSocket.', FALSE),

-- QUESTAO 37 | ID 886 | CORRETA: A
(886, 'Armazenar hashes produzidos por algoritmo apropriado para senhas.', TRUE),
(886, 'Guardar senhas em texto puro para facilitar recuperação.', FALSE),
(886, 'Usar apenas codificação Base64 como proteção.', FALSE),
(886, 'Enviar a senha de todos os usuários em cada resposta.', FALSE),

-- QUESTAO 38 | ID 887 | CORRETA: D
(887, 'Um teste restrito à cor dos botões.', FALSE),
(887, 'Um teste que nunca utiliza banco de dados.', FALSE),
(887, 'Um teste executado somente antes da escrita do código.', FALSE),
(887, 'Um teste que verifica a interação entre componentes reais ou integrados.', TRUE),

-- QUESTAO 39 | ID 888 | CORRETA: C
(888, 'Transformar qualquer erro em resposta 200.', FALSE),
(888, 'Expor detalhes internos completos aos clientes.', FALSE),
(888, 'Padronizar respostas e reduzir duplicação no tratamento de falhas.', TRUE),
(888, 'Ignorar exceções sem registrar informações.', FALSE),

-- QUESTAO 40 | ID 889 | CORRETA: C
(889, 'A troca diária obrigatória do domínio.', FALSE),
(889, 'A exclusão automática de todos os endpoints.', FALSE),
(889, 'Uma estratégia para evoluir contratos e gerenciar compatibilidade.', TRUE),
(889, 'O aumento da versão do sistema operacional.', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES MEDIAS
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
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
