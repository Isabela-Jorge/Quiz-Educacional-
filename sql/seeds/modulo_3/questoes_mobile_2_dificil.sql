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
-- DIFICULDADE: NIVEL DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
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

-- ==========================================================================
-- Programacao de Aplicativos Mobile II | QUESTOES 41 A 60 | NIVEL DIFÍCIL
-- ==========================================================================

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ==========================================================================
-- Programacao de Aplicativos Mobile II | Alternativas das questões  41 a 60
-- ==========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 950 | GABARITO B
(950, 'Ordenar respostas pela quantidade de caracteres', FALSE),
(950, 'Associar cada resposta à busca vigente ou cancelar requisições anteriores', TRUE),
(950, 'Desabilitar todas as pesquisas futuras', FALSE),
(950, 'Aplicar sempre o primeiro resultado recebido', FALSE),

-- QUESTAO 42 | ID 951 | GABARITO A
(951, 'Definir estratégia para detectar e resolver conflitos', TRUE),
(951, 'Ignorar identificadores dos registros', FALSE),
(951, 'Assumir que todos os dispositivos têm a mesma versão', FALSE),
(951, 'Sobrescrever sempre os dados remotos sem verificação', FALSE),

-- QUESTAO 43 | ID 952 | GABARITO D
(952, 'O segredo se torna automaticamente inacessível', FALSE),
(952, 'O aplicativo deixa de usar HTTPS', FALSE),
(952, 'O servidor passa a validar qualquer usuário', FALSE),
(952, 'O segredo pode ser extraído do pacote por terceiros', TRUE),

-- QUESTAO 44 | ID 953 | GABARITO B
(953, 'Remover o identificador do usuário', FALSE),
(953, 'Usar chave de idempotência ou regra de unicidade no servidor', TRUE),
(953, 'Trocar o tema visual antes do envio', FALSE),
(953, 'Gerar um novo cadastro em cada tentativa', FALSE),

-- QUESTAO 45 | ID 954 | GABARITO C
(954, 'Tornar o token de acesso permanente', FALSE),
(954, 'Eliminar a necessidade de revogação', FALSE),
(954, 'Obter novos tokens de acesso sem exigir login completo a cada expiração', TRUE),
(954, 'Publicar credenciais no repositório', FALSE),

-- QUESTAO 46 | ID 955 | GABARITO B
(955, 'Exibir tokens em mensagens de erro', FALSE),
(955, 'Remover ou mascarar credenciais e informações pessoais', TRUE),
(955, 'Registrar o corpo completo de toda autenticação', FALSE),
(955, 'Armazenar senhas para depuração', FALSE),

-- QUESTAO 47 | ID 956 | GABARITO B
(956, 'Todo usuário autenticado é administrador', FALSE),
(956, 'Um usuário autenticado não deve acessar dados de outro sem permissão', TRUE),
(956, 'A autorização é responsabilidade exclusiva da interface', FALSE),
(956, 'O aplicativo conhece todos os direitos de acesso', FALSE),

-- QUESTAO 48 | ID 957 | GABARITO A
(957, 'Renderizar itens sob demanda com componentes apropriados', TRUE),
(957, 'Carregar imagens originais sem dimensionamento', FALSE),
(957, 'Construir todos os itens repetidamente a cada frame', FALSE),
(957, 'Bloquear a interface durante a rolagem', FALSE),

-- QUESTAO 49 | ID 958 | GABARITO A
(958, 'Planejar versionamento ou migração coordenada entre cliente e servidor', TRUE),
(958, 'Presumir que clientes antigos sempre funcionarão', FALSE),
(958, 'Ignorar as alterações até ocorrer erro', FALSE),
(958, 'Trocar apenas o ícone do aplicativo', FALSE),

-- QUESTAO 50 | ID 959 | GABARITO A
(959, 'Permissões, finalidade legítima e regras da plataforma', TRUE),
(959, 'Somente o idioma do teclado', FALSE),
(959, 'O nome do arquivo de configuração', FALSE),
(959, 'A quantidade de aplicativos instalados', FALSE),

