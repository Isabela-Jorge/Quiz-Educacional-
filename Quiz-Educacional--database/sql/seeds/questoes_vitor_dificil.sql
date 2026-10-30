USE quiz_ds_db;

SET @quiz_nuvem_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Computação em Nuvem'
    LIMIT 1
);

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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(161, 'O Cold Start ocorre por falta de memória do banco.', FALSE),
(161, 'O Cold Start é o provisionamento do ambiente de execução; Provisioned Concurrency pode reduzir a latência, enquanto o armazenamento local é efêmero.', TRUE),
(161, 'O bucket S3 caiu.', FALSE),
(161, 'O problema é causado pela VPN.', FALSE),

(162, 'Apenas HPA', FALSE),
(162, 'Cluster Autoscaler/Karpenter + HPA + Resource Requests/Limits', TRUE),
(162, 'Aumentar o disco EBS', FALSE),
(162, 'Converter a aplicação para NoSQL', FALSE),

(163, 'Permissões de escrita e exclusão automática', FALSE),
(163, 'S3 Object Lock em modo Compliance + Lifecycle Rule para Glacier', TRUE),
(163, 'Script semanal via Lambda', FALSE),
(163, 'Volume EBS criptografado', FALSE),

(164, 'AWS KMS', FALSE),
(164, 'Amazon Cognito', TRUE),
(164, 'AWS Secrets Manager', FALSE),
(164, 'AWS CodeArtifact', FALSE),

(165, 'DynamoDB On-Demand em todas as regiões sem cache', FALSE),
(165, 'Banco NoSQL + capacidade adequada + Auto Scaling/On-Demand + Cache como DAX ou Redis', TRUE),
(165, 'FTP diário para MySQL local', FALSE),
(165, 'S3 Glacier para todas as gravações síncronas', FALSE),

(166, 'CDN com pontos de presença distribuídos', TRUE),
(166, 'Uma única VM centralizada', FALSE),
(166, 'EBS compartilhado globalmente', FALSE),
(166, 'Banco relacional sem replicação', FALSE),

(167, 'Fila de mensagens', TRUE),
(167, 'Comunicação síncrona obrigatória', FALSE),
(167, 'EBS', FALSE),
(167, 'DNS Round Robin exclusivamente', FALSE),

(168, 'Serviço de mensageria/event streaming com múltiplos consumidores', TRUE),
(168, 'Compartilhamento NFS', FALSE),
(168, 'Uma única máquina virtual', FALSE),
(168, 'FTP para cada dispositivo', FALSE),

(169, 'Distribuir recursos somente em diferentes instâncias da mesma AZ', FALSE),
(169, 'Utilizar uma estratégia de Disaster Recovery envolvendo outra região', TRUE),
(169, 'Aumentar somente a capacidade de CPU', FALSE),
(169, 'Utilizar somente um servidor maior', FALSE),

(170, 'Replicação contínua ou síncrona, conforme arquitetura e requisitos', TRUE),
(170, 'Backup anual', FALSE),
(170, 'Exportação manual mensal', FALSE),
(170, 'Snapshot somente após incidentes', FALSE),

(171, 'Cache', TRUE),
(171, 'Aumentar exclusivamente o tamanho do disco', FALSE),
(171, 'Desabilitar índices', FALSE),
(171, 'Remover o balanceador', FALSE),

(172, 'Privilégio mínimo e separação de funções', TRUE),
(172, 'Acesso root compartilhado', FALSE),
(172, 'Uma única credencial para toda a equipe', FALSE),
(172, 'Permissões irrestritas', FALSE),

(173, 'Utilizar um sistema de gerenciamento de segredos integrado ao cluster', TRUE),
(173, 'Colocar as senhas no código-fonte', FALSE),
(173, 'Inserir as senhas na imagem Docker', FALSE),
(173, 'Publicar as credenciais no Git', FALSE),

