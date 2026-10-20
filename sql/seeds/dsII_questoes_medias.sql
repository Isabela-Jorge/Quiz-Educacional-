-- ============================================================
-- DS II | Questões 21 a 40 | Nível médio (10 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
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

-- ALTERNATIVAS QUESTÕES 21 a 40 (MÉDIO)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q21 (Gabarito: A)
(ID_Q21, 'Autenticação confirma identidade; autorização verifica permissões.', TRUE),
(ID_Q21, 'Autenticação define permissões; autorização verifica identidade.', FALSE),
(ID_Q21, 'Ambas apenas criptografam o banco de dados.', FALSE),
(ID_Q21, 'Ambas são sinônimos de validação de JSON.', FALSE),

-- Q22 (Gabarito: D)
(ID_Q22, 'Ela sempre cria um novo registro.', FALSE),
(ID_Q22, 'Ela nunca retorna um código de erro.', FALSE),
(ID_Q22, 'Ela obrigatoriamente utiliza o método POST.', FALSE),
(ID_Q22, 'Repeti-la produz o mesmo efeito pretendido no estado do servidor.', TRUE),

-- Q23 (Gabarito: C)
(ID_Q23, '200 OK.', FALSE),
(ID_Q23, '201 Created.', FALSE),
(ID_Q23, '400 Bad Request.', TRUE),
(ID_Q23, '304 Not Modified.', FALSE),

-- Q24 (Gabarito: C)
(ID_Q24, '403 Forbidden, em qualquer situação.', FALSE),
(ID_Q24, '409 Conflict.', FALSE),
(ID_Q24, '401 Unauthorized.', TRUE),
(ID_Q24, '204 No Content.', FALSE),

-- Q25 (Gabarito: B)
(ID_Q25, '201 Created.', FALSE),
(ID_Q25, '403 Forbidden.', TRUE),
(ID_Q25, '301 Moved Permanently.', FALSE),
(ID_Q25, '100 Continue.', FALSE),

-- Q26 (Gabarito: A)
(ID_Q26, 'PATCH.', TRUE),
(ID_Q26, 'HEAD.', FALSE),
(ID_Q26, 'CONNECT.', FALSE),
(ID_Q26, 'TRACE.', FALSE),

-- Q27 (Gabarito: D)
(ID_Q27, 'Permitir que o usuário execute qualquer SQL.', FALSE),
(ID_Q27, 'Desativar as restrições de integridade.', FALSE),
(ID_Q27, 'Garantir que todas as consultas usem índices.', FALSE),
(ID_Q27, 'Separar dados do comando e reduzir riscos de injeção de SQL.', TRUE),

-- Q28 (Gabarito: D)
(ID_Q28, 'Um único arquivo JSON obrigatório.', FALSE),
(ID_Q28, 'Um tipo de rota HTTP.', FALSE),
(ID_Q28, 'Uma interface visual para consultas.', FALSE),
(ID_Q28, 'Um conjunto de operações tratado como unidade de trabalho.', TRUE),

-- Q29 (Gabarito: C)
(ID_Q29, 'Confirmar definitivamente todas as alterações.', FALSE),
(ID_Q29, 'Criar um índice em toda tabela.', FALSE),
(ID_Q29, 'Desfazer alterações ainda não confirmadas da transação.', TRUE),
(ID_Q29, 'Excluir o banco de dados completo.', FALSE),

-- Q30 (Gabarito: B)
(ID_Q30, 'Definir a senha do usuário.', FALSE),
(ID_Q30, 'Controlar a quantidade máxima de itens retornados por página.', TRUE),
(ID_Q30, 'Indicar o formato de uma imagem.', FALSE),
(ID_Q30, 'Escolher a linguagem do servidor.', FALSE),

-- Q31 (Gabarito: A)
(ID_Q31, 'Descrever de forma padronizada o contrato de uma API HTTP.', TRUE),
(ID_Q31, 'Substituir o protocolo HTTP.', FALSE),
(ID_Q31, 'Armazenar permanentemente os dados de produção.', FALSE),
(ID_Q31, 'Gerar energia para servidores.', FALSE),

-- Q32 (Gabarito: A)
(ID_Q32, 'Para rejeitar entradas inválidas antes de executar operações.', TRUE),
(ID_Q32, 'Para garantir que qualquer entrada seja aceita.', FALSE),
(ID_Q32, 'Para remover a necessidade de autenticação.', FALSE),
(ID_Q32, 'Para impedir toda falha de infraestrutura.', FALSE),

-- Q33 (Gabarito: D)
(ID_Q33, 'Substituir fisicamente o roteador.', FALSE),
(ID_Q33, 'Criar somente arquivos CSS.', FALSE),
(ID_Q33, 'Converter automaticamente SQL em HTML.', FALSE),
(ID_Q33, 'Executar lógica intermediária no processamento de requisições.', TRUE),

-- Q34 (Gabarito: C)
(ID_Q34, 'PUT é apenas leitura; PATCH é apenas exclusão.', FALSE),
(ID_Q34, 'Ambos servem exclusivamente para autenticação.', FALSE),
(ID_Q34, 'PUT representa substituição do recurso; PATCH, alteração parcial.', TRUE),
(ID_Q34, 'PATCH sempre substitui integralmente o recurso.', FALSE),

-- Q35 (Gabarito: B)
(ID_Q35, 'Criptografar todos os registros.', FALSE),
(ID_Q35, 'Garantir referência válida a uma chave da tabela relacionada.', TRUE),
(ID_Q35, 'Criar uma cópia automática de cada tabela.', FALSE),
(ID_Q35, 'Definir a porta HTTP da aplicação.', FALSE),

-- Q36 (Gabarito: B)
(ID_Q36, 'O servidor concluiu a criação sem conflito.', FALSE),
(ID_Q36, 'A operação conflita com o estado atual do recurso.', TRUE),
(ID_Q36, 'O conteúdo não foi modificado por cache.', FALSE),
(ID_Q36, 'A conexão foi estabelecida por WebSocket.', FALSE),

-- Q37 (Gabarito: A)
(ID_Q37, 'Armazenar hashes produzidos por algoritmo apropriado para senhas.', TRUE),
(ID_Q37, 'Guardar senhas em texto puro para facilitar recuperação.', FALSE),
(ID_Q37, 'Usar apenas codificação Base64 como proteção.', FALSE),
(ID_Q37, 'Enviar a senha de todos os usuários em cada resposta.', FALSE),

-- Q38 (Gabarito: D)
(ID_Q38, 'Um teste restrito à cor dos botões.', FALSE),
(ID_Q38, 'Um teste que nunca utiliza banco de dados.', FALSE),
(ID_Q38, 'Um teste executado somente antes da escrita do código.', FALSE),
(ID_Q38, 'Um teste que verifica a interação entre componentes reais ou integrados.', TRUE),

-- Q39 (Gabarito: C)
(ID_Q39, 'Transformar qualquer erro em resposta 200.', FALSE),
(ID_Q39, 'Expor detalhes internos completos aos clientes.', FALSE),
(ID_Q39, 'Padronizar respostas e reduzir duplicação no tratamento de falhas.', TRUE),
(ID_Q39, 'Ignorar exceções sem registrar informações.', FALSE),

-- Q40 (Gabarito: C)
(ID_Q40, 'A troca diária obrigatória do domínio.', FALSE),
(ID_Q40, 'A exclusão automática de todos os endpoints.', FALSE),
(ID_Q40, 'Uma estratégia para evoluir contratos e gerenciar compatibilidade.', TRUE),
(ID_Q40, 'O aumento da versão do sistema operacional.', FALSE);

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
  AND q.dificuldade = 'MEDIAS'
GROUP BY q.id, q.enunciado
ORDER BY q.id;