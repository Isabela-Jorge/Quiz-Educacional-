
-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================


-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas I - MÓDULO 2
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Desenvolvimento de Sistemas I
SET @quiz_ds1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I'
      AND d.modulo = 2
    LIMIT 1
);


-- ==================================================================
-- DESENVOLVIMENTO DE SISTEMAS I | QUESTÕES 41 A 60 | NÍVEL DIFÍCIL
-- ==================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds1_id, 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Uma API recebe uma idade como string ''abc'' e precisa armazená-la como inteiro. Qual conduta é correta?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual é a diferença entre autenticação e autorização?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'DIFICIL', 15, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES DIFÍCEIS
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_ds1_id
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ===================================================================
-- DESENVOLVIMENTO DE SISTEMAS I | ALTERNATIVAS DAS QUESTÕES 41 A 60
-- ===================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTÃO 41 | ID 590 | GABARITO D
(590, 'Garantir que o usuário tenha autorização para qualquer recurso.', FALSE),
(590, 'Criptografar automaticamente o corpo da requisição.', FALSE),
(590, 'Eliminar a necessidade de verificar a expiração.', FALSE),
(590, 'Detectar se o token foi alterado ou não foi assinado por uma chave confiável.', TRUE),

-- QUESTÃO 42 | ID 591 | GABARITO A
(591, 'Rejeitar a entrada com erro de validação antes da persistência.', TRUE),
(591, 'Converter o valor silenciosamente para zero e prosseguir.', FALSE),
(591, 'Remover a coluna idade da tabela de destino.', FALSE),
(591, 'Retornar status 201 sem efetuar validação.', FALSE),

-- QUESTÃO 43 | ID 592 | GABARITO B
(592, 'O navegador recebe obrigatoriamente uma página de login.', FALSE),
(592, 'A requisição pode ficar sem conclusão até ocorrer timeout ou encerramento da conexão.', TRUE),
(592, 'O Express responde automaticamente com 201.', FALSE),
(592, 'O banco de dados é recriado.', FALSE),

-- QUESTÃO 44 | ID 593 | GABARITO C
(593, 'Ambas significam apenas criptografar senhas.', FALSE),
(593, 'Autorização substitui completamente a autenticação em qualquer sistema.', FALSE),
(593, 'Autenticação confirma a identidade; autorização verifica permissões de acesso.', TRUE),
(593, 'Autenticação define permissões; autorização sempre cria usuários.', FALSE),

-- QUESTÃO 45 | ID 594 | GABARITO D
(594, 'Porque erros SQL nunca devem ser registrados no servidor.', FALSE),
(594, 'Porque toda exceção SQL é necessariamente erro do navegador.', FALSE),
(594, 'Porque a API deve sempre responder com código 200.', FALSE),
(594, 'Porque podem revelar estrutura do banco e outras informações úteis a ataques.', TRUE),

-- QUESTÃO 46 | ID 595 | GABARITO A
(595, 'Impede a repetição de valores não nulos iguais na coluna, conforme a collation aplicada.', TRUE),
(595, 'Obriga todos os emails a terminarem em um domínio específico.', FALSE),
(595, 'Criptografa automaticamente os emails cadastrados.', FALSE),
(595, 'Impede que a tabela tenha outras colunas.', FALSE),

-- QUESTÃO 47 | ID 596 | GABARITO B
(596, 'Retornar todos os dados e ocultá-los somente no front-end.', FALSE),
(596, 'Verificar se o usuário tem autorização para acessar aquele recurso específico.', TRUE),
(596, 'Usar sempre o método GET, independentemente da operação.', FALSE),
(596, 'Colocar o identificador do usuário apenas na URL e confiar nele.', FALSE),

-- QUESTÃO 48 | ID 597 | GABARITO C
(597, 'Para transformar consultas SQL em HTML.', FALSE),
(597, 'Para impedir que transações sejam executadas.', FALSE),
(597, 'Para reutilizar conexões e administrar a concorrência de acesso ao banco.', TRUE),
(597, 'Para dispensar credenciais de conexão.', FALSE),

-- QUESTÃO 49 | ID 598 | GABARITO D
(598, 'Todas as demais operações são canceladas automaticamente.', FALSE),
(598, 'A Promise resultante sempre resolve com os resultados parciais.', FALSE),
(598, 'A rejeição é convertida automaticamente em valor null.', FALSE),
(598, 'A Promise resultante rejeita com o motivo dessa rejeição, sem cancelar automaticamente as demais operações.', TRUE),