(174, 'Hot Partition', TRUE),
(174, 'Cold Start', FALSE),
(174, 'DNS Poisoning', FALSE),
(174, 'Memory Leak obrigatoriamente', FALSE),

(175, 'Manter dois ambientes e direcionar o tráfego de forma controlada para a nova versão', TRUE),
(175, 'Atualizar todos os servidores simultaneamente sem rollback', FALSE),
(175, 'Remover o ambiente antigo antes de criar o novo', FALSE),
(175, 'Executar somente testes locais', FALSE),

(176, 'Rate Limiting/Throttling', TRUE),
(176, 'Object Lock', FALSE),
(176, 'EBS Snapshot', FALSE),
(176, 'DNS estático', FALSE),

(177, 'Bloquear acesso público e aplicar políticas de acesso explícitas', TRUE),
(177, 'Tornar o bucket público e confiar no nome secreto', FALSE),
(177, 'Compartilhar a chave root', FALSE),
(177, 'Desabilitar logs de acesso', FALSE),

(178, 'Health Checks', TRUE),
(178, 'Object Lock', FALSE),
(178, 'Versionamento de objetos', FALSE),
(178, 'NAT', FALSE),

(179, 'Distributed Tracing', TRUE),
(179, 'Block Storage', FALSE),
(179, 'Object Lifecycle', FALSE),
(179, 'DNS estático', FALSE),

(180, 'Uma única VM grande, acesso root e backups manuais', FALSE),
(180, 'Múltiplas AZs, Auto Scaling, Load Balancer, IAM com menor privilégio, monitoramento e estratégia de Disaster Recovery', TRUE),
(180, 'Um único servidor físico com RAID', FALSE),
(180, 'Armazenamento local sem replicação e deploy manual', FALSE);

SET @quiz_ingles_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Inglês Instrumental'
    LIMIT 1
);

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ingles_id, 'Leia: “Despite having sufficient storage, the installation was aborted due to missing permissions.” Qual foi a causa da interrupção?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “Had the administrator configured the firewall correctly, the incident might have been prevented”, a frase expressa:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The patch addresses vulnerabilities that could otherwise be exploited remotely.” Qual é a finalidade principal do patch?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Qual interpretação de “The findings are consistent with the initial assessment” é adequada?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Only after the logs had been reviewed was the root cause identified.” O que ocorreu primeiro?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em um relatório técnico, “The outage was traced back to a misconfigured router” indica que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Provided that the credentials remain valid, the service will continue operating.” Qual condição é necessária?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Na frase “The dataset, which had been anonymized, was shared with researchers”, qual informação é acrescentada pela oração relativa?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The update is unlikely to affect backward compatibility.” Qual é a previsão?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Qual é o sentido de “whereas” em “The first model prioritizes speed, whereas the second emphasizes accuracy”?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The system shall retain audit records for no less than ninety days.” Qual é o requisito?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “The feature would have worked if the dependency had been installed”, conclui-se que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The documentation omits the steps required to reproduce the bug.” Qual é a deficiência da documentação?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em um artigo, “The results suggest a correlation, not necessarily causation” significa que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Once the migration is complete, legacy endpoints will be deprecated.” O que acontecerá após a migração?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “Notwithstanding the limitations, the proposed solution remains viable”, o termo inicial indica:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The request was rejected because the payload did not conform to the schema.” Por que houve rejeição?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “The report should have been submitted by Friday”, a estrutura indica:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The proposed change may introduce unintended side effects.” Qual risco está sendo apontado?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Unless otherwise specified, all timestamps are expressed in UTC.” Qual regra deve ser adotada?', 'DIFICIL', 15, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(181, 'Falta de armazenamento', FALSE),
(181, 'Falta de permissões', TRUE),
(181, 'Ausência de conexão sem fio', FALSE),
(181, 'Incompatibilidade do monitor', FALSE),

(182, 'Uma hipótese contrária ao passado', TRUE),
(182, 'Uma instrução obrigatória no presente', FALSE),
(182, 'Um evento futuro confirmado', FALSE),
(182, 'Uma rotina habitual', FALSE),

