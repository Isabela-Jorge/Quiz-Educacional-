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
--    WHERE quiz_id = @quiz_ds1_id
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
-- DISCIPLINA: Desenvolvimento de Sistemas I - 2º Módulo
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas I
SET @quiz_ds1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I' 
       OR d.nome REGEXP 'DS I([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- DS I | Questões 41 a 60 | Nível difícil
-- 15 pontos | 15 segundos
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds1_id, 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'DIFICIL', 15, 15),
(@quiz_ds1_id, 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?', 'DIFICIL', 15, 15),
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
-- DS I | Alternativas das questões 41 a 60
-- (Nota: Ajuste os IDs da coluna questao_id conforme a sua base local gerada)
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | Correta: D
(1, 'Garantir que o usuário tenha autorização para qualquer recurso.', FALSE),
(1, 'Criptografar automaticamente o corpo da requisição.', FALSE),
(1, 'Eliminar a necessidade de verificar a expiração.', FALSE),
(1, 'Detectar se o token foi alterado ou não foi assinado por uma chave confiável.', TRUE),

-- Questão 42 | Correta: A
(2, 'Rejeitar a entrada com erro de validação antes da persistência.', TRUE),
(2, 'Converter o valor silenciosamente para zero e prosseguir.', FALSE),
(2, 'Remover a coluna idade da tabela de destino.', FALSE),
(2, 'Retornar status 201 sem efetuar validação.', FALSE),

-- Questão 43 | Correta: B
(3, 'O navegador recebe obrigatoriamente uma página de login.', FALSE),
(3, 'A requisição pode ficar sem conclusão até ocorrer timeout ou encerramento da conexão.', TRUE),
(3, 'O Express responde automaticamente com 201.', FALSE),
(3, 'O banco de dados é recriado.', FALSE),

-- Questão 44 | Correta: C
(4, 'Ambas significam apenas criptografar senhas.', FALSE),
(4, 'Autorização substitui completamente a autenticação em qualquer sistema.', FALSE),
(4, 'Autenticação confirma a identidade; autorização verifica permissões de acesso.', TRUE),
(4, 'Autenticação define permissões; autorização sempre cria usuários.', FALSE),

-- Questão 45 | Correta: D
(5, 'Porque erros SQL nunca devem ser registrados no servidor.', FALSE),
(5, 'Porque toda exceção SQL é necessariamente erro do navegador.', FALSE),
(5, 'Porque a API deve sempre responder com código 200.', FALSE),
(5, 'Porque podem revelar estrutura do banco e outras informações úteis a ataques.', TRUE),

-- Questão 46 | Correta: A
(6, 'Impede a repetição de valores não nulos iguais na coluna, conforme a collation applied.', TRUE),
(6, 'Obriga todos os emails a terminarem em um domínio específico.', FALSE),
(6, 'Criptografa automaticamente os emails cadastrados.', FALSE),
(6, 'Impede que a tabela tenha outras colunas.', FALSE),

-- Questão 47 | Correta: B
(7, 'Retornar todos os dados e ocultá-los somente no front-end.', FALSE),
(7, 'Verificar se o usuário tem autorização para acessar aquele recurso específico.', TRUE),
(7, 'Usar sempre o método GET, independentemente da operação.', FALSE),
(7, 'Colocar o identificador do usuário apenas na URL e confiar nele.', FALSE),

-- Questão 48 | Correta: C
(8, 'Para transformar consultas SQL em HTML.', FALSE),
(8, 'Para impedir que transações sejam executadas.', FALSE),
(8, 'Para reutilizar conexões e administrar a concorrência de acesso ao banco.', TRUE),
(8, 'Para dispensar credenciais de conexão.', FALSE),

-- Questão 49 | Correta: D
(9, 'Todas as demais operações são canceladas automaticamente.', FALSE),
(9, 'A Promise resultante sempre resolve com os resultados parciais.', FALSE),
(9, 'A rejeição é convertida automaticamente em valor null.', FALSE),
(9, 'A Promise resultante rejeita com o motivo dessa rejeição, sem cancelar automaticamente as demais operações.', TRUE),

-- Questão 50 | Correta: A
(10, '409 Conflict, com mensagem que não exponha dados sensíveis.', TRUE),
(10, '201 Created, indicando novo cadastro concluído.', FALSE),
(10, '204 No Content, mesmo sem realizar cadastro.', FALSE),
(10, '500 Internal Server Error, com a senha armazenada no corpo.', FALSE),

-- Questão 51 | Correta: B
(11, 'Ignorar erros após a primeira atualização.', FALSE),
(11, 'Executar ambas as operações na mesma transação e confirmar somente se todas tiverem sucesso.', TRUE),
(11, 'Executar cada operação em conexão isolada com commit imediato.', FALSE),
(11, 'Executar apenas o débito e deixar o crédito para o navegador.', FALSE),

-- Questão 52 | Correta: C
(12, 'Ocultar o botão de consulta na interface.', FALSE),
(12, 'Permitir o acesso desde que o identificador seja numérico.', FALSE),
(12, 'Conferir, no servidor, a permissão do usuário autenticado sobre o pedido solicitado.', TRUE),
(12, 'Confiar no identificador enviado pelo navegador sem consulta.', FALSE),

-- Questão 53 | Correta: D
(13, 'O banco sempre retorna erro de sintaxe.', FALSE),
(13, 'O servidor passa a aceitar apenas requisições POST.', FALSE),
(13, 'A consulta automaticamente duplica as tabelas.', FALSE),
(13, 'Registros podem aparecer em páginas diferentes ou ser omitidos quando a ordem varia.', TRUE),

-- Questão 54 | Correta: A
(14, 'Aplicar timeout e tentativas limitadas com espera progressiva, quando pertinente.', TRUE),
(14, 'Repetir sem limite e sem intervalo.', FALSE),
(14, 'Deshabilitar permanentemente o tratamento de erros.', FALSE),
(14, 'Ignorar o resultado e sempre informar sucesso.', FALSE),

-- Questão 55 | Correta: B
(15, 'O teste de integração substitui a necessidade de testar regras de negócio.', FALSE),
(15, 'O unitário verifica uma unidade isolada; o de integração verifica a interação entre componentes.', TRUE),
(15, 'O unitário exige sempre internet; o de integração nunca usa dependências.', FALSE),
(15, 'Ambos testam somente a aparência da interface.', FALSE),

-- Questão 56 | Correta: C
(16, 'Confiar exclusivamente na assinatura até o token expirar.', FALSE),
(16, 'Remover o campo exp do token.', FALSE),
(16, 'Implementar controle de revogação ou sessões no servidor e verificá-lo nas requisições.', TRUE),
(16, 'Apenas aumentar o prazo de validade dos tokens.', FALSE),

-- Questão 57 | Correta: D
(17, 'O SQL deixa de aceitar cláusulas WHERE.', FALSE),
(17, 'A tabela passa automaticamente a ser somente leitura.', FALSE),
(17, 'Toda requisição retorna status 404.', FALSE),
(17, 'Duas operações simultâneas podem usar o mesmo saldo inicial e produzir atualização incorreta.', TRUE),

-- Questão 58 | Correta: A
(18, 'Porque o estado transacional está associado à conexão que iniciou a transação.', TRUE),
(18, 'Porque cada instrução precisa criar um banco diferente.', FALSE),
(18, 'Porque transações SQL não permitem mais de uma instrução.', FALSE),
(18, 'Porque conexões de pool nunca suportam transações.', FALSE),

-- Questão 59 | Correta: B
(19, 'Garantir que requisições nunca apresentem falhas.', FALSE),
(19, 'Relacionar eventos e mensagens de uma mesma requisição durante o diagnóstico.', TRUE),
(19, 'Substituir a autenticação do usuário.', FALSE),
(19, 'Criptografar automaticamente o banco de dados.', FALSE),

-- Questão 60 | Correta: C
(20, 'Para substituir validação de entrada e autenticação.', FALSE),
(20, 'Para eliminar o custo de armazenamento de dados.', FALSE),
(20, 'Para reduzir abuso e consumo excessivo de recursos por clientes.', TRUE),
(20, 'Para garantir que toda chamada receba status 200.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE DS I
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
WHERE q.quiz_id = @quiz_ds1_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