-- QUESTAO 51 | ID 960 | GABARITO D
(960, 'Desativar todos os controles de acesso', FALSE),
(960, 'Exibir stack traces completos ao usuário', FALSE),
(960, 'Salvar senhas para reproduzir erros', FALSE),
(960, 'Registrar eventos técnicos com identificadores de correlação sem expor dados sensíveis', TRUE),

-- QUESTAO 52 | ID 961 | GABARITO B
(961, 'Repetir a cobrança com um novo identificador a cada tentativa', FALSE),
(961, 'Enviar uma chave de idempotência reconhecida pelo servidor', TRUE),
(961, 'Desativar a criptografia para reduzir latência', FALSE),
(961, 'Considerar sempre que o pagamento falhou', FALSE),

-- QUESTAO 53 | ID 962 | GABARITO C
(962, 'Aplicar sempre a última gravação local sem comparação', FALSE),
(962, 'Substituir identificadores por índices de lista', FALSE),
(962, 'Controle de versão dos registros e política explícita de resolução de conflitos', TRUE),
(962, 'Descartar atualizações remotas', FALSE),

-- QUESTAO 54 | ID 963 | GABARITO D
(963, 'O banco local deixa de funcionar', FALSE),
(963, 'A API passa a exigir autenticação multifator', FALSE),
(963, 'O tráfego se torna automaticamente mais rápido', FALSE),
(963, 'A comunicação fica vulnerável a interceptação por terceiros', TRUE),

-- QUESTAO 55 | ID 964 | GABARITO B
(964, 'Apagar somente o texto do nome na interface', FALSE),
(964, 'Limpar credenciais locais e adotar revogação ou expiração adequada no servidor', TRUE),
(964, 'Exibir a tela inicial sem alterar a sessão', FALSE),
(964, 'Manter o token no armazenamento seguro indefinidamente', FALSE),

-- QUESTAO 56 | ID 965 | GABARITO A
(965, 'Validar o contrato de dados e tratar a resposta como incompatível', TRUE),
(965, 'Acessar o campo sem verificação', FALSE),
(965, 'Salvar a resposta bruta como credencial', FALSE),
(965, 'Considerar que o dado ausente é sempre zero', FALSE),

-- QUESTAO 57 | ID 966 | GABARITO D
(966, 'A rede garante sincronização perfeita dos relógios', FALSE),
(966, 'O fuso horário elimina conflitos de gravação', FALSE),
(966, 'Horários locais são sempre idênticos', FALSE),
(966, 'Relógios podem divergir; prefira marcadores ou versões definidos pelo servidor', TRUE),

-- QUESTAO 58 | ID 967 | GABARITO B
(967, 'Incluir tokens e senhas para facilitar o acesso', FALSE),
(967, 'Evitar conteúdo sensível e respeitar configurações de privacidade', TRUE),
(967, 'Exibir todos os dados pessoais na prévia', FALSE),
(967, 'Ignorar a política do sistema operacional', FALSE),

-- QUESTAO 59 | ID 968 | GABARITO B
(968, 'Converter o arquivo em texto sem validação', FALSE),
(968, 'Adotar upload retomável em partes com controle de progresso e integridade', TRUE),
(968, 'Remover os limites de tamanho no servidor', FALSE),
(968, 'Enviar o arquivo inteiro em laço sem confirmação', FALSE),

-- QUESTAO 60 | ID 969 | GABARITO C
(969, 'Alterar endpoints sem comunicação', FALSE),
(969, 'Validar apenas a versão mais recente do servidor', FALSE),
(969, 'Manter testes de contrato e compatibilidade para versões ainda suportadas', TRUE),
(969, 'Testar somente a aparência da tela inicial', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES DIFICEIS
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

WHERE q.quiz_id = 20
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
