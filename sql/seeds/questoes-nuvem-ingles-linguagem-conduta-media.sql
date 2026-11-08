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

SET @id_nuvem = LAST_INSERT_ID();

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(@id_nuvem + 0, 'Armazenamento em Bloco', FALSE),
(@id_nuvem + 0, 'Armazenamento de Arquivos Compartilhados', TRUE),
(@id_nuvem + 0, 'Armazenamento de Objetos para Arquivamento', FALSE),
(@id_nuvem + 0, 'Banco de Dados Chave-Valor', FALSE),

(@id_nuvem + 1, 'As funções Serverless exigem pré-alocação contínua e pagamento fixo mensal.', FALSE),
(@id_nuvem + 1, 'As funções Serverless dependem da instalação manual de drivers e atualizações do SO.', FALSE),
(@id_nuvem + 1, 'As funções Serverless são disparadas por eventos e tarifadas conforme execução e recursos consumidos.', TRUE),
(@id_nuvem + 1, 'As funções Serverless não permitem integração com bancos de dados.', FALSE),

(@id_nuvem + 2, 'Múltiplas contas de faturamento', FALSE),
(@id_nuvem + 2, 'Múltiplas Zonas de Disponibilidade na mesma Região', TRUE),
(@id_nuvem + 2, 'Diferentes provedores em modo híbrido', FALSE),
(@id_nuvem + 2, 'Múltiplas instâncias na mesma máquina física', FALSE),

(@id_nuvem + 3, 'AWS CodeCommit e AWS Amplify', FALSE),
(@id_nuvem + 3, 'AWS CodeBuild e AWS CodePipeline', TRUE),
(@id_nuvem + 3, 'Azure Repos e Azure Active Directory', FALSE),
(@id_nuvem + 3, 'Google Cloud Identity e Google Cloud Storage', FALSE),

(@id_nuvem + 4, 'Reduzir a quantidade de usuários', FALSE),
(@id_nuvem + 4, 'Eliminar a necessidade de backups', FALSE),
(@id_nuvem + 4, 'Permitir tolerância à falha de uma zona', TRUE),
(@id_nuvem + 4, 'Eliminar completamente os custos de infraestrutura', FALSE),

(@id_nuvem + 5, 'Amazon EBS', TRUE),
(@id_nuvem + 5, 'Amazon S3', FALSE),
(@id_nuvem + 5, 'Amazon EFS', FALSE),
(@id_nuvem + 5, 'Amazon Glacier', FALSE),

(@id_nuvem + 6, 'CDN', TRUE),
(@id_nuvem + 6, 'NAT Gateway', FALSE),
(@id_nuvem + 6, 'VPN', FALSE),
(@id_nuvem + 6, 'Bastion Host', FALSE),

(@id_nuvem + 7, 'Auto Scaling', TRUE),
(@id_nuvem + 7, 'Object Lock', FALSE),
(@id_nuvem + 7, 'IAM Policy', FALSE),
(@id_nuvem + 7, 'DNS Zone', FALSE),

(@id_nuvem + 8, 'Gerenciar identidades, autenticação e permissões', TRUE),
(@id_nuvem + 8, 'Armazenar arquivos grandes', FALSE),
(@id_nuvem + 8, 'Executar containers', FALSE),
(@id_nuvem + 8, 'Criar bancos relacionais', FALSE),

(@id_nuvem + 9, 'Banco NoSQL chave-valor', TRUE),
(@id_nuvem + 9, 'Banco relacional tradicional exclusivamente', FALSE),
(@id_nuvem + 9, 'Data Warehouse somente', FALSE),
(@id_nuvem + 9, 'Sistema de arquivos', FALSE),

(@id_nuvem + 10, 'NAT Gateway', TRUE),
(@id_nuvem + 10, 'Internet Gateway exclusivamente para entrada', FALSE),
(@id_nuvem + 10, 'EBS', FALSE),
(@id_nuvem + 10, 'ECR', FALSE),

(@id_nuvem + 11, 'Containers sempre exigem mais recursos que VMs', FALSE),
(@id_nuvem + 11, 'Containers geralmente possuem menor overhead e maior portabilidade', TRUE),
(@id_nuvem + 11, 'Containers eliminam completamente a necessidade de segurança', FALSE),
(@id_nuvem + 11, 'Containers não podem ser executados em nuvem', FALSE),

