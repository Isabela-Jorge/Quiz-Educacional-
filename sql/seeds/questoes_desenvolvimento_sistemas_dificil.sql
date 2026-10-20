-- ====
-- ============================================================
-- DS I | Questões 41 a 60 | Nível difícil (15 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
(@quiz_ds_id, 'Em uma API com JWT, qual é a finalidade de validar a assinatura do token?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Uma API recebe uma idade como string 'abc' e precisa armazená-la como inteiro. Qual conduta é correta?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em uma aplicação Express, o que pode acontecer se um middleware não enviar resposta nem chamar next()?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual é a diferença entre autenticação e autorização?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em uma API, por que evitar devolver detalhes internos de exceções SQL ao cliente?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual é o efeito de uma restrição UNIQUE sobre a coluna email em MySQL?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Ao criar um endpoint que retorna dados privados, qual medida deve ser aplicada além da autenticação?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Por que um pool de conexões costuma ser usado no acesso ao MySQL?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em JavaScript, o que ocorre com Promise.all quando uma das Promises fornecidas rejeita?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em um cadastro de usuários, qual é a resposta mais apropriada quando o email já existe e viola uma regra de unicidade?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Uma transferência entre contas exige debitar uma conta e creditar outra. Qual abordagem preserva atomicidade?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Uma API recebe o identificador de um pedido pela URL. Como evitar que um usuário veja pedidos de terceiros?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual é o risco de implementar paginação com LIMIT e OFFSET sem uma ordenação determinística?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Um serviço externo está temporariamente indisponível. Qual estratégia é apropriada para uma chamada idempotente?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual é a diferença entre um teste unitário e um teste de integração no back-end?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Uma aplicação utiliza JWT assinado, mas precisa invalidar imediatamente tokens de um usuário. Qual alternativa atende a esse requisito?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual problema pode surgir ao fazer SELECT, verificar saldo e depois UPDATE sem controle de concorrência?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em uma operação com transação, por que usar a mesma conexão para todas as instruções?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Qual é a principal finalidade de um identificador de correlação nos logs de uma API?', 'DIFICIL', 15, 15),
(@quiz_ds_id, 'Em uma API pública, por que aplicar limitação de taxa de requisições?', 'DIFICIL', 15, 15);

-- ALTERNATIVAS QUESTÕES 41 a 60 (DIFÍCIL)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q41 (Gabarito: D)
(ID_Q41, 'Garantir que o usuário tenha autorização para qualquer recurso.', FALSE),
(ID_Q41, 'Criptografar automaticamente o corpo da requisição.', FALSE),
(ID_Q41, 'Eliminar a necessidade de verificar a expiração.', FALSE),
(ID_Q41, 'Detectar se o token foi alterado ou não foi assinado por uma chave confiável.', TRUE),

-- Q42 (Gabarito: A)
(ID_Q42, 'Rejeitar a entrada com erro de validação antes da persistência.', TRUE),
(ID_Q42, 'Converter o valor silenciosamente para zero e prosseguir.', FALSE),
(ID_Q42, 'Remover a coluna idade da tabela de destino.', FALSE),
(ID_Q42, 'Retornar status 201 sem efetuar validação.', FALSE),

-- Q43 (Gabarito: B)
(ID_Q43, 'O navegador recebe obrigatoriamente uma página de login.', FALSE),
(ID_Q43, 'A requisição pode ficar sem conclusão até ocorrer timeout ou encerramento da conexão.', TRUE),
(ID_Q43, 'O Express responde automaticamente com 201.', FALSE),
(ID_Q43, 'O banco de dados é recriado.', FALSE),

-- Q44 (Gabarito: C)
(ID_Q44, 'Ambas significam apenas criptografar senhas.', FALSE),
(ID_Q44, 'Autorização substitui completamente a autenticação em qualquer sistema.', FALSE),
(ID_Q44, 'Autenticação confirma a identidade; autorização verifica permissões de acesso.', TRUE),
(ID_Q44, 'Autenticação define permissões; autorização sempre cria usuários.', FALSE),

-- Q45 (Gabarito: D)
(ID_Q45, 'Porque erros SQL nunca devem ser registrados no servidor.', FALSE),
(ID_Q45, 'Porque toda exceção SQL é necessariamente erro do navegador.', FALSE),
(ID_Q45, 'Porque a API deve sempre responder com código 200.', FALSE),
(ID_Q45, 'Porque podem revelar estrutura do banco e outras informações úteis a ataques.', TRUE),

-- Q46 (Gabarito: A)
(ID_Q46, 'Impede a repetição de valores não nulos iguais na coluna, conforme a collation aplicada.', TRUE),
(ID_Q46, 'Obriga todos os emails a terminarem em um domínio específico.', FALSE),
(ID_Q46, 'Criptografa automaticamente os emails cadastrados.', FALSE),
(ID_Q46, 'Impede que a tabela tenha outras colunas.', FALSE),

-- Q47 (Gabarito: B)
(ID_Q47, 'Retornar todos os dados e ocultá-los somente no front-end.', FALSE),
(ID_Q47, 'Verificar se o usuário tem autorização para acessar aquele recurso específico.', TRUE),
(ID_Q47, 'Usar sempre o método GET, independentemente da operação.', FALSE),
(ID_Q47, 'Colocar o identificador do usuário apenas na URL e confiar nele.', FALSE),

-- Q48 (Gabarito: C)
(ID_Q48, 'Para transformar consultas SQL em HTML.', FALSE),
(ID_Q48, 'Para impedir que transações sejam executadas.', FALSE),
(ID_Q48, 'Para reutilizar conexões e administrar a concorrência de acesso ao banco.', TRUE),
(ID_Q48, 'Para dispensar credenciais de conexão.', FALSE),

-- Q49 (Gabarito: D)
(ID_Q49, 'Todas as demais operações são canceladas automaticamente.', FALSE),
(ID_Q49, 'A Promise resultante sempre resolve com os resultados parciais.', FALSE),
(ID_Q49, 'A rejeição é convertida automaticamente em valor null.', FALSE),
(ID_Q49, 'A Promise resultante rejeita com o motivo dessa rejeição, sem cancelar automaticamente as demais operações.', TRUE),

-- Q50 (Gabarito: A)
(ID_Q50, '409 Conflict, com mensagem que não exponha dados sensíveis.', TRUE),
(ID_Q50, '201 Created, indicando novo cadastro concluído.', FALSE),
(ID_Q50, '204 No Content, mesmo sem realizar cadastro.', FALSE),
(ID_Q50, '500 Internal Server Error, com a senha armazenada no corpo.', FALSE),

-- Q51 (Gabarito: B)
(ID_Q51, 'Ignorar erros após a primeira atualização.', FALSE),
(ID_Q51, 'Executar ambas as operações na mesma transação e confirmar somente se todas tiverem sucesso.', TRUE),
(ID_Q51, 'Executar cada operação em conexão isolada com commit imediato.', FALSE),
(ID_Q51, 'Executar apenas o débito e deixar o crédito para o navegador.', FALSE),

-- Q52 (Gabarito: C)
(ID_Q52, 'Ocultar o botão de consulta na interface.', FALSE),
(ID_Q52, 'Permitir o acesso desde que o identificador seja numérico.', FALSE),
(ID_Q52, 'Conferir, no servidor, a permissão do usuário autenticado sobre o pedido solicitado.', TRUE),
(ID_Q52, 'Confiar no identificador enviado pelo navegador sem consulta.', FALSE),

-- Q53 (Gabarito: D)
(ID_Q53, 'O banco sempre retorna erro de sintaxe.', FALSE),
(ID_Q53, 'O servidor passa a aceitar apenas requisições POST.', FALSE),
(ID_Q53, 'A consulta automaticamente duplica as tabelas.', FALSE),
(ID_Q53, 'Registros podem aparecer em páginas diferentes ou ser omitidos quando a ordem varia.', TRUE),

-- Q54 (Gabarito: A)
(ID_Q54, 'Aplicar timeout e tentativas limitadas com espera progressiva, quando pertinente.', TRUE),
(ID_Q54, 'Repetir sem limite e sem intervalo.', FALSE),
(ID_Q54, 'Deshabilitar permanentemente o tratamento de erros.', FALSE),
(ID_Q54, 'Ignorar o resultado e sempre informar sucesso.', FALSE),

-- Q55 (Gabarito: B)
(ID_Q55, 'O teste de integração substitui a necessidade de testar regras de negócio.', FALSE),
(ID_Q55, 'O unitário verifica uma unidade isolada; o de integração verifica a interação entre componentes.', TRUE),
(ID_Q55, 'O unitário exige sempre internet; o de integração nunca usa dependências.', FALSE),
(ID_Q55, 'Ambos testam somente a aparência da interface.', FALSE),

-- Q56 (Gabarito: C)
(ID_Q56, 'Confiar exclusivamente na assinatura até o token expirar.', FALSE),
(ID_Q56, 'Remover o campo exp do token.', FALSE),
(ID_Q56, 'Implementar controle de revogação ou sessões no servidor e verificá-lo nas requisições.', TRUE),
(ID_Q56, 'Apenas aumentar o prazo de validade dos tokens.', FALSE),

-- Q57 (Gabarito: D)
(ID_Q57, 'O SQL deixa de aceitar cláusulas WHERE.', FALSE),
(ID_Q57, 'A tabela passa automaticamente a ser somente leitura.', FALSE),
(ID_Q57, 'Toda requisição retorna status 404.', FALSE),
(ID_Q57, 'Duas operações simultâneas podem usar o mesmo saldo inicial e produzir atualização incorreta.', TRUE),

-- Q58 (Gabarito: A)
(ID_Q58, 'Porque o estado transacional está associado à conexão que iniciou a transação.', TRUE),
(ID_Q58, 'Porque cada instrução precisa criar um banco diferente.', FALSE),
(ID_Q58, 'Porque transações SQL não permitem mais de uma instrução.', FALSE),
(ID_Q58, 'Porque conexões de pool nunca suportam transações.', FALSE),

-- Q59 (Gabarito: B)
(ID_Q59, 'Garantir que requisições nunca apresentem falhas.', FALSE),
(ID_Q59, 'Relacionar eventos e mensagens de uma mesma requisição durante o diagnóstico.', TRUE),
(ID_Q59, 'Substituir a autenticação do usuário.', FALSE),
(ID_Q59, 'Criptografar automaticamente o banco de dados.', FALSE),

-- Q60 (Gabarito: C)
(ID_Q60, 'Para substituir validação de entrada e autenticação.', FALSE),
(ID_Q60, 'Para eliminar o custo de armazenamento de dados.', FALSE),
(ID_Q60, 'Para reduzir abuso e consumo excessivo de recursos por clientes.', TRUE),
(ID_Q60, 'Para garantir que toda chamada receba status 200.', FALSE);



-- ============================================================
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
WHERE q.quiz_id = @quiz_ds_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;