(183, 'Aumentar o tamanho dos arquivos', FALSE),
(183, 'Desativar toda comunicação externa', FALSE),
(183, 'Criar novas contas de usuário', FALSE),
(183, 'Corrigir vulnerabilidades exploráveis remotamente', TRUE),

(184, 'Os resultados contradizem obrigatoriamente a avaliação inicial.', FALSE),
(184, 'A avaliação inicial ainda não foi realizada.', FALSE),
(184, 'Os resultados estão de acordo com a avaliação inicial.', TRUE),
(184, 'Os resultados foram descartados sem análise.', FALSE),

(185, 'A identificação da causa raiz', FALSE),
(185, 'A análise dos logs', TRUE),
(185, 'A publicação da correção', FALSE),
(185, 'A substituição do servidor', FALSE),

(186, 'A interrupção foi atribuída a um roteador mal configurado', TRUE),
(186, 'A interrupção foi causada por falta de energia comprovada', FALSE),
(186, 'O roteador foi instalado após a interrupção', FALSE),
(186, 'O problema foi resolvido por um novo navegador', FALSE),

(187, 'O serviço ser desinstalado', FALSE),
(187, 'O usuário alterar o hardware', FALSE),
(187, 'O servidor permanecer desligado', FALSE),
(187, 'As credenciais permanecerem válidas', TRUE),

(188, 'Os pesquisadores anonimizaram os dados após recebê-los', FALSE),
(188, 'Os dados continham obrigatoriamente nomes completos', FALSE),
(188, 'O conjunto de dados havia sido anonimizado', TRUE),
(188, 'O conjunto de dados não foi compartilhado', FALSE),

(189, 'A atualização certamente eliminará a compatibilidade', FALSE),
(189, 'É pouco provável que a atualização afete a compatibilidade retroativa', TRUE),
(189, 'A compatibilidade já foi removida', FALSE),
(189, 'A atualização depende da exclusão de versões anteriores', FALSE),

(190, 'Estabelecer contraste entre os modelos', TRUE),
(190, 'Indicar que ambos são idênticos', FALSE),
(190, 'Introduzir uma condição de instalação', FALSE),
(190, 'Expressar uma consequência inevitável', FALSE),

(191, 'Excluir registros após exatamente 30 dias', FALSE),
(191, 'Manter somente os últimos nove registros', FALSE),
(191, 'Apagar todos os registros a cada acesso', FALSE),
(191, 'Manter registros de auditoria por pelo menos 90 dias', TRUE),

(192, 'A funcionalidade funcionou normalmente', FALSE),
(192, 'A dependência será instalada com certeza', FALSE),
(192, 'A dependência não havia sido instalada na situação descrita', TRUE),
(192, 'A instalação da dependência é irrelevante', FALSE),

(193, 'Não informa a data de lançamento do produto', FALSE),
(193, 'Não apresenta as etapas necessárias para reproduzir o erro', TRUE),
(193, 'Não contém imagens decorativas', FALSE),
(193, 'Não identifica o fabricante do teclado', FALSE),

(194, 'Uma associação observada não comprova relação de causa e efeito', TRUE),
(194, 'Toda correlação comprova causalidade', FALSE),
(194, 'Os resultados descartam qualquer associação', FALSE),
(194, 'O estudo demonstrou uma causa única e definitiva', FALSE),

(195, 'Os endpoints antigos serão obrigatoriamente ampliados', FALSE),
(195, 'A migração será cancelada', FALSE),
(195, 'Todos os dados serão publicados', FALSE),
(195, 'Os endpoints antigos serão descontinuados gradualmente', TRUE),

(196, 'Causa direta das limitações', FALSE),
(196, 'Finalidade exclusiva da solução', FALSE),
(196, 'Concessão, apesar das limitações', TRUE),
(196, 'Sequência cronológica obrigatória', FALSE),