(@id_nuvem + 12, 'Secrets Manager', TRUE),
(@id_nuvem + 12, 'CloudFront', FALSE),
(@id_nuvem + 12, 'ECR', FALSE),
(@id_nuvem + 12, 'Route 53', FALSE),

(@id_nuvem + 13, 'Kubernetes', TRUE),
(@id_nuvem + 13, 'FTP', FALSE),
(@id_nuvem + 13, 'SMTP', FALSE),
(@id_nuvem + 13, 'NFS', FALSE),

(@id_nuvem + 14, 'Sempre exigem esquema rígido e joins complexos', FALSE),
(@id_nuvem + 14, 'Podem oferecer modelos flexíveis e escalabilidade horizontal', TRUE),
(@id_nuvem + 14, 'Não suportam grandes volumes de dados', FALSE),
(@id_nuvem + 14, 'Só podem ser executados localmente', FALSE),

(@id_nuvem + 15, 'Amazon ECR', TRUE),
(@id_nuvem + 15, 'Amazon RDS', FALSE),
(@id_nuvem + 15, 'Amazon EFS', FALSE),
(@id_nuvem + 15, 'Amazon Route 53', FALSE),

(@id_nuvem + 16, 'Evento do armazenamento acionando uma função Serverless', TRUE),
(@id_nuvem + 16, 'Máquina virtual reiniciada manualmente', FALSE),
(@id_nuvem + 16, 'Banco relacional sem triggers', FALSE),
(@id_nuvem + 16, 'Firewall acionando um servidor físico', FALSE),

(@id_nuvem + 17, 'Resolver nomes de domínio para endereços IP', TRUE),
(@id_nuvem + 17, 'Armazenar objetos', FALSE),
(@id_nuvem + 17, 'Criar máquinas virtuais', FALSE),
(@id_nuvem + 17, 'Criptografar arquivos', FALSE),

(@id_nuvem + 18, 'Usar a conta root para todas as operações', FALSE),
(@id_nuvem + 18, 'Conceder permissões administrativas a todos os usuários', FALSE),
(@id_nuvem + 18, 'Aplicar o princípio do menor privilégio', TRUE),
(@id_nuvem + 18, 'Desativar todos os mecanismos de autenticação', FALSE),

(@id_nuvem + 19, 'Google Cloud Spanner', TRUE),
(@id_nuvem + 19, 'Amazon DynamoDB', FALSE),
(@id_nuvem + 19, 'Azure Cosmos DB com consistência eventual', FALSE),
(@id_nuvem + 19, 'Google Cloud Bigtable', FALSE);

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
(@quiz_ingles_id, 'Leia: “Please restart your computer after installing the update.” O que deve ser feito após a instalação?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Do not share your password with anyone.” Qual é a orientação?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “The file was uploaded successfully”, o arquivo foi:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “If the problem persists, contact technical support.” Em que condição deve-se procurar suporte?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual alternativa traduz “The application requires an internet connection”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “Users must accept the terms before proceeding”, “must” expressa:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Make sure the device is plugged in.” O usuário deve verificar se o dispositivo está:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'No contexto “The server is currently unavailable”, qual é a situação do servidor?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Back up your files before resetting the device.” Qual é a sequência recomendada?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “This feature is enabled by default”, a funcionalidade está:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual tradução preserva o sentido de “The password must contain at least eight characters”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Although the download completed, the installation failed.” O que ocorreu?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em um tutorial, “Select the folder where you want to store the file” orienta a:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “The website collects data to improve user experience.” Para que o site coleta dados?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “You should verify the sender before opening the link”, “should” indica:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Unless you save your changes, they will be lost.” O que evita a perda das alterações?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Em “The new version is more reliable than the previous one”, o comparativo indica:', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “Access is restricted to authorized personnel.” Quem pode acessar?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Qual é a função de “however” em “The tool is free; however, registration is required”?', 'MEDIO', 10, 15),
(@quiz_ingles_id, 'Leia: “The issue has been resolved.” Qual é o estado atual do problema?', 'MEDIO', 10, 15);

