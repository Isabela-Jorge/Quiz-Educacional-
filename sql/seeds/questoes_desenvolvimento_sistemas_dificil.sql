-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento de Sistemas I - 3º Módulo
-- TOTAL: 20 Questões Difíceis (15 pts, 15 seg)
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento de Sistemas I
SET @quiz_ds_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas I' 
       OR d.nome REGEXP 'DS I([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- Inserção das Questões Difíceis (Evitando duplicações)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a diferença entre autenticação e autorização?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a diferença entre autenticação e autorização?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?');

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos)
SELECT @quiz_ds_id, 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'DIFICIL', 15, 15 FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM questao WHERE quiz_id = @quiz_ds_id AND enunciado = 'Em uma API pública, por que aplicar limitação de taxa de requisições?');


-- ============================================================
-- INSERÇÃO DAS ALTERNATIVAS USANDO O ENUNCIADO COMO REFERÊNCIA
-- ============================================================

INSERT INTO alternativa (questao_id, texto_alternativa, is_correta)
SELECT q.id, t.texto, t.correta
FROM questao q
JOIN (
    -- Q41
    SELECT 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?' AS enun, 'Garantir que o usuário tenha autorização para qualquer recurso.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'Criptografar automaticamente o corpo da requisição.', FALSE UNION ALL
    SELECT 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'Eliminar a necessidade de verificar a expiração.', FALSE UNION ALL
    SELECT 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'Detectar se o token foi alterado ou não foi assinado por uma chave confiável.', TRUE UNION ALL
    
    -- Q42
    SELECT 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?' AS enun, 'Rejeitar a entrada com erro de validação antes da persistência.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?', 'Converter o valor silenciosamente para zero e prosseguir.', FALSE UNION ALL
    SELECT 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?', 'Remover a coluna idade da tabela de destino.', FALSE UNION ALL
    SELECT 'Uma API recebe uma idade como string \'abc\' e precisa armazená-la como inteiro. Qual conduta é correta?', 'Retornar status 201 sem efetuar validação.', FALSE UNION ALL
    
    -- Q43
    SELECT 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?' AS enun, 'O navegador recebe obrigatoriamente uma página de login.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'A requisição pode ficar sem conclusão até ocorrer timeout ou encerramento da conexão.', TRUE UNION ALL
    SELECT 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'O Express responde automaticamente com 201.', FALSE UNION ALL
    SELECT 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'O banco de dados é recriado.', FALSE UNION ALL
    
    -- Q44
    SELECT 'Qual é a diferença entre autenticação e autorização?' AS enun, 'Ambas significam apenas criptografar senhas.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Autorização substitui completamente a autenticação em qualquer sistema.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Autenticação confirma a identidade; autorização verifica permissões de acesso.', TRUE UNION ALL
    SELECT 'Qual é a diferença entre autenticação e autorização?', 'Autenticação define permissões; autorização sempre cria usuários.', FALSE UNION ALL
    
    -- Q45
    SELECT 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?' AS enun, 'Porque erros SQL nunca devem ser registrados no servidor.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'Porque toda exceção SQL é necessariamente erro do navegador.', FALSE UNION ALL
    SELECT 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'Porque a API deve sempre responder com código 200.', FALSE UNION ALL
    SELECT 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'Porque podem revelar estrutura do banco e outras informações úteis a ataques.', TRUE UNION ALL
    
    -- Q46
    SELECT 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?' AS enun, 'Impede a repetição de valores não nulos iguais na coluna, conforme a collation applied.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'Obriga todos os emails a terminarem em um domínio específico.', FALSE UNION ALL
    SELECT 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'Criptografa automaticamente os emails cadastrados.', FALSE UNION ALL
    SELECT 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'Impede que a tabela tenha outras colunas.', FALSE UNION ALL
    
    -- Q47
    SELECT 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?' AS enun, 'Retornar todos os dados e ocultá-los somente no front-end.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'Verificar se o usuário tem autorização para acessar aquele recurso específico.', TRUE UNION ALL
    SELECT 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'Usar sempre o método GET, independentemente da operação.', FALSE UNION ALL
    SELECT 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'Colocar o identificador do usuário apenas na URL e confiar nele.', FALSE UNION ALL
    
    -- Q48
    SELECT 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?' AS enun, 'Para transformar consultas SQL em HTML.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'Para impedir que transações sejam executadas.', FALSE UNION ALL
    SELECT 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'Para reutilizar conexões e administrar a concorrência de acesso ao banco.', TRUE UNION ALL
    SELECT 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'Para dispensar credenciais de conexão.', FALSE UNION ALL
    
    -- Q49
    SELECT 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?' AS enun, 'Todas as demais operações são canceladas automaticamente.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'A Promise resultante sempre resolve com os resultados parciais.', FALSE UNION ALL
    SELECT 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'A rejeição é convertida automaticamente em valor null.', FALSE UNION ALL
    SELECT 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'A Promise resultante rejeita com o motivo dessa rejeição, sem cancelar automaticamente as demais operações.', TRUE UNION ALL
    
    -- Q50
    SELECT 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?' AS enun, '409 Conflict, com mensagem que não exponha dados sensíveis.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', '201 Created, indicando novo cadastro concluído.', FALSE UNION ALL
    SELECT 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', '204 No Content, mesmo sem realizar cadastro.', FALSE UNION ALL
    SELECT 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', '500 Internal Server Error, com a senha armazenada no corpo.', FALSE UNION ALL
    
    -- Q51
    SELECT 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?' AS enun, 'Ignorar erros após a primeira atualização.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'Executar ambas as operações na mesma transação e confirmar somente se todas tiverem sucesso.', TRUE UNION ALL
    SELECT 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'Executar cada operação em conexão isolada com commit imediato.', FALSE UNION ALL
    SELECT 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'Executar apenas o débito e deixar o crédito para o navegador.', FALSE UNION ALL
    
    -- Q52
    SELECT 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?' AS enun, 'Ocultar o botão de consulta na interface.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'Permitir o acesso desde que o identificador seja numérico.', FALSE UNION ALL
    SELECT 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'Conferir, no servidor, a permissão do usuário autenticado sobre o pedido solicitado.', TRUE UNION ALL
    SELECT 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'Confiar no identificador enviado pelo navegador sem consulta.', FALSE UNION ALL
    
    -- Q53
    SELECT 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?' AS enun, 'O banco sempre retorna erro de sintaxe.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'O servidor passa a aceitar apenas requisições POST.', FALSE UNION ALL
    SELECT 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'A consulta automaticamente duplica as tabelas.', FALSE UNION ALL
    SELECT 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'Registros podem aparecer em páginas diferentes ou ser omitidos quando a ordem varia.', TRUE UNION ALL
    
    -- Q54
    SELECT 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?' AS enun, 'Aplicar timeout e tentativas limitadas com espera progressiva, quando pertinente.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'Repetir sem limite e sem intervalo.', FALSE UNION ALL
    SELECT 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'Deshabilitar permanentemente o tratamento de erros.', FALSE UNION ALL
    SELECT 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'Ignorar o resultado e sempre informar sucesso.', FALSE UNION ALL
    
    -- Q55
    SELECT 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?' AS enun, 'O teste de integração substitui a necessidade de testar regras de negócio.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'O unitário verifica uma unidade isolada; o de integração verifica a interação entre componentes.', TRUE UNION ALL
    SELECT 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'O unitário exige sempre internet; o de integração nunca usa dependências.', FALSE UNION ALL
    SELECT 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'Ambos testam somente a aparência da interface.', FALSE UNION ALL
    
    -- Q56
    SELECT 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?' AS enun, 'Confiar exclusivamente na assinatura até o token expirar.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'Remover o campo exp do token.', FALSE UNION ALL
    SELECT 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'Implementar controle de revogação ou sessões no servidor e verificá-lo nas requisições.', TRUE UNION ALL
    SELECT 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'Apenas aumentar o prazo de validade dos tokens.', FALSE UNION ALL
    
    -- Q57
    SELECT 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?' AS enun, 'O SQL deixa de aceitar cláusulas WHERE.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'A tabela passa automaticamente a ser somente leitura.', FALSE UNION ALL
    SELECT 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'Toda requisição retorna status 404.', FALSE UNION ALL
    SELECT 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'Duas operações simultâneas podem usar o mesmo saldo inicial e produzir atualização incorreta.', TRUE UNION ALL
    
    -- Q58
    SELECT 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?' AS enun, 'Porque o estado transacional está associado à conexão que iniciou a transação.' AS texto, TRUE AS correta UNION ALL
    SELECT 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'Porque cada instrução precisa criar um banco diferente.', FALSE UNION ALL
    SELECT 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'Porque transações SQL não permitem mais de uma instrução.', FALSE UNION ALL
    SELECT 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'Porque conexões de pool nunca suportam transações.', FALSE UNION ALL
    
    -- Q59
    SELECT 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?' AS enun, 'Garantir que requisições nunca apresentem falhas.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'Relacionar eventos e mensagens de uma mesma requisição durante o diagnóstico.', TRUE UNION ALL
    SELECT 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'Substituir a autenticação do usuário.', FALSE UNION ALL
    SELECT 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'Criptografar automaticamente o banco de dados.', FALSE UNION ALL
    
    -- Q60
    SELECT 'Em uma API pública, por que aplicar limitação de taxa de requisições?' AS enun, 'Para substituir validação de entrada e autenticação.' AS texto, FALSE AS correta UNION ALL
    SELECT 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'Para eliminar o custo de armazenamento de dados.', FALSE UNION ALL
    SELECT 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'Para reduzir abuso e consumo excessivo de recursos por clientes.', TRUE UNION ALL
    SELECT 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'Para garantir que toda chamada receba status 200.', FALSE UNION ALL
) t ON t.enun = q.enunciado
WHERE q.quiz_id = @quiz_ds_id
  AND NOT EXISTS (
      SELECT 1 FROM alternativa a WHERE a.questao_id = q.id AND a.texto_alternativa = t.texto
  );


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
WHERE q.quiz_id = @quiz_ds_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