(197, 'O servidor estava sem energia', FALSE),
(197, 'O conteúdo enviado não seguia a estrutura exigida', TRUE),
(197, 'O usuário não havia aberto o navegador', FALSE),
(197, 'O arquivo tinha sido compactado corretamente', FALSE),

(198, 'Uma obrigação ou expectativa passada possivelmente não cumprida', TRUE),
(198, 'Uma obrigação que só começa no próximo mês', FALSE),
(198, 'Uma proibição permanente de enviar relatórios', FALSE),
(198, 'Uma confirmação de envio na sexta-feira', FALSE),

(199, 'Garantia de ausência de falhas', FALSE),
(199, 'Redução obrigatória do consumo de memória', FALSE),
(199, 'Eliminação de toda necessidade de testes', FALSE),
(199, 'Consequências não previstas decorrentes da alteração', TRUE),

(200, 'Usar sempre o horário local do leitor', FALSE),
(200, 'Ignorar a indicação de fuso horário', FALSE),
(200, 'Usar UTC para os horários, salvo indicação diferente', TRUE),
(200, 'Converter todos os horários para minutos', FALSE);

SET @quiz_ltt_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Linguagem, Trabalho e Tecnologia'
      AND d.modulo = 3
    LIMIT 1
);

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ltt_id, 'Um requisito diz: “O sistema deve responder rapidamente”. Qual reescrita torna o critério verificável?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Um relatório compara dois testes com amostras de tamanhos diferentes. Qual prática evita uma conclusão enganosa?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Ao elaborar um parecer técnico com evidências contraditórias, qual conduta é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual argumento evita a falácia de generalização apressada?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Uma equipe precisa comunicar uma vulnerabilidade ainda não corrigida. Qual texto equilibra precisão e responsabilidade?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual afirmação diferencia correlação de causalidade de maneira correta?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Um documento contém “O aplicativo enviará notificações aos usuários cadastrados quando estiverem ativos”. Como eliminar a ambiguidade se quem deve estar ativo é o aplicativo?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual redação diferencia corretamente escopo e limitação em um projeto?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Em uma proposta de melhoria, qual estrutura argumentativa é mais consistente?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Um gráfico tem eixo vertical começando em 98, e valores de 99 a 101. Qual cuidado interpretativo é essencial?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Ao redigir uma instrução de recuperação de dados, qual detalhe reduz o risco de interpretação inadequada?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual escolha fortalece a credibilidade de uma análise sobre desempenho de software?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Em uma análise comparativa, qual critério ajuda a evitar uma falsa equivalência?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Um texto afirma: “A equipe implementou testes; portanto, o software não tem defeitos”. Qual é a falha argumentativa?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual estratégia é mais adequada para documentar uma decisão arquitetural contestada?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Um relatório técnico cita uma estatística sem indicar período nem população. Qual é o principal problema?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Ao sintetizar entrevistas com usuários, qual prática preserva melhor a fidelidade dos resultados?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Qual frase apresenta uma recomendação condicionada a evidências, sem extrapolação?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Uma especificação afirma “o sistema nunca perderá dados”. Qual alternativa comunica melhor uma meta verificável?', 'DIFICIL', 15, 15),
(@quiz_ltt_id, 'Em uma apresentação de resultados negativos de um projeto, qual postura demonstra rigor técnico?', 'DIFICIL', 15, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(201, 'O sistema precisa superar qualquer concorrente.', FALSE),
(201, 'O sistema deve ser muito rápido sempre.', FALSE),
(201, 'Em 95% das consultas, a resposta deve ocorrer em até 2 segundos, sob carga definida.', TRUE),
(201, 'A resposta deve parecer imediata ao usuário.', FALSE),

(202, 'Comparar apenas o maior número absoluto.', FALSE),
(202, 'Ocultar o total de casos observados.', FALSE),
(202, 'Apresentar valores absolutos e proporções, informando o tamanho de cada amostra.', TRUE),
(202, 'Escolher somente o teste com melhor resultado.', FALSE),

(203, 'Explicitar divergências, limitações e critérios usados na análise.', TRUE),
(203, 'Afirmar certeza sem examinar as fontes.', FALSE),
(203, 'Tratar a primeira evidência como definitiva.', FALSE),
(203, 'Omitir dados que contrariem a hipótese inicial.', FALSE),

(204, 'Um teste passou; não há defeitos possíveis.', FALSE),
(204, 'Três usuários reclamaram; todos rejeitam o produto.', FALSE),
(204, 'Uma falha ocorreu; o sistema nunca funciona.', FALSE),
(204, 'Os três casos analisados sugerem uma tendência, mas a amostra não permite generalização.', TRUE),

(205, 'Divulgaremos credenciais de teste para provar o problema.', FALSE),
(205, 'Identificamos uma falha em investigação; o acesso afetado foi restringido e novas orientações serão divulgadas.', TRUE),
(205, 'A falha não importa e ninguém deve ser informado.', FALSE),
(205, 'O sistema é totalmente seguro, apesar da falha conhecida.', FALSE),

(206, 'Uma causa sempre produz correlação perfeita.', FALSE),
(206, 'Toda correlação demonstra relação de causa e efeito.', FALSE),
(206, 'Duas variáveis podem variar juntas sem que uma seja necessariamente a causa da outra.', TRUE),
(206, 'Se não há correlação, as variáveis são idênticas.', FALSE),

(207, 'Quando estiverem ativos, as notificações serão enviadas.', FALSE),
(207, 'Quando o aplicativo estiver ativo, enviará notificações aos usuários cadastrados.', TRUE),
(207, 'O aplicativo notificará os usuários ativos quando estiver ativo.', FALSE),
(207, 'O aplicativo enviará notificações quando eles estiverem ativos.', FALSE),

(208, 'Escopo e limitação significam a mesma coisa.', FALSE),
(208, 'O escopo inclui autenticação; a integração com sistemas legados fica fora desta entrega.', TRUE),
(208, 'O escopo é fazer tudo, sem exceções.', FALSE),
(208, 'Limitações são tarefas já concluídas.', FALSE),

(209, 'Problema demonstrado, evidências, alternativa proposta e impactos esperados.', TRUE),
(209, 'Solução escolhida, sem problema nem critérios.', FALSE),
(209, 'Opinião pessoal, slogan e conclusão sem dados.', FALSE),
(209, 'Crítica aos colegas, seguida de uma exigência.', FALSE),

(210, 'Afirmar que houve crescimento de 100%.', FALSE),
(210, 'Ocultar a escala para destacar a tendência.', FALSE),
(210, 'Informar a escala truncada, pois ela pode ampliar visualmente pequenas diferenças.', TRUE),
(210, 'Tratar a diferença visual como prova de causalidade.', FALSE),

(211, 'Usar “faça o necessário” em todas as etapas.', FALSE),
(211, 'Explicitar pré-requisitos, etapas, verificações e condições para interromper o procedimento.', TRUE),
(211, 'Misturar procedimentos alternativos sem identificação.', FALSE),
(211, 'Omitir alertas para encurtar o texto.', FALSE),

(212, 'Omitir a versão do sistema testado.', FALSE),
(212, 'Descrever ambiente, métricas, método de coleta e limitações dos resultados.', TRUE),
(212, 'Usar depoimentos como substitutos de toda medição.', FALSE),
(212, 'Informar apenas a melhor medição obtida.', FALSE),

(213, 'Usar métricas diferentes para favorecer uma opção.', FALSE),
(213, 'Dar o mesmo peso a qualquer alegação sem evidências.', FALSE),
(213, 'Ignorar diferenças relevantes de contexto.', FALSE),
(213, 'Comparar soluções segundo os mesmos requisitos e condições de teste.', TRUE),

(214, 'A conclusão absoluta não decorre da existência de testes.', TRUE),
(214, 'Testes nunca fornecem evidências de qualidade.', FALSE),
(214, 'A palavra “equipe” torna o texto informal.', FALSE),
(214, 'O uso de conectivo conclusivo é sempre proibido.', FALSE),

(215, 'Trocar a justificativa por uma frase motivacional.', FALSE),
(215, 'Registrar alternativas, critérios, evidências, decisão e consequências.', TRUE),
(215, 'Excluir as alternativas descartadas sem justificativa.', FALSE),
(215, 'Registrar somente o nome de quem venceu a discussão.', FALSE),

(216, 'A ausência de período torna o número necessariamente falso.', FALSE),
(216, 'Toda estatística precisa ser apresentada apenas por gráfico.', FALSE),
(216, 'O uso de números é inadequado em relatórios.', FALSE),
(216, 'Falta contexto para interpretar a abrangência e a validade do indicador.', TRUE),

(217, 'Excluir relatos que revelem divergências.', FALSE),
(217, 'Reescrever todas as falas como se fossem opiniões da equipe.', FALSE),
(217, 'Distinguir falas dos participantes, interpretação da equipe e conclusões.', TRUE),
(217, 'Apresentar inferências como citações literais.', FALSE),

(218, 'Todo problema de desempenho se resolve com cache.', FALSE),
(218, 'O cache é certamente a causa de qualquer lentidão.', FALSE),
(218, 'Se o teste de carga confirmar o gargalo, recomenda-se revisar o mecanismo de cache.', TRUE),
(218, 'O teste é desnecessário porque a solução já foi escolhida.', FALSE),

(219, 'O sistema será infalível em qualquer circunstância.', FALSE),
(219, 'A equipe garantirá confiabilidade total sem testes.', FALSE),
(219, 'A perda de dados será impossível por definição.', FALSE),
(219, 'Após falha simulada, a restauração deverá recuperar dados até o último ponto de backup definido.', TRUE),

(220, 'Relatar os resultados, investigar causas possíveis e propor próximos testes.', TRUE),
(220, 'Modificar os números para aproximá-los da meta.', FALSE),
(220, 'Atribuir o insucesso a uma pessoa sem evidências.', FALSE),
(220, 'Excluir os resultados para preservar a imagem da equipe.', FALSE);

SET @quiz_conduta_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Conduta Profissional e Relações de Trabalho'
    LIMIT 1
);

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_conduta_id, 'Uma equipe precisa usar dados reais em ambiente de testes. Qual abordagem reduz riscos de privacidade?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma pessoa relata discriminação praticada por seu superior imediato. Qual procedimento é mais apropriado?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma empresa mede produtividade somente pelo número de commits. Qual problema ético pode surgir?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um algoritmo de triagem de currículos apresenta resultados sistematicamente desfavoráveis a um grupo. Qual resposta é mais responsável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Durante um incidente, um gestor pede que você altere registros para esconder a hora real da falha. Qual decisão é adequada?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma empresa pretende monitorar empregados por software. Qual princípio deve orientar a decisão?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um desenvolvedor encontra código proprietário de outro cliente que resolveria rapidamente um problema. O que fazer?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Ao apurar um possível assédio, qual medida ajuda a preservar a justiça do procedimento?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um sistema automatizado negou um serviço importante com base em dados desatualizados. Qual prática é mais responsável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Em um projeto, a liderança exige uma data inviável e a equipe prevê falhas graves. Qual conduta demonstra integridade?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um fornecedor participa da definição dos critérios usados para avaliar sua própria proposta. Qual salvaguarda é recomendável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma análise de desempenho considera apenas horas conectadas, ignorando entregas e condições de acessibilidade. Qual é o principal risco?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um colaborador recebe uma solicitação para exportar dados de clientes sem finalidade clara. Qual deve ser a primeira providência?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma equipe descobre vulnerabilidade crítica pouco antes de uma entrega. Qual resposta equilibra responsabilidade e gestão de projeto?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma política interna conflita com obrigação legal aplicável. Qual orientação geral é correta?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma equipe global trabalha com diferentes contextos culturais. Como construir regras de convivência eficazes?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um relatório técnico contém incertezas relevantes sobre uma solução. Qual é a forma ética de apresentá-lo?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Em uma investigação interna, dados pessoais de testemunhas foram coletados. Qual procedimento é mais adequado?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma ferramenta sugere priorizar clientes com base em atributos potencialmente discriminatórios. Qual resposta é apropriada?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Após um incidente de vazamento, qual comunicação institucional tende a ser mais responsável?', 'DIFICIL', 15, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(221, 'Desativar controles de acesso para agilizar os testes.', FALSE),
(221, 'Manter identificadores pessoais visíveis em relatórios compartilhados.', FALSE),
(221, 'Usar dados sintéticos ou anonimizados adequadamente e controlar acessos.', TRUE),
(221, 'Copiar a base de produção integral para todos os desenvolvedores.', FALSE),