SET @id_ingles = LAST_INSERT_ID();

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(@id_ingles + 0, 'Desligar o roteador', FALSE),
(@id_ingles + 0, 'Reiniciar o computador', TRUE),
(@id_ingles + 0, 'Excluir a atualização', FALSE),
(@id_ingles + 0, 'Trocar a senha', FALSE),

(@id_ingles + 1, 'Não compartilhar a senha com ninguém', TRUE),
(@id_ingles + 1, 'Enviar a senha ao suporte', FALSE),
(@id_ingles + 1, 'Alterar a senha diariamente', FALSE),
(@id_ingles + 1, 'Anotar a senha na tela', FALSE),

(@id_ingles + 2, 'Baixado com erro', FALSE),
(@id_ingles + 2, 'Excluído permanentemente', FALSE),
(@id_ingles + 2, 'Renomeado automaticamente', FALSE),
(@id_ingles + 2, 'Enviado com sucesso', TRUE),

(@id_ingles + 3, 'Antes de ligar o equipamento', FALSE),
(@id_ingles + 3, 'Sempre que houver atualização', FALSE),
(@id_ingles + 3, 'Se o problema continuar', TRUE),
(@id_ingles + 3, 'Somente após trocar o computador', FALSE),

(@id_ingles + 4, 'O aplicativo dispensa conexão com a internet.', FALSE),
(@id_ingles + 4, 'O aplicativo exige conexão com a internet.', TRUE),
(@id_ingles + 4, 'A conexão será removida pelo aplicativo.', FALSE),
(@id_ingles + 4, 'O aplicativo bloqueia toda conexão com a internet.', FALSE),

(@id_ingles + 5, 'Obrigação', TRUE),
(@id_ingles + 5, 'Possibilidade remota', FALSE),
(@id_ingles + 5, 'Preferência', FALSE),
(@id_ingles + 5, 'Proibição', FALSE),

(@id_ingles + 6, 'Desconectado da rede', FALSE),
(@id_ingles + 6, 'Com a tela bloqueada', FALSE),
(@id_ingles + 6, 'Com o volume reduzido', FALSE),
(@id_ingles + 6, 'Conectado à tomada', TRUE),

(@id_ingles + 7, 'Está disponível para todos', FALSE),
(@id_ingles + 7, 'Foi instalado recentemente', FALSE),
(@id_ingles + 7, 'Está indisponível no momento', TRUE),
(@id_ingles + 7, 'Está realizando uma cópia concluída', FALSE),

(@id_ingles + 8, 'Redefinir o dispositivo antes de salvar arquivos', FALSE),
(@id_ingles + 8, 'Fazer backup antes de redefinir o dispositivo', TRUE),
(@id_ingles + 8, 'Apagar os arquivos e depois fazer backup', FALSE),
(@id_ingles + 8, 'Ignorar os arquivos antes de redefinir', FALSE),

(@id_ingles + 9, 'Ativada por padrão', TRUE),
(@id_ingles + 9, 'Desativada permanentemente', FALSE),
(@id_ingles + 9, 'Disponível apenas mediante pagamento', FALSE),
(@id_ingles + 9, 'Oculta por falha', FALSE),

(@id_ingles + 10, 'A senha deve conter exatamente oito números.', FALSE),
(@id_ingles + 10, 'A senha pode ter no máximo oito caracteres.', FALSE),
(@id_ingles + 10, 'A senha não pode conter letras.', FALSE),
(@id_ingles + 10, 'A senha deve conter pelo menos oito caracteres.', TRUE),

(@id_ingles + 11, 'A instalação terminou antes do download', FALSE),
(@id_ingles + 11, 'O download e a instalação falharam', FALSE),
(@id_ingles + 11, 'O download terminou, mas a instalação falhou', TRUE),
(@id_ingles + 11, 'A instalação foi concluída com sucesso', FALSE),

(@id_ingles + 12, 'Apagar a pasta que contém o arquivo', FALSE),
(@id_ingles + 12, 'Escolher a pasta de destino do arquivo', TRUE),
(@id_ingles + 12, 'Compactar todas as pastas', FALSE),
(@id_ingles + 12, 'Compartilhar a pasta com todos', FALSE),

(@id_ingles + 13, 'Para melhorar a experiência do usuário', TRUE),
(@id_ingles + 13, 'Para impedir a navegação', FALSE),
(@id_ingles + 13, 'Para desligar o dispositivo', FALSE),
(@id_ingles + 13, 'Para remover todas as contas', FALSE),

