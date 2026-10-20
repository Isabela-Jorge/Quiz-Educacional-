-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (189 a 208).
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
--      AND dificuldade = 'DIFICIL'
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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- MOBILE II | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile2_id, 'Como evitar que respostas antigas de buscas sobrescrevam resultados mais recentes?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual cuidado é necessário ao sincronizar alterações feitas offline?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual é o risco de guardar um segredo de API privado dentro do aplicativo distribuído?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Como evitar cadastros duplicados quando uma requisição é reenviada após timeout?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual é o objetivo de usar refresh token quando a arquitetura o prevê?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual prática ajuda a proteger dados sensíveis exibidos em logs mobile?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Por que a API deve impor autorização por recurso e não apenas validar o login?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual abordagem melhora o desempenho de uma lista extensa no mobile?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Como lidar com mudanças incompatíveis no contrato de uma API?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'O que deve ser verificado antes de enviar uma localização em segundo plano?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual estratégia permite investigar falhas intermitentes em produção?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Uma operação de pagamento pode ser repetida após timeout sem saber se o servidor concluiu. Qual é a solução mais robusta?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Um aplicativo mantém dados offline e recebe atualizações concorrentes. O que é necessário para evitar perda silenciosa?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual falha ocorre quando o aplicativo aceita qualquer certificado TLS apresentado pelo servidor?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Como implementar logout quando tokens de acesso podem continuar válidos por algum tempo?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Uma requisição retorna 200, mas o JSON não contém um campo obrigatório. Qual tratamento é mais seguro?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Em sincronização incremental, qual é o cuidado ao usar apenas o horário do dispositivo como referência?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual abordagem reduz vazamento de dados em notificações exibidas na tela bloqueada?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Como garantir que um upload grande não precise recomeçar sempre após uma interrupção?', 'DIFICIL', 15, 15),
(@quiz_mobile2_id, 'Qual prática reduz o risco de regressões na integração entre versões do aplicativo e da API?', 'DIFICIL', 15, 15);

-- ============================================================
-- MOBILE II | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 |Correta: B
(189, 'Ordenar respostas pela quantidade de caracteres', FALSE),
(189, 'Associar cada resposta à busca vigente ou cancelar requisições anteriores', TRUE),
(189, 'Desabilitar todas as pesquisas futuras', FALSE),
(189, 'Aplicar sempre o primeiro resultado recebido', FALSE),

-- Questão 42 | Correta: A
(190, 'Definir estratégia para detectar e resolver conflitos', TRUE),
(190, 'Ignorar identificadores dos registros', FALSE),
(190, 'Assumir que todos os dispositivos têm a mesma versão', FALSE),
(190, 'Sobrescrever sempre os dados remotos sem verificação', FALSE),

-- Questão 43 Correta: D
(191, 'O segredo se torna automaticamente inacessível', FALSE),
(191, 'O aplicativo deixa de usar HTTPS', FALSE),
(191, 'O servidor passa a validar qualquer usuário', FALSE),
(191, 'O segredo pode ser extraído do pacote por terceiros', TRUE),

-- Questão 44 |Correta: B
(192, 'Remover o identificador do usuário', FALSE),
(192, 'Usar chave de idempotência ou regra de unicidade no servidor', TRUE),
(192, 'Trocar o tema visual antes do envio', FALSE),
(192, 'Gerar um novo cadastro em cada tentativa', FALSE),

-- Questão 45 | Correta: C
(193, 'Tornar o token de acesso permanente', FALSE),
(193, 'Eliminar a necessidade de revogação', FALSE),
(193, 'Obter novos tokens de acesso sem exigir login completo a cada expiração', TRUE),
(193, 'Publicar credenciais no repositório', FALSE),

-- Questão 46 | Correta: B
(194, 'Exibir tokens em mensagens de erro', FALSE),
(194, 'Remover ou mascarar credenciais e informações pessoais', TRUE),
(194, 'Registrar o corpo completo de toda autenticação', FALSE),
(194, 'Armazenar senhas para depuração', FALSE),

-- Questão 47 |Correta: B
(195, 'Todo usuário autenticado é administrador', FALSE),
(195, 'Um usuário autenticado não deve acessar dados de outro sem permissão', TRUE),
(195, 'A autorização é responsabilidade exclusiva da interface', FALSE),
(195, 'O aplicativo conhece todos os direitos de acesso', FALSE),