(222, 'Desconsiderar o caso por envolver liderança.', FALSE),
(222, 'Orientar o uso de canal independente e preservar a confidencialidade do relato.', TRUE),
(222, 'Exigir que o relato seja feito apenas ao próprio superior denunciado.', FALSE),
(222, 'Divulgar a denúncia a toda a equipe antes de apuração.', FALSE),

(223, 'O indicador pode estimular volume artificial e avaliações injustas de contribuições.', TRUE),
(223, 'O indicador mede diretamente a satisfação dos usuários.', FALSE),
(223, 'O indicador elimina a necessidade de avaliação contextual.', FALSE),
(223, 'O indicador demonstra sozinho a qualidade e o impacto do software.', FALSE),

(224, 'Manter o sistema por ser automatizado e, portanto, neutro.', FALSE),
(224, 'Auditar dados, critérios e resultados, corrigindo vieses identificados.', TRUE),
(224, 'Ocultar os resultados para evitar questionamentos.', FALSE),
(224, 'Excluir os registros do grupo afetado sem investigação.', FALSE),

(225, 'Modificar apenas os registros que o cliente poderá consultar.', FALSE),
(225, 'Apagar todos os logs para impedir interpretações equivocadas.', FALSE),
(225, 'Preservar registros íntegros e comunicar a solicitação pelos canais apropriados.', TRUE),
(225, 'Alterar os registros porque a ordem veio da liderança.', FALSE),