(@id_ingles + 14, 'Certeza de conclusão', FALSE),
(@id_ingles + 14, 'Ação já executada', FALSE),
(@id_ingles + 14, 'Impossibilidade', FALSE),
(@id_ingles + 14, 'Recomendação', TRUE),

(@id_ingles + 15, 'Fechar o programa sem salvar', FALSE),
(@id_ingles + 15, 'Reiniciar o computador imediatamente', FALSE),
(@id_ingles + 15, 'Salvar as alterações', TRUE),
(@id_ingles + 15, 'Desconectar o teclado', FALSE),

(@id_ingles + 16, 'Menor confiabilidade da nova versão', FALSE),
(@id_ingles + 16, 'Maior confiabilidade da nova versão', TRUE),
(@id_ingles + 16, 'Confiabilidade idêntica', FALSE),
(@id_ingles + 16, 'Ausência de versões anteriores', FALSE),

(@id_ingles + 17, 'Somente pessoas autorizadas', TRUE),
(@id_ingles + 17, 'Qualquer visitante', FALSE),
(@id_ingles + 17, 'Somente usuários desconectados', FALSE),
(@id_ingles + 17, 'Todos os usuários anônimos', FALSE),

(@id_ingles + 18, 'Indicar causa direta', FALSE),
(@id_ingles + 18, 'Enumerar etapas', FALSE),
(@id_ingles + 18, 'Concluir uma sequência temporal', FALSE),
(@id_ingles + 18, 'Introduzir contraste', TRUE),

(@id_ingles + 19, 'Será analisado amanhã', FALSE),
(@id_ingles + 19, 'Ainda não foi identificado', FALSE),
(@id_ingles + 19, 'Foi resolvido', TRUE),
(@id_ingles + 19, 'Está sendo criado', FALSE);

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
(@quiz_ltt_id, 'Qual reescrita elimina a ambiguidade de “O gerente avisou ao analista que seu relatório estava incompleto”, quando o relatório é do analista?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual conectivo expressa oposição entre duas ideias?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual conectivo introduz uma conclusão decorrente do que foi exposto?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual trecho é mais adequado para relatar um incidente técnico sem atribuir culpa antes da investigação?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Em um relatório, qual frase diferencia fato observado de hipótese?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual organização é mais adequada para um relatório técnico de diagnóstico?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual frase utiliza linguagem inclusiva e profissional ao orientar uma equipe?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Ao parafrasear uma ideia de outra fonte, qual procedimento é correto?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual frase apresenta concordância verbal adequada?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual alternativa emprega pontuação adequada para introduzir uma enumeração?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual é a melhor forma de comunicar um prazo com precisão?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual trecho mantém um tom adequado ao solicitar correção de um documento?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual estratégia torna uma apresentação técnica mais acessível a um público não especializado?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual frase separa corretamente uma recomendação de um resultado medido?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual é a função de uma referência bibliográfica?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual abordagem é apropriada ao resumir um artigo técnico?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual recurso melhora a coesão ao evitar repetição excessiva de um termo?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual frase expressa relação de causa de forma explícita?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Em uma reunião, qual pergunta favorece o esclarecimento de um requisito ambíguo?', 'MEDIO', 10, 15),
(@quiz_ltt_id, 'Qual registro é mais útil para acompanhar uma tarefa atribuída em reunião?', 'MEDIO', 10, 15);

SET @id_ltt = LAST_INSERT_ID();

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(@id_ltt + 0, 'O gerente avisou ao analista que o relatório do analista estava incompleto.', TRUE),
(@id_ltt + 0, 'O gerente avisou que o relatório dele estava incompleto.', FALSE),
(@id_ltt + 0, 'O gerente avisou ao analista que seu relatório continuava incompleto.', FALSE),
(@id_ltt + 0, 'O gerente, com seu relatório, avisou ao analista.', FALSE),

(@id_ltt + 1, 'Portanto.', FALSE),
(@id_ltt + 1, 'Porque.', FALSE),
(@id_ltt + 1, 'Entretanto.', TRUE),
(@id_ltt + 1, 'Além disso.', FALSE),

