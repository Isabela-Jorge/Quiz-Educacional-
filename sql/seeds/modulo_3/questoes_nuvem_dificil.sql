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
-- DIFICULDADE: NIVEL DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
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
-- Computacao em Nuvem | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_nuvem_id, 'Uma aplicação Serverless sofre com "Cold Start" e dados temporários armazenados em /tmp desaparecem entre execuções. Qual é a explicação e solução adequada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'No Kubernetes, os pods não conseguem escalar porque os nós atingiram 100% de CPU/memória. Qual combinação garante escalabilidade dinâmica?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa precisa implementar WORM por 5 anos, inclusive contra exclusão por administradores root, e posteriormente mover os objetos para armazenamento de arquivamento. Qual solução é adequada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação de e-commerce precisa de autenticação federada, MFA e emissão de JWT, evitando sobrecarregar o banco relacional. Qual serviço é adequado?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Em uma arquitetura multicloud, uma empresa precisa de banco NoSQL de alta performance, baixa latência e deseja reduzir custos de Egress e chamadas repetitivas. Qual estratégia é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação distribuída globalmente apresenta alta latência devido à distância entre usuários e servidores. Qual arquitetura é mais apropriada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação de microsserviços precisa garantir comunicação assíncrona entre produtores e consumidores, evitando que uma indisponibilidade temporária de um consumidor faça o produtor falhar. Qual solução é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Um sistema precisa processar eventos de milhões de dispositivos IoT. Os eventos devem ser recebidos em alta escala e consumidos posteriormente por diferentes serviços. Qual arquitetura é mais apropriada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma organização deseja reduzir o impacto de uma falha regional completa. Qual estratégia fornece maior resiliência?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa possui um banco de dados crítico e precisa de RPO próximo de zero. Qual mecanismo é mais importante?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação apresenta lentidão devido a consultas repetitivas a um banco de dados. Os dados consultados mudam com pouca frequência. Qual estratégia pode reduzir a carga no banco?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa quer garantir que desenvolvedores não tenham acesso direto aos dados de produção, mas possam realizar deploys automatizados. Qual princípio deve orientar a arquitetura?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação Kubernetes possui pods que precisam acessar informações sensíveis, mas a equipe não deseja armazenar senhas diretamente nas imagens Docker. Qual abordagem é mais apropriada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma aplicação possui requisitos de baixa latência e alto volume de escrita. O banco NoSQL apresenta gargalo porque muitas operações estão concentradas na mesma chave de partição. Qual problema está ocorrendo?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa quer implementar Blue/Green Deployment para reduzir riscos durante novas versões. Qual é a principal característica dessa estratégia?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma API pública está sofrendo milhares de requisições maliciosas por segundo. Além de autenticação, a equipe deseja limitar a quantidade de requisições por cliente. Qual mecanismo é mais adequado?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa precisa garantir que os dados armazenados em um bucket não sejam acessíveis publicamente por erro de configuração de permissões. Qual prática é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma arquitetura de alta disponibilidade possui várias instâncias atrás de um Load Balancer. Uma delas apresenta falha. Qual mecanismo permite que o tráfego seja automaticamente direcionado para as instâncias saudáveis?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma empresa deseja implementar observabilidade completa de uma aplicação distribuída em microsserviços. Além de métricas e logs, precisa identificar o caminho de uma requisição através de diversos serviços. Qual recurso é fundamental?', 'DIFICIL', 15, 15),
(@quiz_nuvem_id, 'Uma organização deseja criar uma arquitetura resiliente para uma aplicação crítica. Ela precisa de alta disponibilidade, escalabilidade automática, tolerância a falhas, segurança baseada em menor privilégio e recuperação após um desastre regional. Qual combinação representa a melhor abordagem?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- Computacao em Nuvem | Alternativas das questoes 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 1010 | GABARITO B
(1010, 'O Cold Start ocorre por falta de memória do banco.', FALSE),
(1010, 'O Cold Start é o provisionamento do ambiente de execução; Provisioned Concurrency pode reduzir a latência, enquanto o armazenamento local é efêmero.', TRUE),
(1010, 'O bucket S3 caiu.', FALSE),
(1010, 'O problema é causado pela VPN.', FALSE),

-- QUESTAO 42 | ID 1011 | GABARITO B
(1011, 'Apenas HPA', FALSE),
(1011, 'Cluster Autoscaler/Karpenter + HPA + Resource Requests/Limits', TRUE),
(1011, 'Aumentar o disco EBS', FALSE),
(1011, 'Converter a aplicação para NoSQL', FALSE),

-- QUESTAO 43 | ID 1012 | GABARITO B
(1012, 'Permissões de escrita e exclusão automática', FALSE),
(1012, 'S3 Object Lock em modo Compliance + Lifecycle Rule para Glacier', TRUE),
(1012, 'Script semanal via Lambda', FALSE),
(1012, 'Volume EBS criptografado', FALSE),

-- QUESTAO 44 | ID 1013 | GABARITO B
(1013, 'AWS KMS', FALSE),
(1013, 'Amazon Cognito', TRUE),
(1013, 'AWS Secrets Manager', FALSE),
(1013, 'AWS CodeArtifact', FALSE),

-- QUESTAO 45 | ID 1014 | GABARITO B
(1014, 'DynamoDB On-Demand em todas as regiões sem cache', FALSE),
(1014, 'Banco NoSQL + capacidade adequada + Auto Scaling/On-Demand + Cache como DAX ou Redis', TRUE),
(1014, 'FTP diário para MySQL local', FALSE),
(1014, 'S3 Glacier para todas as gravações síncronas', FALSE),

-- QUESTAO 46 | ID 1015 | GABARITO A
(1015, 'CDN com pontos de presença distribuídos', TRUE),
(1015, 'Uma única VM centralizada', FALSE),
(1015, 'EBS compartilhado globalmente', FALSE),
(1015, 'Banco relacional sem replicação', FALSE),

-- QUESTAO 47 | ID 1016 | GABARITO A
(1016, 'Fila de mensagens', TRUE),
(1016, 'Comunicação síncrona obrigatória', FALSE),
(1016, 'EBS', FALSE),
(1016, 'DNS Round Robin exclusivamente', FALSE),

-- QUESTAO 48 | ID 1017 | GABARITO A
(1017, 'Serviço de mensageria/event streaming com múltiplos consumidores', TRUE),
(1017, 'Compartilhamento NFS', FALSE),
(1017, 'Uma única máquina virtual', FALSE),
(1017, 'FTP para cada dispositivo', FALSE),

-- QUESTAO 49 | ID 1018 | GABARITO B
(1018, 'Distribuir recursos somente em diferentes instâncias da mesma AZ', FALSE),
(1018, 'Utilizar uma estratégia de Disaster Recovery envolvendo outra região', TRUE),
(1018, 'Aumentar somente a capacidade de CPU', FALSE),
(1018, 'Utilizar somente um servidor maior', FALSE),

-- QUESTAO 50 | ID 1019 | GABARITO A
(1019, 'Replicação contínua ou síncrona, conforme arquitetura e requisitos', TRUE),
(1019, 'Backup anual', FALSE),
(1019, 'Exportação manual mensal', FALSE),
(1019, 'Snapshot somente após incidentes', FALSE),

-- QUESTAO 51 | ID 1020 | GABARITO A
(1020, 'Cache', TRUE),
(1020, 'Aumentar exclusivamente o tamanho do disco', FALSE),
(1020, 'Desabilitar índices', FALSE),
(1020, 'Remover o balanceador', FALSE),

-- QUESTAO 52 | ID 1021 | GABARITO A
(1021, 'Privilégio mínimo e separação de funções', TRUE),
(1021, 'Acesso root compartilhado', FALSE),
(1021, 'Uma única credencial para toda a equipe', FALSE),
(1021, 'Permissões irrestritas', FALSE),

-- QUESTAO 53 | ID 1022 | GABARITO A
(1022, 'Utilizar um sistema de gerenciamento de segredos integrado ao cluster', TRUE),
(1022, 'Colocar as senhas no código-fonte', FALSE),
(1022, 'Inserir as senhas na imagem Docker', FALSE),
(1022, 'Publicar as credenciais no Git', FALSE),

-- QUESTAO 54 | ID 1023 | GABARITO A
(1023, 'Hot Partition', TRUE),
(1023, 'Cold Start', FALSE),
(1023, 'DNS Poisoning', FALSE),
(1023, 'Memory Leak obrigatoriamente', FALSE),

-- QUESTAO 55 | ID 1024 | GABARITO A
(1024, 'Manter dois ambientes e direcionar o tráfego de forma controlada para a nova versão', TRUE),
(1024, 'Atualizar todos os servidores simultaneamente sem rollback', FALSE),
(1024, 'Remover o ambiente antigo antes de criar o novo', FALSE),
(1024, 'Executar somente testes locais', FALSE),

-- QUESTAO 56 | ID 1025 | GABARITO A
(1025, 'Rate Limiting/Throttling', TRUE),
(1025, 'Object Lock', FALSE),
(1025, 'EBS Snapshot', FALSE),
(1025, 'DNS estático', FALSE),

-- QUESTAO 57 | ID 1026 | GABARITO A
(1026, 'Bloquear acesso público e aplicar políticas de acesso explícitas', TRUE),
(1026, 'Tornar o bucket público e confiar no nome secreto', FALSE),
(1026, 'Compartilhar a chave root', FALSE),
(1026, 'Desabilitar logs de acesso', FALSE),

-- QUESTAO 58 | ID 1027 | GABARITO A
(1027, 'Health Checks', TRUE),
(1027, 'Object Lock', FALSE),
(1027, 'Versionamento de objetos', FALSE),
(1027, 'NAT', FALSE),

-- QUESTAO 59 | ID 1028 | GABARITO A
(1028, 'Distributed Tracing', TRUE),
(1028, 'Block Storage', FALSE),
(1028, 'Object Lifecycle', FALSE),
(1028, 'DNS estático', FALSE),

-- QUESTAO 60 | ID 1029 | GABARITO B
(1029, 'Uma única VM grande, acesso root e backups manuais', FALSE),
(1029, 'Múltiplas AZs, Auto Scaling, Load Balancer, IAM com menor privilégio, monitoramento e estratégia de Disaster Recovery', TRUE),
(1029, 'Um único servidor físico com RAID', FALSE),
(1029, 'Armazenamento local sem replicação e deploy manual', FALSE);

-- ============================================================
-- VALIDACAO DAS QUESTOES DIFICEIS
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
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
