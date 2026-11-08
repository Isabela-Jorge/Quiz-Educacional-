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
-- DISCIPLINA: Programacao de Aplicativos Mobile II - Modulo 3
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_mobile2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile II'
      AND d.modulo = 3
    LIMIT 1
);

-- =========================================================================
-- Programacao de Aplicativos Mobile II | QUESTOES 21 A 40 | NIVEL MEDIO
-- =========================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile2_id, 'Como tratar uma resposta HTTP 401 ao chamar uma API protegida?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual vantagem de separar uma camada de serviço HTTP da interface?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual é o cuidado essencial ao solicitar permissão de localização?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual estratégia ajuda a evitar chamadas duplicadas ao tocar repetidamente em Enviar?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Em Flutter, o que faz FutureBuilder?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Por que validar também no servidor os dados enviados pelo aplicativo?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual é uma vantagem de usar armazenamento seguro para tokens?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Ao receber HTTP 429, qual comportamento é adequado?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'O que deve acontecer quando o usuário nega permissão de câmera?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual prática evita travamentos durante uma chamada de rede?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Por que usar paginação em listas retornadas por uma API?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual é o papel de um modelo de dados na integração mobile?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Como tratar uma falha de rede durante o envio de um formulário?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Em uma navegação autenticada, quando liberar uma tela protegida?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual é o benefício de usar cache local para dados consultados com frequência?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual abordagem é adequada para armazenar senhas de usuários?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Para que serve um teste de integração entre app e API?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Ao atualizar uma lista após cadastrar um item, o que o app deve fazer?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'Qual a função de uma chave de identificação estável em uma lista dinâmica?', 'MEDIO', 10, 15),
(@quiz_mobile2_id, 'O que é uma notificação push?', 'MEDIO', 10, 15);

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
WHERE quiz_id = @quiz_mobile2_id
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ==========================================================================
-- Programacao de Aplicativos Mobile II | Alternativas das questões  21 a 40
-- ==========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 930 | GABARITO D
(930, 'Considerar que o recurso foi criado', FALSE),
(930, 'Interpretar como falha do GPS', FALSE),
(930, 'Repetir a requisição sem limite', FALSE),
(930, 'Reconhecer que faltam credenciais válidas e orientar a autenticação', TRUE),

-- QUESTAO 22 | ID 931 | GABARITO C
(931, 'Eliminar a necessidade de modelos de dados', FALSE),
(931, 'Garantir que o servidor nunca falhe', FALSE),
(931, 'Centralizar a comunicação e facilitar testes e manutenção', TRUE),
(931, 'Impedir o uso de navegação', FALSE),

-- QUESTAO 23 | ID 932 | GABARITO A
(932, 'Pedir apenas quando necessário e explicar a finalidade', TRUE),
(932, 'Enviar coordenadas sem consentimento', FALSE),
(932, 'Ignorar uma negativa do usuário', FALSE),
(932, 'Solicitar todas as permissões na primeira abertura', FALSE),

-- QUESTAO 24 | ID 933 | GABARITO C
(933, 'Remover a validação do formulário', FALSE),
(933, 'Criar uma nova tela a cada toque', FALSE),
(933, 'Desabilitar temporariamente a ação durante a requisição', TRUE),
(933, 'Ignorar o resultado da API', FALSE),

-- QUESTAO 25 | ID 934 | GABARITO C
(934, 'Converte imagens em áudio', FALSE),
(934, 'Substitui o roteador do sistema', FALSE),
(934, 'Constrói a interface de acordo com o estado de um Future', TRUE),
(934, 'Cria tabelas SQL automaticamente', FALSE),

-- QUESTAO 26 | ID 935 | GABARITO A
(935, 'Porque validações do cliente podem ser contornadas', TRUE),
(935, 'Porque o cliente não pode exibir mensagens', FALSE),
(935, 'Porque o servidor sempre conhece a localização', FALSE),
(935, 'Porque HTTPS não funciona em celulares', FALSE),

-- QUESTAO 27 | ID 936 | GABARITO D
(936, 'Dispensar o controle de acesso no servidor', FALSE),
(936, 'Tornar o token público para outros aplicativos', FALSE),
(936, 'Evitar que tokens expirem', FALSE),
(936, 'Reduzir a exposição de credenciais sensíveis no dispositivo', TRUE),

-- QUESTAO 28 | ID 937 | GABARITO C
(937, 'Enviar mais requisições simultâneas', FALSE),
(937, 'Interpretar como sucesso da operação', FALSE),
(937, 'Respeitar o limite e aplicar espera antes de tentar novamente', TRUE),
(937, 'Apagar o cadastro do usuário', FALSE),