(@id_ltt + 2, 'Contudo.', FALSE),
(@id_ltt + 2, 'Portanto.', TRUE),
(@id_ltt + 2, 'Embora.', FALSE),
(@id_ltt + 2, 'Enquanto.', FALSE),

(@id_ltt + 3, 'Com certeza a equipe de rede causou a falha.', FALSE),
(@id_ltt + 3, 'O serviço ficou indisponível às 14h; a causa ainda está em análise.', TRUE),
(@id_ltt + 3, 'O sistema parou por motivos absurdos.', FALSE),
(@id_ltt + 3, 'O erro aconteceu porque alguém foi descuidado.', FALSE),

(@id_ltt + 4, 'A hipótese foi comprovada apenas porque parece provável.', FALSE),
(@id_ltt + 4, 'O log registrou cinco falhas; suspeita-se de instabilidade na conexão.', TRUE),
(@id_ltt + 4, 'A conexão falhou, logo o fornecedor é culpado.', FALSE),
(@id_ltt + 4, 'O servidor está ruim e isso é óbvio.', FALSE),

(@id_ltt + 5, 'Contexto, procedimento, resultados e conclusão.', TRUE),
(@id_ltt + 5, 'Conclusão, saudação, propaganda e assinatura.', FALSE),
(@id_ltt + 5, 'Anexos, despedida, slogan e introdução.', FALSE),
(@id_ltt + 5, 'Resultados, piadas, opiniões e título.', FALSE),

(@id_ltt + 6, 'A equipe que não entender é incompetente.', FALSE),
(@id_ltt + 6, 'Só os funcionários mais antigos precisam saber.', FALSE),
(@id_ltt + 6, 'A orientação vale apenas para quem concordar.', FALSE),
(@id_ltt + 6, 'Todas as pessoas da equipe devem receber as instruções.', TRUE),

(@id_ltt + 7, 'Trocar poucas palavras e omitir a referência.', FALSE),
(@id_ltt + 7, 'Atribuir a ideia a si mesmo.', FALSE),
(@id_ltt + 7, 'Reformular com palavras próprias e indicar a fonte.', TRUE),
(@id_ltt + 7, 'Copiar integralmente sem aspas nem crédito.', FALSE),

(@id_ltt + 8, 'Os resultado da pesquisa foram apresentado ontem.', FALSE),
(@id_ltt + 8, 'Os resultados da pesquisa foram apresentados ontem.', TRUE),
(@id_ltt + 8, 'Os resultados da pesquisa foi apresentado ontem.', FALSE),
(@id_ltt + 8, 'Os resultados da pesquisa foi apresentados ontem.', FALSE),

(@id_ltt + 9, 'O relatório apresenta três tópicos; contexto, método e resultados.', FALSE),
(@id_ltt + 9, 'O relatório apresenta três tópicos: contexto, método e resultados.', TRUE),
(@id_ltt + 9, 'O relatório apresenta: três tópicos contexto método e resultados.', FALSE),
(@id_ltt + 9, 'O relatório apresenta três tópicos? contexto, método e resultados.', FALSE),

(@id_ltt + 10, 'Envie logo que possível.', FALSE),
(@id_ltt + 10, 'Preciso disso em breve.', FALSE),
(@id_ltt + 10, 'Envie a versão revisada até 16 de outubro, às 17h, horário de Brasília.', TRUE),
(@id_ltt + 10, 'Mande em algum momento da semana.', FALSE),

(@id_ltt + 11, 'Isso está horrível, refaça.', FALSE),
(@id_ltt + 11, 'Poderia revisar os valores da tabela 2, por favor?', TRUE),
(@id_ltt + 11, 'Não vou explicar; descubra sozinho.', FALSE),
(@id_ltt + 11, 'Você errou tudo na tabela 2.', FALSE),

(@id_ltt + 12, 'Aumentar a quantidade de jargões.', FALSE),
(@id_ltt + 12, 'Excluir o objetivo da apresentação.', FALSE),
(@id_ltt + 12, 'Explicar termos técnicos e usar exemplos pertinentes.', TRUE),
(@id_ltt + 12, 'Usar apenas siglas sem defini-las.', FALSE),

