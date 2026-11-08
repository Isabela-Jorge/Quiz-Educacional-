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
-- DISCIPLINA: Computacao em Nuvem - Modulo 3
-- DIFICULDADE: NIVEL FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_nuvem_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Computação em Nuvem'
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- COMPUTACAO EM NUVEM | QUESTOES 01 A 20 | NIVEL FACIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_nuvem_id, 'Qual modelo de serviço em nuvem é caracterizado por fornecer ao desenvolvedor um ambiente completo para implantação e execução de aplicações sem que seja necessário gerenciar o sistema operacional subjacente ou a infraestrutura de servidores?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Dentre os produtos de armazenamento em nuvem, qual tipo é projetado especificamente para guardar grandes volumes de dados não estruturados, como arquivos de mídia, backups e logs, utilizando identificadores únicos e metadados?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual das alternativas apresenta um exemplo de infraestrutura como serviço (IaaS)?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual é uma das principais características da computação em nuvem?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'No modelo de responsabilidade compartilhada da computação em nuvem pública, qual das opções a seguir é tipicamente de responsabilidade EXCLUSIVA do cliente/usuário?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual serviço é classificado como armazenamento de objetos?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual das alternativas apresenta um serviço de banco de dados relacional gerenciado?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual dos seguintes serviços é utilizado para executar código em resposta a eventos sem que o usuário precise gerenciar servidores?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual das alternativas apresenta apenas serviços de banco de dados não relacionais (NoSQL) oferecidos pelas principais provedoras de nuvem?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Para criar e registrar imagens de contêineres Docker antes de executá-las em clusters gerenciados na nuvem, qual serviço cumpre essa função?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual conceito de nuvem permite aumentar ou diminuir automaticamente a quantidade de recursos conforme a demanda?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual serviço é utilizado para criar uma rede virtual isolada na AWS?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual é a principal finalidade de um balanceador de carga?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual alternativa representa um exemplo de SaaS?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual recurso permite que máquinas virtuais diferentes sejam executadas sobre o mesmo servidor físico?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Em computação em nuvem, o que significa o termo "pay-as-you-go"?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual serviço é normalmente utilizado para armazenar arquivos de configuração, imagens, vídeos e backups como objetos?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual é a principal função de um firewall em uma infraestrutura de nuvem?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual tecnologia permite empacotar uma aplicação junto com suas dependências para facilitar sua execução em diferentes ambientes?', 'FACIL', 5, 15),
(@quiz_nuvem_id, 'Qual serviço abaixo é utilizado como Content Delivery Network (CDN)?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_nuvem_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- Computacao em Nuvem | Alternativas das questoes 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 970 | GABARITO B
(970, 'IaaS (Infrastructure as a Service)', FALSE),
(970, 'PaaS (Platform as a Service)', TRUE),
(970, 'SaaS (Software as a Service)', FALSE),
(970, 'BaaS (Backup as a Service)', FALSE),

-- QUESTAO 02 | ID 971 | GABARITO C
(971, 'Armazenamento em Bloco', FALSE),
(971, 'Arquivos Compartilhados', FALSE),
(971, 'Armazenamento de Objetos', TRUE),
(971, 'Banco de Dados Relacional', FALSE),

-- QUESTAO 03 | ID 972 | GABARITO A
(972, 'Amazon EC2', TRUE),
(972, 'Gmail', FALSE),
(972, 'Google Docs', FALSE),
(972, 'Amazon S3', FALSE),

-- QUESTAO 04 | ID 973 | GABARITO B
(973, 'Necessidade de aquisição de servidores físicos próprios', FALSE),
(973, 'Elasticidade e provisionamento de recursos sob demanda', TRUE),
(973, 'Utilização obrigatória de apenas um sistema operacional', FALSE),
(973, 'Impossibilidade de automatizar recursos', FALSE),

-- QUESTAO 05 | ID 974 | GABARITO D
(974, 'Manutenção do hardware dos servidores físicos do datacenter.', FALSE),
(974, 'Segurança física das instalações e controle de acesso aos racks.', FALSE),
(974, 'Atualização do firmware das placas de rede dos hosts.', FALSE),
(974, 'Gestão dos dados armazenados e controle de acesso às aplicações.', TRUE),

-- QUESTAO 06 | ID 975 | GABARITO B
(975, 'Amazon EBS', FALSE),
(975, 'Amazon S3', TRUE),
(975, 'Amazon EC2', FALSE),
(975, 'Amazon RDS', FALSE),

-- QUESTAO 07 | ID 976 | GABARITO A
(976, 'Amazon RDS', TRUE),
(976, 'Amazon S3', FALSE),
(976, 'Amazon ECR', FALSE),
(976, 'AWS Lambda', FALSE),

-- QUESTAO 08 | ID 977 | GABARITO A
(977, 'AWS Lambda', TRUE),
(977, 'Amazon EBS', FALSE),
(977, 'Amazon VPC', FALSE),
(977, 'Amazon Route 53', FALSE),

-- QUESTAO 09 | ID 978 | GABARITO A
(978, 'Amazon DynamoDB e Google Cloud Datastore / Firestore', TRUE),
(978, 'Amazon RDS e Azure Database for MySQL', FALSE),
(978, 'Google Cloud SQL e Azure SQL Database', FALSE),
(978, 'Amazon Aurora e Cloud Spanner', FALSE),

-- QUESTAO 10 | ID 979 | GABARITO B
(979, 'AWS Amplify', FALSE),
(979, 'Amazon ECR', TRUE),
(979, 'AWS CodePipeline', FALSE),
(979, 'Amazon ECS', FALSE),

-- QUESTAO 11 | ID 980 | GABARITO A
(980, 'Elasticidade', TRUE),
(980, 'Virtualização manual', FALSE),
(980, 'Criptografia', FALSE),
(980, 'Deduplicação', FALSE),

-- QUESTAO 12 | ID 981 | GABARITO A
(981, 'Amazon VPC', TRUE),
(981, 'Amazon S3', FALSE),
(981, 'AWS Lambda', FALSE),
(981, 'Amazon ECR', FALSE),

-- QUESTAO 13 | ID 982 | GABARITO B
(982, 'Armazenar backups', FALSE),
(982, 'Distribuir requisições entre múltiplos servidores', TRUE),
(982, 'Criptografar bancos de dados', FALSE),
(982, 'Criar imagens Docker', FALSE),

-- QUESTAO 14 | ID 983 | GABARITO C
(983, 'Amazon EC2', FALSE),
(983, 'Google Compute Engine', FALSE),
(983, 'Microsoft 365', TRUE),
(983, 'Amazon EBS', FALSE),

-- QUESTAO 15 | ID 984 | GABARITO A
(984, 'Virtualização', TRUE),
(984, 'Balanceamento', FALSE),
(984, 'Cache', FALSE),
(984, 'Replicação', FALSE),

-- QUESTAO 16 | ID 985 | GABARITO B
(985, 'Pagamento antecipado obrigatório', FALSE),
(985, 'Pagamento baseado no consumo dos recursos', TRUE),
(985, 'Pagamento exclusivamente anual', FALSE),
(985, 'Pagamento somente pelo hardware físico', FALSE),

-- QUESTAO 17 | ID 986 | GABARITO A
(986, 'Object Storage', TRUE),
(986, 'Block Storage', FALSE),
(986, 'CPU Cache', FALSE),
(986, 'Memory Storage', FALSE),

-- QUESTAO 18 | ID 987 | GABARITO B
(987, 'Aumentar a capacidade do processador', FALSE),
(987, 'Controlar o tráfego de rede de acordo com regras de segurança', TRUE),
(987, 'Criar containers', FALSE),
(987, 'Fazer backup automático do banco', FALSE),

-- QUESTAO 19 | ID 988 | GABARITO A
(988, 'Container', TRUE),
(988, 'VPN', FALSE),
(988, 'DNS', FALSE),
(988, 'CDN', FALSE),

-- QUESTAO 20 | ID 989 | GABARITO A
(989, 'Amazon CloudFront', TRUE),
(989, 'Amazon RDS', FALSE),
(989, 'Amazon EBS', FALSE),
(989, 'Amazon DynamoDB', FALSE);

-- ============================================================
-- VALIDACAO DAS QUESTOES FACEIS
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

WHERE q.quiz_id = 11
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