-- QUESTÃO 50 | ID 599 | GABARITO A
(599, '409 Conflict, com mensagem que não exponha dados sensíveis.', TRUE),
(599, '201 Created, indicando novo cadastro concluído.', FALSE),
(599, '204 No Content, mesmo sem realizar cadastro.', FALSE),
(599, '500 Internal Server Error, com a senha armazenada no corpo.', FALSE),

-- QUESTÃO 51 | ID 600 | GABARITO B
(600, 'Ignorar erros após a primeira atualização.', FALSE),
(600, 'Executar ambas as operações na mesma transação e confirmar somente se todas tiverem sucesso.', TRUE),
(600, 'Executar cada operação em conexão isolada com commit imediato.', FALSE),
(600, 'Executar apenas o débito e deixar o crédito para o navegador.', FALSE),

-- QUESTÃO 52 | ID 601 | GABARITO C
(601, 'Ocultar o botão de consulta na interface.', FALSE),
(601, 'Permitir o acesso desde que o identificador seja numérico.', FALSE),
(601, 'Conferir, no servidor, a permissão do usuário autenticado sobre o pedido solicitado.', TRUE),
(601, 'Confiar no identificador enviado pelo navegador sem consulta.', FALSE),

-- QUESTÃO 53 | ID 602 | GABARITO D
(602, 'O banco sempre retorna erro de sintaxe.', FALSE),
(602, 'O servidor passa a aceitar apenas requisições POST.', FALSE),
(602, 'A consulta automaticamente duplica as tabelas.', FALSE),
(602, 'Registros podem aparecer em páginas diferentes ou ser omitidos quando a ordem varia.', TRUE),

-- QUESTÃO 54 | ID 603 | GABARITO A
(603, 'Aplicar timeout e tentativas limitadas com espera progressiva, quando pertinente.', TRUE),
(603, 'Repetir sem limite e sem intervalo.', FALSE),
(603, 'Desabilitar permanentemente o tratamento de erros.', FALSE),
(603, 'Ignorar o resultado e sempre informar sucesso.', FALSE),

-- QUESTÃO 55 | ID 604 | GABARITO B
(604, 'O teste de integração substitui a necessidade de testar regras de negócio.', FALSE),
(604, 'O unitário verifica uma unidade isolada; o de integração verifica a interação entre componentes.', TRUE),
(604, 'O unitário exige sempre internet; o de integração nunca usa dependências.', FALSE),
(604, 'Ambos testam somente a aparência da interface.', FALSE),

-- QUESTÃO 56 | ID 605 | GABARITO C
(605, 'Confiar exclusivamente na assinatura até o token expirar.', FALSE),
(605, 'Remover o campo exp do token.', FALSE),
(605, 'Implementar controle de revogação ou sessões no servidor e verificá-lo nas requisições.', TRUE),
(605, 'Apenas aumentar o prazo de validade dos tokens.', FALSE),

-- QUESTÃO 57 | ID 606 | GABARITO D
(606, 'O SQL deixa de aceitar cláusulas WHERE.', FALSE),
(606, 'A tabela passa automaticamente a ser somente leitura.', FALSE),
(606, 'Toda requisição retorna status 404.', FALSE),
(606, 'Duas operações simultâneas podem usar o mesmo saldo inicial e produzir atualização incorreta.', TRUE),

-- QUESTÃO 58 | ID 607 | GABARITO A
(607, 'Porque o estado transacional está associado à conexão que iniciou a transação.', TRUE),
(607, 'Porque cada instrução precisa criar um banco diferente.', FALSE),
(607, 'Porque transações SQL não permitem mais de uma instrução.', FALSE),
(607, 'Porque conexões de pool nunca suportam transações.', FALSE),

-- QUESTÃO 59 | ID 608 | GABARITO B
(608, 'Garantir que requisições nunca apresentem falhas.', FALSE),
(608, 'Relacionar eventos e mensagens de uma mesma requisição durante o diagnóstico.', TRUE),
(608, 'Substituir a autenticação do usuário.', FALSE),
(608, 'Criptografar automaticamente o banco de dados.', FALSE),

-- QUESTÃO 60 | ID 609 | GABARITO C
(609, 'Para substituir validação de entrada e autenticação.', FALSE),
(609, 'Para eliminar o custo de armazenamento de dados.', FALSE),
(609, 'Para reduzir abuso e consumo excessivo de recursos por clientes.', TRUE),
(609, 'Para garantir que toda chamada receba status 200.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES 
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
WHERE q.quiz_id = 13
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