(226, 'Divulgação pública de métricas individuais sensíveis.', FALSE),
(226, 'Coleta irrestrita de dados pessoais independentemente da finalidade.', FALSE),
(226, 'Monitoramento oculto como prática padrão sem avaliação.', FALSE),
(226, 'Necessidade, proporcionalidade, transparência e respeito à privacidade.', TRUE),

(227, 'Compartilhar o repositório privado com toda a equipe.', FALSE),
(227, 'Copiar o código porque a finalidade é semelhante.', FALSE),
(227, 'Remover comentários de autoria antes de reutilizar.', FALSE),
(227, 'Respeitar direitos e contratos, buscando solução licenciada ou autorizada.', TRUE),

(228, 'Ignorar evidências que contrariem a hipótese inicial.', FALSE),
(228, 'Ouvir as partes, proteger envolvidos e analisar evidências com imparcialidade.', TRUE),
(228, 'Publicar depoimentos para pressionar os envolvidos.', FALSE),
(228, 'Considerar culpado quem receber a primeira denúncia.', FALSE),

(229, 'Presumir que decisões automatizadas nunca contêm erros.', FALSE),
(229, 'Prever revisão, correção de dados e contestação adequada da decisão.', TRUE),
(229, 'Apagar registros da decisão antes de investigar.', FALSE),
(229, 'Impedir qualquer contestação para preservar a automação.', FALSE),