(@id_ltt + 13, 'A taxa de erro foi de 3%, provando negligência.', FALSE),
(@id_ltt + 13, 'A taxa de erro foi de 3%; recomenda-se investigar os registros.', TRUE),
(@id_ltt + 13, 'Investigar registros é o mesmo que medir 3%.', FALSE),
(@id_ltt + 13, 'A recomendação é um dado coletado pelo sistema.', FALSE),

(@id_ltt + 14, 'Substituir o desenvolvimento do texto.', FALSE),
(@id_ltt + 14, 'Confirmar automaticamente a veracidade do conteúdo.', FALSE),
(@id_ltt + 14, 'Indicar somente o número de páginas escritas.', FALSE),
(@id_ltt + 14, 'Permitir a identificação da obra consultada.', TRUE),

(@id_ltt + 15, 'Omitir resultados que contrariem a opinião pessoal.', FALSE),
(@id_ltt + 15, 'Copiar apenas frases isoladas sem contexto.', FALSE),
(@id_ltt + 15, 'Preservar as ideias principais sem distorcer o sentido.', TRUE),
(@id_ltt + 15, 'Acrescentar conclusões que o autor não apresentou.', FALSE),

(@id_ltt + 16, 'Usar referências pronominais claras e sinônimos adequados.', TRUE),
(@id_ltt + 16, 'Trocar o assunto a cada frase.', FALSE),
(@id_ltt + 16, 'Eliminar todos os conectivos.', FALSE),
(@id_ltt + 16, 'Usar pronomes sem antecedente identificável.', FALSE),

(@id_ltt + 17, 'O envio atrasou, por outro lado a conexão foi interrompida.', FALSE),
(@id_ltt + 17, 'O envio atrasou porque a conexão foi interrompida.', TRUE),
(@id_ltt + 17, 'O envio atrasou, entretanto a conexão foi interrompida.', FALSE),
(@id_ltt + 17, 'O envio atrasou, além disso a conexão foi interrompida.', FALSE),

(@id_ltt + 18, 'Podemos deixar esse detalhe para depois, sem registrar?', FALSE),
(@id_ltt + 18, 'Todo mundo já entendeu, certo?', FALSE),
(@id_ltt + 18, 'Não precisamos definir critérios, correto?', FALSE),
(@id_ltt + 18, 'O que significa “resposta rápida” em segundos, neste projeto?', TRUE),

