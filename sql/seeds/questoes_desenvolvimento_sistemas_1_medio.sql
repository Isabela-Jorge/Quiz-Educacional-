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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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

-- ============================================================
-- DESENVOLVIMENTO DE SISTEMAS I | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds1_id, 'Ao receber JSON em uma API, por que validar os dados de entrada?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é a diferença entre os métodos PUT e PATCH na semântica usual de APIs HTTP?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual código HTTP é apropriado quando uma requisição exige autenticação e não apresenta credenciais válidas?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Em uma API, qual é a vantagem de separar rotas, controladores e modelos?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Por que consultas SQL parametrizadas são recomendadas?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Em JavaScript, o que a palavra-chave async indica ao declarar uma função?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é o papel de um middleware no Express?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual resposta HTTP é adequada para uma operação DELETE bem-sucedida que não retorna corpo?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é a finalidade de um arquivo de variáveis de ambiente em um projeto back-end?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual risco surge quando uma API retorna diretamente o hash da senha de um usuário?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Ao usar await dentro de try/catch, qual é a finalidade do catch?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é o benefício de usar uma chave estrangeira entre pedido e cliente?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'O que é paginação em um endpoint de listagem?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é a função do comando npm install em um projeto Node.js?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual prática reduz o risco de armazenar senhas de maneira insegura?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Em uma API REST, o que significa uma operação idempotente?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Quando usar uma transação em uma operação que grava em duas tabelas relacionadas?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual é a função de um índice em uma coluna consultada frequentemente?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Qual cabeçalho HTTP costuma informar o tipo de mídia do corpo de uma requisição?', 'MEDIO', 10, 15),
(@quiz_ds1_id, 'Por que é importante diferenciar erros do cliente (4xx) de erros do servidor (5xx)?', 'MEDIO', 10, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES MÉDIAS
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_ds1_id
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ===================================================================
-- DESENVOLVIMENTO DE SISTEMAS I | ALTERNATIVAS DAS QUESTÕES 21 A 40
-- ===================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTÃO 21 | ID 570 | GABARITO D
(570, 'Para garantir que todo pedido tenha status 200.', FALSE),
(570, 'Para dispensar a autenticação dos usuários.', FALSE),
(570, 'Para transformar qualquer dado em senha segura.', FALSE),
(570, 'Para rejeitar valores inválidos antes de executar operações.', TRUE),

-- QUESTÃO 22 | ID 571 | GABARITO A
(571, 'PUT representa a substituição do estado do recurso; PATCH aplica modificações parciais.', TRUE),
(571, 'PUT apenas consulta recursos; PATCH sempre os exclui.', FALSE),
(571, 'PUT e PATCH são métodos exclusivos para arquivos HTML.', FALSE),
(571, 'PATCH é obrigatório para qualquer resposta de sucesso.', FALSE),

-- QUESTÃO 23 | ID 572 | GABARITO B
(572, '304.', FALSE),
(572, '401.', TRUE),
(572, '200.', FALSE),
(572, '201.', FALSE),

-- QUESTÃO 24 | ID 573 | GABARITO C
(573, 'Impedir que o servidor utilize banco de dados.', FALSE),
(573, 'Garantir automaticamente que todo código seja seguro.', FALSE),
(573, 'Organizar responsabilidades e facilitar manutenção e testes.', TRUE),
(573, 'Eliminar a necessidade de tratar erros.', FALSE),

-- QUESTÃO 25 | ID 574 | GABARITO D
(574, 'Porque permitem executar qualquer SQL sem permissões.', FALSE),
(574, 'Porque substituem o uso de índices em tabelas.', FALSE),
(574, 'Porque tornam desnecessária a validação de tipos.', FALSE),
(574, 'Porque separam valores fornecidos pelo usuário da estrutura do comando SQL.', TRUE),

-- QUESTÃO 26 | ID 575 | GABARITO A
(575, 'Que a função retorna uma Promise e pode usar await.', TRUE),
(575, 'Que a função será executada somente uma vez.', FALSE),
(575, 'Que a função não pode lançar exceções.', FALSE),
(575, 'Que a função sempre executa em uma nova thread.', FALSE),

-- QUESTÃO 27 | ID 576 | GABARITO B
(576, 'Substituir o protocolo HTTP por FTP.', FALSE),
(576, 'Executar processamento intermediário no fluxo de requisições e respostas.', TRUE),
(576, 'Criar automaticamente as tabelas do banco.', FALSE),
(576, 'Desenhar elementos visuais da página.', FALSE),

-- QUESTÃO 28 | ID 577 | GABARITO C
(577, '401 Unauthorized.', FALSE),
(577, '500 Internal Server Error.', FALSE),
(577, '204 No Content.', TRUE),
(577, '404 Not Found.', FALSE),

-- QUESTÃO 29 | ID 578 | GABARITO D
(578, 'Armazenar obrigatoriamente todos os registros dos usuários.', FALSE),
(578, 'Substituir o gerenciador de pacotes do projeto.', FALSE),
(578, 'Eliminar a necessidade de configuração do servidor.', FALSE),
(578, 'Configurar valores que variam entre ambientes sem fixá-los no código-fonte.', TRUE),

-- QUESTÃO 30 | ID 579 | GABARITO A
(579, 'Exposição desnecessária de informação sensível.', TRUE),
(579, 'Aumento automático do tempo de expiração do token.', FALSE),
(579, 'Impossibilidade de serializar qualquer objeto JSON.', FALSE),
(579, 'Conversão do hash em texto puro pelo navegador.', FALSE),

-- QUESTÃO 31 | ID 580 | GABARITO B
(580, 'Transformar toda resposta em status 201.', FALSE),
(580, 'Tratar rejeições e erros lançados durante a operação aguardada.', TRUE),
(580, 'Garantir que a operação nunca falhe.', FALSE),
(580, 'Repetir a requisição indefinidamente.', FALSE),

-- QUESTÃO 32 | ID 581 | GABARITO C
(581, 'Criptografar automaticamente os dados dos pedidos.', FALSE),
(581, 'Evitar a necessidade de realizar consultas JOIN.', FALSE),
(581, 'Impedir referências a clientes inexistentes, conforme as regras da restrição.', TRUE),
(581, 'Permitir pedidos sem qualquer identificador.', FALSE),

-- QUESTÃO 33 | ID 582 | GABARITO D
(582, 'Converter a API em páginas HTML estáticas.', FALSE),
(582, 'Duplicar todos os registros antes de enviá-los.', FALSE),
(582, 'Executar uma requisição para cada campo de uma tabela.', FALSE),
(582, 'Dividir resultados em conjuntos menores, acessados por páginas ou cursores.', TRUE),

-- QUESTÃO 34 | ID 583 | GABARITO A
(583, 'Instalar dependências declaradas ou especificadas para o projeto.', TRUE),
(583, 'Inicializar obrigatoriamente um banco MySQL.', FALSE),
(583, 'Publicar automaticamente o servidor na internet.', FALSE),
(583, 'Executar testes de carga no navegador.', FALSE),

-- QUESTÃO 35 | ID 584 | GABARITO B
(584, 'Registrar senhas completas nos logs do servidor.', FALSE),
(584, 'Usar algoritmo apropriado de hash de senhas com salt, como bcrypt ou Argon2.', TRUE),
(584, 'Salvar as senhas diretamente em texto puro.', FALSE),
(584, 'Codificar senhas em Base64 e tratá-las como criptografadas.', FALSE),

-- QUESTÃO 36 | ID 585 | GABARITO C
(585, 'A operação necessariamente cria um novo recurso.', FALSE),
(585, 'A operação nunca depende de autenticação.', FALSE),
(585, 'Repetir a mesma requisição tem o mesmo efeito pretendido no estado do servidor que executá-la uma vez.', TRUE),
(585, 'A operação sempre retorna o mesmo horário.', FALSE),

-- QUESTÃO 37 | ID 586 | GABARITO D
(586, 'Quando se deseja ignorar erros de integridade.', FALSE),
(586, 'Quando a aplicação não utiliza conexão com banco.', FALSE),
(586, 'Quando cada gravação precisa ser confirmada independentemente.', FALSE),
(586, 'Quando as duas gravações devem ser confirmadas ou desfeitas como uma unidade.', TRUE),

-- QUESTÃO 38 | ID 587 | GABARITO A
(587, 'Ajudar o banco a localizar registros com maior eficiência em consultas adequadas.', TRUE),
(587, 'Garantir que qualquer consulta seja instantânea.', FALSE),
(587, 'Substituir as restrições de chave estrangeira.', FALSE),
(587, 'Impedir alterações em todos os registros.', FALSE),

-- QUESTÃO 39 | ID 588 | GABARITO B
(588, 'Cache-Control.', FALSE),
(588, 'Content-Type.', TRUE),
(588, 'Accept-Language.', FALSE),
(588, 'User-Agent.', FALSE),

-- QUESTÃO 40 | ID 589 | GABARITO C
(589, 'Para ocultar qualquer problema de autenticação.', FALSE),
(589, 'Para impedir que a API produza mensagens JSON.', FALSE),
(589, 'Para comunicar se a falha está relacionada à requisição ou ao processamento do servidor.', TRUE),
(589, 'Para garantir que todos os erros sejam corrigidos pelo navegador.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