(230, 'Confirmar a data sabendo que os testes serão omitidos.', FALSE),
(230, 'Ocultar os riscos para evitar desgaste com a liderança.', FALSE),
(230, 'Transferir responsabilidades sem revisar o plano.', FALSE),
(230, 'Documentar riscos, apresentar estimativas fundamentadas e negociar alternativas.', TRUE),

(231, 'Ocultar a participação do fornecedor na elaboração.', FALSE),
(231, 'Dispensar documentação para agilizar a seleção.', FALSE),
(231, 'Separar responsabilidades e submeter os critérios a revisão independente.', TRUE),
(231, 'Permitir que o fornecedor defina sozinho todos os pesos.', FALSE),

(232, 'Produzir avaliações distorcidas e potencialmente discriminatórias.', TRUE),
(232, 'Garantir automaticamente igualdade de oportunidades.', FALSE),
(232, 'Medir com precisão a qualidade de todas as entregas.', FALSE),
(232, 'Eliminar vieses por usar um indicador numérico.', FALSE),

(233, 'Usar conta pessoal para facilitar a transferência.', FALSE),
(233, 'Verificar finalidade, autorização e necessidade antes de executar a exportação.', TRUE),
(233, 'Exportar os dados e pedir justificativa depois.', FALSE),
(233, 'Enviar apenas uma amostra contendo dados sensíveis sem autorização.', FALSE),