(@id_ltt + 19, 'Uma impressão geral sem datas.', FALSE),
(@id_ltt + 19, 'Apenas o primeiro nome do participante.', FALSE),
(@id_ltt + 19, 'Somente o título da reunião.', FALSE),
(@id_ltt + 19, 'Responsável, atividade, prazo e situação.', TRUE);

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
(@quiz_conduta_id, 'Um colega solicita sua senha corporativa para concluir uma tarefa urgente. Qual é a melhor resposta?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Você percebe que uma entrega ficará atrasada. Qual postura é mais profissional?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Uma pessoa da equipe recebe comentários ofensivos recorrentes. Qual ação é mais adequada?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Durante uma seleção, qual critério tende a ser mais justo?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Ao receber dados pessoais de clientes para uma atividade, qual prática é adequada?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Uma equipe diverge sobre a prioridade de tarefas. Como decidir de forma profissional?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Um fornecedor oferece benefício pessoal para influenciar sua decisão. O que fazer?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Qual situação representa um conflito de interesses?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Em um projeto colaborativo, como reconhecer adequadamente a autoria?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Qual é uma resposta adequada a uma solicitação fora do escopo combinado?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Um colega faz uma pergunta básica durante uma reunião técnica. Qual postura favorece a aprendizagem?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Ao trabalhar remotamente, qual prática reforça a responsabilidade profissional?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Como lidar com informação confidencial recebida por engano?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Uma decisão técnica pode prejudicar a acessibilidade de usuários. Qual ação é mais ética?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'O que deve orientar uma avaliação de desempenho responsável?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Qual conduta é adequada ao identificar uma falha de segurança em sistema corporativo?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Um cliente solicita uma funcionalidade que viola uma política de privacidade. Como agir?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Qual prática contribui para a saúde nas relações de trabalho?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Em uma retrospectiva, como tratar um erro coletivo?', 'MEDIO', 10, 15),
(@quiz_conduta_id, 'Ao utilizar uma ferramenta de IA no trabalho, qual cuidado profissional é essencial?', 'MEDIO', 10, 15);

SET @id_conduta = LAST_INSERT_ID();

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(@id_conduta + 0, 'Compartilhar a senha apenas por mensagem privada.', FALSE),
(@id_conduta + 0, 'Enviar a senha e alterá-la somente no mês seguinte.', FALSE),
(@id_conduta + 0, 'Permitir o acesso usando sua conta sem registrar a ação.', FALSE),
(@id_conduta + 0, 'Não compartilhar a senha e buscar um acesso autorizado para ele.', TRUE),

(@id_conduta + 1, 'Esperar o prazo vencer para informar a equipe.', FALSE),
(@id_conduta + 1, 'Registrar a entrega como concluída mesmo incompleta.', FALSE),
(@id_conduta + 1, 'Informar apenas depois que o cliente reclamar.', FALSE),
(@id_conduta + 1, 'Avisar antecipadamente, explicar o impacto e propor um novo plano.', TRUE),

(@id_conduta + 2, 'Pedir à pessoa que aceite a situação para evitar conflitos.', FALSE),
(@id_conduta + 2, 'Tratar os comentários como brincadeiras inevitáveis.', FALSE),
(@id_conduta + 2, 'Compartilhar os comentários para obter mais opiniões.', FALSE),
(@id_conduta + 2, 'Acolher a pessoa e encaminhar o caso pelos canais institucionais.', TRUE),

(@id_conduta + 3, 'Excluir pessoas por características sem relação com a vaga.', FALSE),
(@id_conduta + 3, 'Avaliar competências relacionadas à função por critérios definidos.', TRUE),
(@id_conduta + 3, 'Alterar critérios depois de conhecer os candidatos.', FALSE),
(@id_conduta + 3, 'Escolher candidatos por afinidade pessoal apenas.', FALSE),

(@id_conduta + 4, 'Copiar todos os dados para um dispositivo pessoal.', FALSE),
(@id_conduta + 4, 'Compartilhar a lista integral com qualquer colega.', FALSE),
(@id_conduta + 4, 'Usar apenas os dados necessários à finalidade autorizada.', TRUE),
(@id_conduta + 4, 'Reutilizar os dados em campanhas não autorizadas.', FALSE),

(@id_conduta + 5, 'Comparar impacto, urgência e objetivos do projeto em diálogo.', TRUE),
(@id_conduta + 5, 'Ignorar prazos previamente acordados.', FALSE),
(@id_conduta + 5, 'Atribuir a decisão a quem falar mais alto.', FALSE),
(@id_conduta + 5, 'Escolher sempre a preferência do membro mais antigo.', FALSE),

(@id_conduta + 6, 'Pedir que o benefício seja entregue fora do expediente.', FALSE),
(@id_conduta + 6, 'Recusar o benefício e comunicar o potencial conflito de interesses.', TRUE),
(@id_conduta + 6, 'Aceitar o benefício se o valor for baixo, sem informar.', FALSE),
(@id_conduta + 6, 'Escolher o fornecedor antes de analisar propostas.', FALSE),

(@id_conduta + 7, 'Comunicar previamente um vínculo relevante.', FALSE),
(@id_conduta + 7, 'Registrar critérios objetivos para contratação.', FALSE),
(@id_conduta + 7, 'Solicitar uma avaliação técnica independente.', FALSE),
(@id_conduta + 7, 'Participar da escolha de empresa pertencente a familiar sem declarar o vínculo.', TRUE),

(@id_conduta + 8, 'Assinar sozinho uma entrega construída pela equipe.', FALSE),
(@id_conduta + 8, 'Omitir a participação de colaboradores.', FALSE),
(@id_conduta + 8, 'Creditar contribuições reais de colegas e fontes utilizadas.', TRUE),
(@id_conduta + 8, 'Copiar materiais externos sem atribuição.', FALSE),

(@id_conduta + 9, 'Esclarecer o escopo e negociar formalmente impactos e prioridades.', TRUE),
(@id_conduta + 9, 'Ignorar a solicitação sem resposta.', FALSE),
(@id_conduta + 9, 'Alterar o planejamento sem comunicar a equipe.', FALSE),
(@id_conduta + 9, 'Aceitar sem avaliar prazo, custo ou recursos.', FALSE),

(@id_conduta + 10, 'Afirmar que perguntas não são permitidas.', FALSE),
(@id_conduta + 10, 'Ridicularizar a dúvida diante da equipe.', FALSE),
(@id_conduta + 10, 'Responder com respeito e indicar referências úteis.', TRUE),
(@id_conduta + 10, 'Encerrar a reunião para evitar explicações.', FALSE),

(@id_conduta + 11, 'Cumprir acordos de disponibilidade e comunicar o andamento das tarefas.', TRUE),
(@id_conduta + 11, 'Compartilhar credenciais para facilitar substituições.', FALSE),
(@id_conduta + 11, 'Manter o status de disponível sem executar atividades.', FALSE),
(@id_conduta + 11, 'Deixar informações importantes somente em conversas informais.', FALSE),

(@id_conduta + 12, 'Encaminhar a colegas para perguntar se é relevante.', FALSE),
(@id_conduta + 12, 'Publicar um trecho para alertar outras pessoas.', FALSE),
(@id_conduta + 12, 'Armazenar cópia pessoal para uso futuro.', FALSE),
(@id_conduta + 12, 'Evitar divulgação e comunicar o responsável pelo canal adequado.', TRUE),

(@id_conduta + 13, 'Omitir o impacto para preservar o cronograma.', FALSE),
(@id_conduta + 13, 'Considerar acessibilidade apenas após reclamações.', FALSE),
(@id_conduta + 13, 'Apresentar o impacto e buscar alternativas acessíveis.', TRUE),
(@id_conduta + 13, 'Desconsiderar usuários que utilizam tecnologias assistivas.', FALSE),

(@id_conduta + 14, 'Impressões pessoais sem exemplos concretos.', FALSE),
(@id_conduta + 14, 'Evidências observáveis, critérios claros e feedback respeitoso.', TRUE),
(@id_conduta + 14, 'Comentários anônimos não verificados como único critério.', FALSE),
(@id_conduta + 14, 'Preferências pessoais do avaliador.', FALSE),

(@id_conduta + 15, 'Explorar a falha para demonstrar habilidade.', FALSE),
(@id_conduta + 15, 'Registrar e reportar pelos canais de segurança definidos.', TRUE),
(@id_conduta + 15, 'Divulgar detalhes técnicos publicamente antes de avisar.', FALSE),
(@id_conduta + 15, 'Utilizar a falha para acessar dados sem autorização.', FALSE),

(@id_conduta + 16, 'Ocultar a funcionalidade da documentação.', FALSE),
(@id_conduta + 16, 'Explicar a restrição e propor alternativa compatível com as regras.', TRUE),
(@id_conduta + 16, 'Implementar a solicitação para evitar perder o cliente.', FALSE),
(@id_conduta + 16, 'Solicitar que outro desenvolvedor assuma a tarefa sem explicação.', FALSE),

(@id_conduta + 17, 'Normalizar humilhações como método de cobrança.', FALSE),
(@id_conduta + 17, 'Desestimular o registro de sobrecarga.', FALSE),
(@id_conduta + 17, 'Respeitar limites, pausas e acordos de comunicação.', TRUE),
(@id_conduta + 17, 'Exigir respostas imediatas a qualquer hora sem necessidade.', FALSE),

(@id_conduta + 18, 'Evitar discutir problemas para preservar a imagem da equipe.', FALSE),
(@id_conduta + 18, 'Expor publicamente um integrante como responsável único.', FALSE),
(@id_conduta + 18, 'Descartar evidências que poderiam orientar melhorias.', FALSE),
(@id_conduta + 18, 'Analisar causas e melhorias sem buscar culpados arbitrariamente.', TRUE),

(@id_conduta + 19, 'Verificar resultados e respeitar regras de confidencialidade e autoria.', TRUE),
(@id_conduta + 19, 'Atribuir a ferramenta toda responsabilidade por decisões.', FALSE),
(@id_conduta + 19, 'Publicar resultados sem conferência porque foram automatizados.', FALSE),
(@id_conduta + 19, 'Inserir dados sigilosos em qualquer serviço sem avaliação.', FALSE);

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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.quiz_id, q.enunciado
ORDER BY q.quiz_id, q.id;