-- Questão 48 | Correta: A
(196, 'Renderizar itens sob demanda com componentes apropriados', TRUE),
(196, 'Carregar imagens originais sem dimensionamento', FALSE),
(196, 'Construir todos os itens repetidamente a cada frame', FALSE),
(196, 'Bloquear a interface durante a rolagem', FALSE),

-- Questão 49 |Correta: A
(197, 'Planejar versionamento ou migração coordenada entre cliente e servidor', TRUE),
(197, 'Presumir que clientes antigos sempre funcionarão', FALSE),
(197, 'Ignorar as alterações até ocorrer erro', FALSE),
(197, 'Trocar apenas o ícone do aplicativo', FALSE),

-- Questão 50 | Correta: A
(198, 'Permissões, finalidade legítima e regras da plataforma', TRUE),
(198, 'Somente o idioma do teclado', FALSE),
(198, 'O nome do arquivo de configuração', FALSE),
(198, 'A quantidade de aplicativos instalados', FALSE),

-- Questão 51 | Correta: D
(199, 'Desativar todos os controles de acesso', FALSE),
(199, 'Exibir stack traces completos ao usuário', FALSE),
(199, 'Salvar senhas para reproduzir erros', FALSE),
(199, 'Registrar eventos técnicos com identificadores de correlação sem expor dados sensíveis', TRUE),

-- Questão 52 | Correta: B
(200, 'Repetir a cobrança com um novo identificador a cada tentativa', FALSE),
(200, 'Enviar uma chave de idempotência reconhecida pelo servidor', TRUE),
(200, 'Desativar a criptografia para reduzir latência', FALSE),
(200, 'Considerar sempre que o pagamento falhou', FALSE),

-- Questão 53 | Correta: C
(201, 'Aplicar sempre a última gravação local sem comparação', FALSE),
(201, 'Substituir identificadores por índices de lista', FALSE),
(201, 'Controle de versão dos registros e política explícita de resolução de conflitos', TRUE),
(201, 'Descartar atualizações remotas', FALSE),

-- Questão 54 | Correta: D
(202, 'O banco local deixa de funcionar', FALSE),
(202, 'A API passa a exigir autenticação multifator', FALSE),
(202, 'O tráfego se torna automaticamente mais rápido', FALSE),
(202, 'A comunicação fica vulnerável a interceptação por terceiros', TRUE),

-- Questão 55 |Correta: B
(203, 'Apagar somente o texto do nome na interface', FALSE),
(203, 'Limpar credenciais locais e adotar revogação ou expiração adequada no servidor', TRUE),
(203, 'Exibir a tela inicial sem alterar a sessão', FALSE),
(203, 'Manter o token no armazenamento seguro indefinidamente', FALSE),

-- Questão 56 |  Correta: A
(204, 'Validar o contrato de dados e tratar a resposta como incompatível', TRUE),
(204, 'Acessar o campo sem verificação', FALSE),
(204, 'Salvar a resposta bruta como credencial', FALSE),
(204, 'Considerar que o dado ausente é sempre zero', FALSE),

-- Questão 57 |  Correta: D
(205, 'A rede garante sincronização perfeita dos relógios', FALSE),
(205, 'O fuso horário elimina conflitos de gravação', FALSE),
(205, 'Horários locais são sempre idênticos', FALSE),
(205, 'Relógios podem divergir; prefira marcadores ou versões definidos pelo servidor', TRUE),

-- Questão 58 |Correta: B
(206, 'Incluir tokens e senhas para facilitar o acesso', FALSE),
(206, 'Evitar conteúdo sensível e respeitar configurações de privacidade', TRUE),
(206, 'Exibir todos os dados pessoais na prévia', FALSE),
(206, 'Ignorar a política do sistema operacional', FALSE),

-- Questão 59 |  Correta: B
(207, 'Converter o arquivo em texto sem validação', FALSE),
(207, 'Adotar upload retomável em partes com controle de progresso e integridade', TRUE),
(207, 'Remover os limites de tamanho no servidor', FALSE),
(207, 'Enviar o arquivo inteiro em laço sem confirmação', FALSE),

-- Questão 60 |  Correta: C
(208, 'Alterar endpoints sem comunicação', FALSE),
(208, 'Validar apenas a versão mais recente do servidor', FALSE),
(208, 'Manter testes de contrato e compatibilidade para versões ainda suportadas', TRUE),
(208, 'Testar somente a aparência da tela inicial', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCIL DE MOBILE II
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