(234, 'Omitir a vulnerabilidade porque a entrega já foi anunciada.', FALSE),
(234, 'Aguardar um ataque real para justificar a correção.', FALSE),
(234, 'Comunicar o risco, avaliar impacto e priorizar mitigação antes da exposição.', TRUE),
(234, 'Liberar o sistema e remover o registro da falha.', FALSE),

(235, 'Solicitar a colegas que decidam por votação qual regra vale.', FALSE),
(235, 'Buscar orientação competente e cumprir a obrigação legal aplicável.', TRUE),
(235, 'Ignorar ambas as regras sem registrar a situação.', FALSE),
(235, 'Seguir a política interna mesmo que imponha conduta ilegal.', FALSE),

(236, 'Evitar qualquer norma para não criar divergências.', FALSE),
(236, 'Impor costumes de uma única pessoa sem discussão.', FALSE),
(236, 'Aplicar estereótipos culturais para distribuir responsabilidades.', FALSE),
(236, 'Definir acordos inclusivos, claros e revisáveis com participação da equipe.', TRUE),

(237, 'Retirar ressalvas para tornar o relatório mais convincente.', FALSE),
(237, 'Explicitar hipóteses, limitações, evidências e riscos conhecidos.', TRUE),
(237, 'Selecionar apenas evidências favoráveis à proposta.', FALSE),
(237, 'Apresentar estimativas como resultados comprovados.', FALSE),

(238, 'Manter cópias indefinidamente em dispositivos pessoais.', FALSE),
(238, 'Restringir acesso e retenção ao necessário para a finalidade legítima.', TRUE),
(238, 'Compartilhar depoimentos com toda a organização.', FALSE),
(238, 'Utilizar os depoimentos em treinamentos públicos sem proteção.', FALSE),

(239, 'Aplicar a regra apenas a clientes que não possam contestar.', FALSE),
(239, 'Adotar a recomendação sem análise por ser estatística.', FALSE),
(239, 'Ocultar os atributos utilizados dos responsáveis pela decisão.', FALSE),
(239, 'Revisar a finalidade, a legitimidade dos critérios e seus impactos antes do uso.', TRUE),

(240, 'Eliminar registros de decisões para reduzir exposição institucional.', FALSE),
(240, 'Informar fatos confirmados, incertezas e medidas adotadas aos responsáveis e públicos pertinentes.', TRUE),
(240, 'Negar o incidente antes de concluir a apuração.', FALSE),
(240, 'Divulgar nomes e dados de pessoas afetadas indiscriminadamente.', FALSE);

SELECT
    q.id AS questao_id,
    q.quiz_id,
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
WHERE q.quiz_id IN (@quiz_nuvem_id, @quiz_ingles_id, @quiz_ltt_id, @quiz_conduta_id)
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.quiz_id, q.enunciado
ORDER BY q.quiz_id, q.id;