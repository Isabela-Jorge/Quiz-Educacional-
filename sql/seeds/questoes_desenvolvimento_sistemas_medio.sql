


-- ============================================================
-- DS I | Questões 21 a 40 | Nível médio (10 pontos, 15 seg)
-- ============================================================

INSERT INTO questao (quiz_id, enunciado, dificuldade, pontos, tempo_limite_segundos) VALUES
(@quiz_ds_id, 'Ao receber JSON em uma API, por que validar os dados de entrada?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é a diferença entre os métodos PUT e PATCH na semântica usual de APIs HTTP?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual código HTTP é apropriado quando uma requisição exige autenticação e não apresenta credenciais válidas?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Em uma API, qual é a vantagem de separar rotas, controladores e modelos?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Por que consultas SQL parametrizadas são recomendadas?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Em JavaScript, o que a palavra-chave async indica ao declarar uma função?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é o papel de um middleware no Express?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual resposta HTTP é adequada para uma operação DELETE bem-sucedida que não retorna corpo?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é a finalidade de um arquivo de variáveis de ambiente em um projeto back-end?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual risco surge quando uma API retorna diretamente o hash da senha de um usuário?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Ao usar await dentro de try/catch, qual é a finalidade do catch?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é o benefício de usar uma chave estrangeira entre pedido e cliente?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'O que é paginação em um endpoint de listagem?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é a função do comando npm install em um projeto Node.js?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual prática reduz o risco de armazenar senhas de maneira insegura?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Em uma API REST, o que significa uma operação idempotente?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Quando usar uma transação em uma operação que grava em duas tabelas relacionadas?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual é a função de um índice em uma coluna consultada frequentemente?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Qual cabeçalho HTTP costuma informar o tipo de mídia do corpo de uma requisição?', 'MEDIO', 10, 15),
(@quiz_ds_id, 'Por que é importante diferenciar erros do cliente (4xx) de erros do servidor (5xx)?', 'MEDIO', 10, 15);

-- ALTERNATIVAS QUESTÕES 21 a 40 (MÉDIO)
INSERT INTO alternativa (questao_id, texto_alternativa, is_correta) VALUES
-- Q21 (Gabarito: D)
(ID_Q21, 'Para garantir que todo pedido tenha status 200.', FALSE),
(ID_Q21, 'Para dispensar a autenticação dos usuários.', FALSE),
(ID_Q21, 'Para transformar qualquer dado em senha segura.', FALSE),
(ID_Q21, 'Para rejeitar valores inválidos antes de executar operações.', TRUE),

-- Q22 (Gabarito: A)
(ID_Q22, 'PUT representa a substituição do estado do recurso; PATCH aplica modificações parciais.', TRUE),
(ID_Q22, 'PUT apenas consulta recursos; PATCH sempre os exclui.', FALSE),
(ID_Q22, 'PUT e PATCH são métodos exclusivos para arquivos HTML.', FALSE),
(ID_Q22, 'PATCH é obrigatório para qualquer resposta de sucesso.', FALSE),

-- Q23 (Gabarito: B)
(ID_Q23, '304.', FALSE),
(ID_Q23, '401.', TRUE),
(ID_Q23, '200.', FALSE),
(ID_Q23, '201.', FALSE),

-- Q24 (Gabarito: C)
(ID_Q24, 'Impedir que o servidor utilize banco de dados.', FALSE),
(ID_Q24, 'Garantir automaticamente que todo código seja seguro.', FALSE),
(ID_Q24, 'Organizar responsabilidades e facilitar manutenção e testes.', TRUE),
(ID_Q24, 'Eliminar a necessidade de tratar erros.', FALSE),

-- Q25 (Gabarito: D)
(ID_Q25, 'Porque permitem executar qualquer SQL sem permissões.', FALSE),
(ID_Q25, 'Porque substituem o uso de índices em tabelas.', FALSE),
(ID_Q25, 'Porque tornam desnecessária a validação de tipos.', FALSE),
(ID_Q25, 'Porque separam valores fornecidos pelo usuário da estrutura do comando SQL.', TRUE),

-- Q26 (Gabarito: A)
(ID_Q26, 'Que a função retorna uma Promise e pode usar await.', TRUE),
(ID_Q26, 'Que a função será executada somente uma vez.', FALSE),
(ID_Q26, 'Que a função não pode lançar exceções.', FALSE),
(ID_Q26, 'Que a função sempre executa em uma nova thread.', FALSE),

-- Q27 (Gabarito: B)
(ID_Q27, 'Substituir o protocolo HTTP por FTP.', FALSE),
(ID_Q27, 'Executar processamento intermediário no fluxo de requisições e respostas.', TRUE),
(ID_Q27, 'Criar automaticamente as tabelas do banco.', FALSE),
(ID_Q27, 'Desenhar elementos visuais da página.', FALSE),

-- Q28 (Gabarito: C)
(ID_Q28, '401 Unauthorized.', FALSE),
(ID_Q28, '500 Internal Server Error.', FALSE),
(ID_Q28, '204 No Content.', TRUE),
(ID_Q28, '404 Not Found.', FALSE),

-- Q29 (Gabarito: D)
(ID_Q29, 'Armazenar obrigatoriamente todos os registros dos usuários.', FALSE),
(ID_Q29, 'Substituir o gerenciador de pacotes do projeto.', FALSE),
(ID_Q29, 'Eliminar a necessidade de configuração do servidor.', FALSE),
(ID_Q29, 'Configurar valores que variam entre ambientes sem fixá-los no código-fonte.', TRUE),

-- Q30 (Gabarito: A)
(ID_Q30, 'Exposição desnecessária de informação sensível.', TRUE),
(ID_Q30, 'Aumento automático do tempo de expiração do token.', FALSE),
(ID_Q30, 'Impossibilidade de serializar qualquer objeto JSON.', FALSE),
(ID_Q30, 'Conversão do hash em texto puro pelo navegador.', FALSE),

-- Q31 (Gabarito: B)
(ID_Q31, 'Transformar toda resposta em status 201.', FALSE),
(ID_Q31, 'Tratar rejeições e erros lançados durante a operação aguardada.', TRUE),
(ID_Q31, 'Garantir que a operação nunca falhe.', FALSE),
(ID_Q31, 'Repetir a requisição indefinidamente.', FALSE),

-- Q32 (Gabarito: C)
(ID_Q32, 'Criptografar automaticamente os dados dos pedidos.', FALSE),
(ID_Q32, 'Evitar a necessidade de realizar consultas JOIN.', FALSE),
(ID_Q32, 'Impedir referências a clientes inexistentes, conforme as regras da restrição.', TRUE),
(ID_Q32, 'Permitir pedidos sem qualquer identificador.', FALSE),

-- Q33 (Gabarito: D)
(ID_Q33, 'Converter a API em páginas HTML estáticas.', FALSE),
(ID_Q33, 'Duplicar todos os registros antes de enviá-los.', FALSE),
(ID_Q33, 'Executar uma requisição para cada campo de uma tabela.', FALSE),
(ID_Q33, 'Dividir resultados em conjuntos menores, acessados por páginas ou cursores.', TRUE),

-- Q34 (Gabarito: A)
(ID_Q34, 'Instalar dependências declaradas ou especificadas para o projeto.', TRUE),
(ID_Q34, 'Inicializar obrigatoriamente um banco MySQL.', FALSE),
(ID_Q34, 'Publicar automaticamente o servidor na internet.', FALSE),
(ID_Q34, 'Executar testes de carga no navegador.', FALSE),

-- Q35 (Gabarito: B)
(ID_Q35, 'Registrar senhas completas nos logs do servidor.', FALSE),
(ID_Q35, 'Usar algoritmo apropriado de hash de senhas com salt, como bcrypt ou Argon2.', TRUE),
(ID_Q35, 'Salvar as senhas diretamente em texto puro.', FALSE),
(ID_Q35, 'Codificar senhas em Base64 e tratá-las como criptografadas.', FALSE),

-- Q36 (Gabarito: C)
(ID_Q36, 'A operação necessariamente cria um novo recurso.', FALSE),
(ID_Q36, 'A operação nunca depende de autenticação.', FALSE),
(ID_Q36, 'Repetir a mesma requisição tem o mesmo efeito pretendido no estado do servidor que executá-la uma vez.', TRUE),
(ID_Q36, 'A operação sempre retorna o mesmo horário.', FALSE),

-- Q37 (Gabarito: D)
(ID_Q37, 'Quando se deseja ignorar erros de integridade.', FALSE),
(ID_Q37, 'Quando a aplicação não utiliza conexão com banco.', FALSE),
(ID_Q37, 'Quando cada gravação precisa ser confirmada independentemente.', FALSE),
(ID_Q37, 'Quando as duas gravações devem ser confirmadas ou desfeitas como uma unidade.', TRUE),

-- Q38 (Gabarito: A)
(ID_Q38, 'Ajudar o banco a localizar registros com maior eficiência em consultas adequadas.', TRUE),
(ID_Q38, 'Garantir que qualquer consulta seja instantânea.', FALSE),
(ID_Q38, 'Substituir as restrições de chave estrangeira.', FALSE),
(ID_Q38, 'Impedir alterações em todos os registros.', FALSE),

-- Q39 (Gabarito: B)
(ID_Q39, 'Cache-Control.', FALSE),
(ID_Q39, 'Content-Type.', TRUE),
(ID_Q39, 'Accept-Language.', FALSE),
(ID_Q39, 'User-Agent.', FALSE),

-- Q40 (Gabarito: C)
(ID_Q40, 'Para ocultar qualquer problema de autenticação.', FALSE),
(ID_Q40, 'Para impedir que a API produza mensagens JSON.', FALSE),
(ID_Q40, 'Para comunicar se a falha está relacionada à requisição ou ao processamento do servidor.', TRUE),
(ID_Q40, 'Para garantir que todos os erros sejam corrigidos pelo navegador.', FALSE);




-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES Médias DE DS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;