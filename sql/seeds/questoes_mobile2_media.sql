-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (169 a 188).
-- Eles precisam corresponder aos IDs gerados no seu banco de dados.
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
--    WHERE quiz_id = (SELECT id FROM quiz WHERE disciplina_id =
--          (SELECT id FROM disciplina
--           WHERE nome = 'Programação de Aplicativos Mobile II' AND modulo = 3))
--      AND dificuldade = 'MEDIO'
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
-- DISCIPLINA: Programação de Aplicativos Mobile II - Módulo 3
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação de Aplicativos Mobile II do módulo 3
SET @quiz_mobile2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile II'
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- MOBILE II | Questões 21 a 40 | Nível médio
-- ============================================================

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
-- MOBILE II | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 |Correta: D
(169, 'Considerar que o recurso foi criado', FALSE),
(169, 'Interpretar como falha do GPS', FALSE),
(169, 'Repetir a requisição sem limite', FALSE),
(169, 'Reconhecer que faltam credenciais válidas e orientar a autenticação', TRUE),

-- Questão 22 |  Correta: C
(170, 'Eliminar a necessidade de modelos de dados', FALSE),
(170, 'Garantir que o servidor nunca falhe', FALSE),
(170, 'Centralizar a comunicação e facilitar testes e manutenção', TRUE),
(170, 'Impedir o uso de navegação', FALSE),

-- Questão 23 |  Correta: A
(171, 'Pedir apenas quando necessário e explicar a finalidade', TRUE),
(171, 'Enviar coordenadas sem consentimento', FALSE),
(171, 'Ignorar uma negativa do usuário', FALSE),
(171, 'Solicitar todas as permissões na primeira abertura', FALSE),

-- Questão 24 | Correta: C
(172, 'Remover a validação do formulário', FALSE),
(172, 'Criar uma nova tela a cada toque', FALSE),
(172, 'Desabilitar temporariamente a ação durante a requisição', TRUE),
(172, 'Ignorar o resultado da API', FALSE),

-- Questão 25 |Correta: C
(173, 'Converte imagens em áudio', FALSE),
(173, 'Substitui o roteador do sistema', FALSE),
(173, 'Constrói a interface de acordo com o estado de um Future', TRUE),
(173, 'Cria tabelas SQL automaticamente', FALSE),

-- Questão 26 |Correta: A
(174, 'Porque validações do cliente podem ser contornadas', TRUE),
(174, 'Porque o cliente não pode exibir mensagens', FALSE),
(174, 'Porque o servidor sempre conhece a localização', FALSE),
(174, 'Porque HTTPS não funciona em celulares', FALSE),

-- Questão 27 |Correta: D
(175, 'Dispensar o controle de acesso no servidor', FALSE),
(175, 'Tornar o token público para outros aplicativos', FALSE),
(175, 'Evitar que tokens expirem', FALSE),
(175, 'Reduzir a exposição de credenciais sensíveis no dispositivo', TRUE),

-- Questão 28 |Correta: C
(176, 'Enviar mais requisições simultâneas', FALSE),
(176, 'Interpretar como sucesso da operação', FALSE),
(176, 'Respeitar o limite e aplicar espera antes de tentar novamente', TRUE),
(176, 'Apagar o cadastro do usuário', FALSE),

-- Questão 29 |Correta: B
(177, 'O aplicativo deve desinstalar-se', FALSE),
(177, 'O aplicativo deve tratar a negativa e oferecer alternativa quando possível', TRUE),
(177, 'O aplicativo deve conceder a permissão sozinho', FALSE),
(177, 'O aplicativo deve capturar imagens mesmo assim', FALSE),

-- Questão 30 |Correta: C
(178, 'Recriar todos os widgets em um laço infinito', FALSE),
(178, 'Bloquear a thread de interface até terminar', FALSE),
(178, 'Executar a operação de forma assíncrona e atualizar a interface ao concluir', TRUE),
(178, 'Aguardar sempre sem mostrar estado', FALSE),

-- Questão 31 | Correta: C
(179, 'Eliminar a necessidade de ordenação', FALSE),
(179, 'Impedir a autenticação', FALSE),
(179, 'Reduzir a quantidade de dados transferidos por requisição', TRUE),
(179, 'Garantir que todos os itens tenham o mesmo nome', FALSE),

-- Questão 32 | Correta: A
(180, 'Representar e converter informações recebidas ou enviadas', TRUE),
(180, 'Controlar fisicamente a bateria', FALSE),
(180, 'Alterar o kernel do aparelho', FALSE),
(180, 'Substituir o servidor HTTP', FALSE),

-- Questão 33 | Correta: D
(181, 'Reenviar sem parar em segundo plano', FALSE),
(181, 'Limpar imediatamente todos os campos', FALSE),
(181, 'Confirmar sucesso sem resposta', FALSE),
(181, 'Informar a falha e preservar os dados preenchidos para nova tentativa', TRUE),

-- Questão 34 | Correta: B
(182, 'Sempre que o app for aberto', FALSE),
(182, 'Após confirmar uma sessão válida conforme as regras da aplicação', TRUE),
(182, 'Quando a bateria estiver carregada', FALSE),
(182, 'Apenas porque existe um texto salvo chamado token', FALSE),

-- Questão 35 | Correta: D
(183, 'Permitir acesso a recursos não autorizados', FALSE),
(183, 'Dispensar qualquer estratégia de invalidação', FALSE),
(183, 'Garantir que os dados nunca fiquem desatualizados', FALSE),
(183, 'Reduzir requisições e oferecer acesso mais rápido quando apropriado', TRUE),

-- Questão 36 | Correta: B
(184, 'Salvar a senha em logs de depuração', FALSE),
(184, 'Não armazenar senhas em texto puro no aplicativo e autenticar por serviço seguro', TRUE),
(184, 'Compartilhar a senha entre usuários', FALSE),
(184, 'Incluir a senha no código-fonte', FALSE),

-- Questão 37 |  Correta: C
(185, 'Substituir todos os testes de segurança', FALSE),
(185, 'Determinar o tamanho físico do celular', FALSE),
(185, 'Verificar a comunicação e o comportamento conjunto dos componentes', TRUE),
(185, 'Medir somente a cor dos botões', FALSE),

-- Questão 38 |Correta: C
(186, 'Descartar o resultado do servidor', FALSE),
(186, 'Exibir sucesso antes de qualquer resposta', FALSE),
(186, 'Atualizar o estado com os dados confirmados ou consultar a API novamente', TRUE),
(186, 'Duplicar o item localmente em toda tentativa', FALSE),

-- Questão 39 | Correta: D
(187, 'Criptografar cada imagem automaticamente', FALSE),
(187, 'Impedir que a lista seja rolada', FALSE),
(187, 'Aumentar a velocidade do processador', FALSE),
(187, 'Preservar a identidade correta dos itens durante atualizações', TRUE),

-- Questão 40 | Correta: B
(188, 'Um comando para apagar o cache', FALSE),
(188, 'Uma mensagem entregue por infraestrutura de notificações ao dispositivo', TRUE),
(188, 'Uma consulta SQL executada na tela', FALSE),
(188, 'Uma variável global do aplicativo', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIO DE MOBILE II
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
WHERE q.quiz_id = @quiz_mobile2_id
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
