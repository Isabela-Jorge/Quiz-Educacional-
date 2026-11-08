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
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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
-- COMPUTACAO EM NUVEM | QUESTOES 21 A 40 | NIVEL MEDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_nuvem_id, 'Uma equipe de desenvolvimento precisa armazenar arquivos de configuração e uploads dos usuários que devem ser acessados simultaneamente por múltiplos nós de servidores Linux via protocolo NFS. Qual tipo de serviço é mais adequado?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Em uma arquitetura Serverless (FaaS), como AWS Lambda ou Google Cloud Functions, qual é a principal diferença operacional e financeira em relação à execução de serviços em máquinas virtuais tradicionais?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Para garantir que uma falha isolada em um datacenter não desative uma aplicação na mesma região geográfica, os recursos devem ser distribuídos entre:', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Ao planejar uma esteira de CI/CD, quais serviços cobrem, respectivamente, a compilação/testes e a orquestração do fluxo?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual é a principal vantagem de utilizar múltiplas Availability Zones?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual serviço de armazenamento em bloco é associado a instâncias EC2 na AWS?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual mecanismo é mais apropriado para distribuir conteúdo estático globalmente e reduzir a latência para usuários?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Uma aplicação apresenta picos previsíveis de utilização durante determinados horários. Qual recurso pode ser usado para ajustar automaticamente a quantidade de instâncias?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual é a finalidade principal do IAM?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Uma aplicação precisa armazenar milhões de registros utilizando uma chave de acesso e sem necessidade de relacionamentos complexos entre tabelas. Qual tipo de banco pode ser mais adequado?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual tecnologia permite conectar uma aplicação hospedada em uma VPC privada à internet para realizar conexões de saída sem permitir conexões de entrada diretamente?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual é uma vantagem do uso de containers em comparação com máquinas virtuais tradicionais?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual serviço é normalmente utilizado para armazenar e gerenciar segredos, como senhas e chaves de API?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual tecnologia é utilizada para orquestrar containers em larga escala?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual alternativa apresenta uma característica típica de bancos de dados NoSQL?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual serviço é usado para armazenar e distribuir imagens de containers na AWS?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Uma aplicação precisa executar uma tarefa sempre que um novo arquivo for enviado para um bucket. Qual arquitetura é adequada?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual é a principal função de um serviço de DNS?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Qual prática aumenta a segurança de uma conta de nuvem?', 'MEDIO', 10, 15),
(@quiz_nuvem_id, 'Uma aplicação precisa realizar consultas SQL complexas, transações ACID rigorosas e possui estrutura altamente relacional, exigindo escalabilidade horizontal global sem perder a consistência forte. Qual serviço atende nativamente a esse requisito?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- Computacao em Nuvem | Alternativas das questoes 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 990 | GABARITO B
(990, 'Armazenamento em Bloco', FALSE),
(990, 'Armazenamento de Arquivos Compartilhados', TRUE),
(990, 'Armazenamento de Objetos para Arquivamento', FALSE),
(990, 'Banco de Dados Chave-Valor', FALSE),

-- QUESTAO 22 | ID 991 | GABARITO C
(991, 'As funções Serverless exigem pré-alocação contínua e pagamento fixo mensal.', FALSE),
(991, 'As funções Serverless dependem da instalação manual de drivers e atualizações do SO.', FALSE),
(991, 'As funções Serverless são disparadas por eventos e tarifadas conforme execução e recursos consumidos.', TRUE),
(991, 'As funções Serverless não permitem integração com bancos de dados.', FALSE),

-- QUESTAO 23 | ID 992 | GABARITO B
(992, 'Múltiplas contas de faturamento', FALSE),
(992, 'Múltiplas Zonas de Disponibilidade na mesma Região', TRUE),
(992, 'Diferentes provedores em modo híbrido', FALSE),
(992, 'Múltiplas instâncias na mesma máquina física', FALSE),

-- QUESTAO 24 | ID 993 | GABARITO B
(993, 'AWS CodeCommit e AWS Amplify', FALSE),
(993, 'AWS CodeBuild e AWS CodePipeline', TRUE),
(993, 'Azure Repos e Azure Active Directory', FALSE),
(993, 'Google Cloud Identity e Google Cloud Storage', FALSE),

-- QUESTAO 25 | ID 994 | GABARITO C
(994, 'Reduzir a quantidade de usuários', FALSE),
(994, 'Eliminar a necessidade de backups', FALSE),
(994, 'Permitir tolerância à falha de uma zona', TRUE),
(994, 'Eliminar completamente os custos de infraestrutura', FALSE),

-- QUESTAO 26 | ID 995 | GABARITO A
(995, 'Amazon EBS', TRUE),
(995, 'Amazon S3', FALSE),
(995, 'Amazon EFS', FALSE),
(995, 'Amazon Glacier', FALSE),

-- QUESTAO 27 | ID 996 | GABARITO A
(996, 'CDN', TRUE),
(996, 'NAT Gateway', FALSE),
(996, 'VPN', FALSE),
(996, 'Bastion Host', FALSE),

-- QUESTAO 28 | ID 997 | GABARITO A
(997, 'Auto Scaling', TRUE),
(997, 'Object Lock', FALSE),
(997, 'IAM Policy', FALSE),
(997, 'DNS Zone', FALSE),

-- QUESTAO 29 | ID 998 | GABARITO A
(998, 'Gerenciar identidades, autenticação e permissões', TRUE),
(998, 'Armazenar arquivos grandes', FALSE),
(998, 'Executar containers', FALSE),
(998, 'Criar bancos relacionais', FALSE),

-- QUESTAO 30 | ID 999 | GABARITO A
(999, 'Banco NoSQL chave-valor', TRUE),
(999, 'Banco relacional tradicional exclusivamente', FALSE),
(999, 'Data Warehouse somente', FALSE),
(999, 'Sistema de arquivos', FALSE),

-- QUESTAO 31 | ID 1000 | GABARITO A
(1000, 'NAT Gateway', TRUE),
(1000, 'Internet Gateway exclusivamente para entrada', FALSE),
(1000, 'EBS', FALSE),
(1000, 'ECR', FALSE),

-- QUESTAO 32 | ID 1001 | GABARITO B
(1001, 'Containers sempre exigem mais recursos que VMs', FALSE),
(1001, 'Containers geralmente possuem menor overhead e maior portabilidade', TRUE),
(1001, 'Containers eliminam completamente a necessidade de segurança', FALSE),
(1001, 'Containers não podem ser executados em nuvem', FALSE),

-- QUESTAO 33 | ID 1002 | GABARITO A
(1002, 'Secrets Manager', TRUE),
(1002, 'CloudFront', FALSE),
(1002, 'ECR', FALSE),
(1002, 'Route 53', FALSE),

-- QUESTAO 34 | ID 1003 | GABARITO A
(1003, 'Kubernetes', TRUE),
(1003, 'FTP', FALSE),
(1003, 'SMTP', FALSE),
(1003, 'NFS', FALSE),

-- QUESTAO 35 | ID 1004 | GABARITO B
(1004, 'Sempre exigem esquema rígido e joins complexos', FALSE),
(1004, 'Podem oferecer modelos flexíveis e escalabilidade horizontal', TRUE),
(1004, 'Não suportam grandes volumes de dados', FALSE),
(1004, 'Só podem ser executados localmente', FALSE),

-- QUESTAO 36 | ID 1005 | GABARITO A
(1005, 'Amazon ECR', TRUE),
(1005, 'Amazon RDS', FALSE),
(1005, 'Amazon EFS', FALSE),
(1005, 'Amazon Route 53', FALSE),

-- QUESTAO 37 | ID 1006 | GABARITO A
(1006, 'Evento do armazenamento acionando uma função Serverless', TRUE),
(1006, 'Máquina virtual reiniciada manualmente', FALSE),
(1006, 'Banco relacional sem triggers', FALSE),
(1006, 'Firewall acionando um servidor físico', FALSE),

-- QUESTAO 38 | ID 1007 | GABARITO A
(1007, 'Resolver nomes de domínio para endereços IP', TRUE),
(1007, 'Armazenar objetos', FALSE),
(1007, 'Criar máquinas virtuais', FALSE),
(1007, 'Criptografar arquivos', FALSE),

-- QUESTAO 39 | ID 1008 | GABARITO C
(1008, 'Usar a conta root para todas as operações', FALSE),
(1008, 'Conceder permissões administrativas a todos os usuários', FALSE),
(1008, 'Aplicar o princípio do menor privilégio', TRUE),
(1008, 'Desativar todos os mecanismos de autenticação', FALSE),

-- QUESTAO 40 | ID 1009 | GABARITO A
(1009, 'Google Cloud Spanner', TRUE),
(1009, 'Amazon DynamoDB', FALSE),
(1009, 'Azure Cosmos DB com consistência eventual', FALSE),
(1009, 'Google Cloud Bigtable', FALSE);

-- ============================================================
-- VALIDACAO DAS QUESTOES MEDIAS
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

WHERE q.quiz_id = @quiz_nuvem_id
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