-- QUESTAO 29 | ID 938 | GABARITO B
(938, 'O aplicativo deve desinstalar-se', FALSE),
(938, 'O aplicativo deve tratar a negativa e oferecer alternativa quando possível', TRUE),
(938, 'O aplicativo deve conceder a permissão sozinho', FALSE),
(938, 'O aplicativo deve capturar imagens mesmo assim', FALSE),

-- QUESTAO 30 | ID 939 | GABARITO C
(939, 'Recriar todos os widgets em um laço infinito', FALSE),
(939, 'Bloquear a thread de interface até terminar', FALSE),
(939, 'Executar a operação de forma assíncrona e atualizar a interface ao concluir', TRUE),
(939, 'Aguardar sempre sem mostrar estado', FALSE),

-- QUESTAO 31 | ID 940 | GABARITO C
(940, 'Eliminar a necessidade de ordenação', FALSE),
(940, 'Impedir a autenticação', FALSE),
(940, 'Reduzir a quantidade de dados transferidos por requisição', TRUE),
(940, 'Garantir que todos os itens tenham o mesmo nome', FALSE),

-- QUESTAO 32 | ID 941 | GABARITO A
(941, 'Representar e converter informações recebidas ou enviadas', TRUE),
(941, 'Controlar fisicamente a bateria', FALSE),
(941, 'Alterar o kernel do aparelho', FALSE),
(941, 'Substituir o servidor HTTP', FALSE),

-- QUESTAO 33 | ID 942 | GABARITO D
(942, 'Reenviar sem parar em segundo plano', FALSE),
(942, 'Limpar imediatamente todos os campos', FALSE),
(942, 'Confirmar sucesso sem resposta', FALSE),
(942, 'Informar a falha e preservar os dados preenchidos para nova tentativa', TRUE),

-- QUESTAO 34 | ID 943 | GABARITO B
(943, 'Sempre que o app for aberto', FALSE),
(943, 'Após confirmar uma sessão válida conforme as regras da aplicação', TRUE),
(943, 'Quando a bateria estiver carregada', FALSE),
(943, 'Apenas porque existe um texto salvo chamado token', FALSE),

-- QUESTAO 35 | ID 944 | GABARITO D
(944, 'Permitir acesso a recursos não autorizados', FALSE),
(944, 'Dispensar qualquer estratégia de invalidação', FALSE),
(944, 'Garantir que os dados nunca fiquem desatualizados', FALSE),
(944, 'Reduzir requisições e oferecer acesso mais rápido quando apropriado', TRUE),

-- QUESTAO 36 | ID 945 | GABARITO B
(945, 'Salvar a senha em logs de depuração', FALSE),
(945, 'Não armazenar senhas em texto puro no aplicativo e autenticar por serviço seguro', TRUE),
(945, 'Compartilhar a senha entre usuários', FALSE),
(945, 'Incluir a senha no código-fonte', FALSE),

-- QUESTAO 37 | ID 946 | GABARITO C
(946, 'Substituir todos os testes de segurança', FALSE),
(946, 'Determinar o tamanho físico do celular', FALSE),
(946, 'Verificar a comunicação e o comportamento conjunto dos componentes', TRUE),
(946, 'Medir somente a cor dos botões', FALSE),

-- QUESTAO 38 | ID 947 | GABARITO C
(947, 'Descartar o resultado do servidor', FALSE),
(947, 'Exibir sucesso antes de qualquer resposta', FALSE),
(947, 'Atualizar o estado com os dados confirmados ou consultar a API novamente', TRUE),
(947, 'Duplicar o item localmente em toda tentativa', FALSE),

-- QUESTAO 39 | ID 948 | GABARITO D
(948, 'Criptografar cada imagem automaticamente', FALSE),
(948, 'Impedir que a lista seja rolada', FALSE),
(948, 'Aumentar a velocidade do processador', FALSE),
(948, 'Preservar a identidade correta dos itens durante atualizações', TRUE),

-- QUESTAO 40 | ID 949 | GABARITO B
(949, 'Um comando para apagar o cache', FALSE),
(949, 'Uma mensagem entregue por infraestrutura de notificações ao dispositivo', TRUE),
(949, 'Uma consulta SQL executada na tela', FALSE),
(949, 'Uma variável global do aplicativo', FALSE);

-- ============================================================
-- ETAPA: VALIDACAO DAS 20 QUESTOES MEDIAS
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

WHERE q.quiz_id = @quiz_mobile2_id
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
