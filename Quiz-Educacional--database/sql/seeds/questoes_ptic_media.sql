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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(81, 'Armazenamento em Bloco', FALSE),
(81, 'Armazenamento de Arquivos Compartilhados', TRUE),
(81, 'Armazenamento de Objetos para Arquivamento', FALSE),
(81, 'Banco de Dados Chave-Valor', FALSE),

(82, 'As funções Serverless exigem pré-alocação contínua e pagamento fixo mensal.', FALSE),
(82, 'As funções Serverless dependem da instalação manual de drivers e atualizações do SO.', FALSE),
(82, 'As funções Serverless são disparadas por eventos e tarifadas conforme execução e recursos consumidos.', TRUE),
(82, 'As funções Serverless não permitem integração com bancos de dados.', FALSE),

(83, 'Múltiplas contas de faturamento', FALSE),
(83, 'Múltiplas Zonas de Disponibilidade na mesma Região', TRUE),
(83, 'Diferentes provedores em modo híbrido', FALSE),
(83, 'Múltiplas instâncias na mesma máquina física', FALSE),

(84, 'AWS CodeCommit e AWS Amplify', FALSE),
(84, 'AWS CodeBuild e AWS CodePipeline', TRUE),
(84, 'Azure Repos e Azure Active Directory', FALSE),
(84, 'Google Cloud Identity e Google Cloud Storage', FALSE),

(85, 'Reduzir a quantidade de usuários', FALSE),
(85, 'Eliminar a necessidade de backups', FALSE),
(85, 'Permitir tolerância à falha de uma zona', TRUE),
(85, 'Eliminar completamente os custos de infraestrutura', FALSE),

(86, 'Amazon EBS', TRUE),
(86, 'Amazon S3', FALSE),
(86, 'Amazon EFS', FALSE),
(86, 'Amazon Glacier', FALSE),

(87, 'CDN', TRUE),
(87, 'NAT Gateway', FALSE),
(87, 'VPN', FALSE),
(87, 'Bastion Host', FALSE),

(88, 'Auto Scaling', TRUE),
(88, 'Object Lock', FALSE),
(88, 'IAM Policy', FALSE),
(88, 'DNS Zone', FALSE),

(89, 'Gerenciar identidades, autenticação e permissões', TRUE),
(89, 'Armazenar arquivos grandes', FALSE),
(89, 'Executar containers', FALSE),
(89, 'Criar bancos relacionais', FALSE),

(90, 'Banco NoSQL chave-valor', TRUE),
(90, 'Banco relacional tradicional exclusivamente', FALSE),
(90, 'Data Warehouse somente', FALSE),
(90, 'Sistema de arquivos', FALSE),

(91, 'NAT Gateway', TRUE),
(91, 'Internet Gateway exclusivamente para entrada', FALSE),
(91, 'EBS', FALSE),
(91, 'ECR', FALSE),

(92, 'Containers sempre exigem mais recursos que VMs', FALSE),
(92, 'Containers geralmente possuem menor overhead e maior portabilidade', TRUE),
(92, 'Containers eliminam completamente a necessidade de segurança', FALSE),
(92, 'Containers não podem ser executados em nuvem', FALSE),

(93, 'Secrets Manager', TRUE),
(93, 'CloudFront', FALSE),
(93, 'ECR', FALSE),
(93, 'Route 53', FALSE),

(94, 'Kubernetes', TRUE),
(94, 'FTP', FALSE),
(94, 'SMTP', FALSE),
(94, 'NFS', FALSE),

(95, 'Sempre exigem esquema rígido e joins complexos', FALSE),
(95, 'Podem oferecer modelos flexíveis e escalabilidade horizontal', TRUE),
(95, 'Não suportam grandes volumes de dados', FALSE),
(95, 'Só podem ser executados localmente', FALSE),

(96, 'Amazon ECR', TRUE),
(96, 'Amazon RDS', FALSE),
(96, 'Amazon EFS', FALSE),
(96, 'Amazon Route 53', FALSE),

(97, 'Evento do armazenamento acionando uma função Serverless', TRUE),
(97, 'Máquina virtual reiniciada manualmente', FALSE),
(97, 'Banco relacional sem triggers', FALSE),
(97, 'Firewall acionando um servidor físico', FALSE),

(98, 'Resolver nomes de domínio para endereços IP', TRUE),
(98, 'Armazenar objetos', FALSE),
(98, 'Criar máquinas virtuais', FALSE),
(98, 'Criptografar arquivos', FALSE),

(99, 'Usar a conta root para todas as operações', FALSE),
(99, 'Conceder permissões administrativas a todos os usuários', FALSE),
(99, 'Aplicar o princípio do menor privilégio', TRUE),
(99, 'Desativar todos os mecanismos de autenticação', FALSE),

(100, 'Google Cloud Spanner', TRUE),
(100, 'Amazon DynamoDB', FALSE),
(100, 'Azure Cosmos DB com consistência eventual', FALSE),
(100, 'Google Cloud Bigtable', FALSE);

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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(101, 'Desligar o roteador', FALSE),
(101, 'Reiniciar o computador', TRUE),
(101, 'Excluir a atualização', FALSE),
(101, 'Trocar a senha', FALSE),

(102, 'Não compartilhar a senha com ninguém', TRUE),
(102, 'Enviar a senha ao suporte', FALSE),
(102, 'Alterar a senha diariamente', FALSE),
(102, 'Anotar a senha na tela', FALSE),

(103, 'Baixado com erro', FALSE),
(103, 'Excluído permanentemente', FALSE),
(103, 'Renomeado automaticamente', FALSE),
(103, 'Enviado com sucesso', TRUE),

(104, 'Antes de ligar o equipamento', FALSE),
(104, 'Sempre que houver atualização', FALSE),
(104, 'Se o problema continuar', TRUE),
(104, 'Somente após trocar o computador', FALSE),

(105, 'O aplicativo dispensa conexão com a internet.', FALSE),
(105, 'O aplicativo exige conexão com a internet.', TRUE),
(105, 'A conexão será removida pelo aplicativo.', FALSE),
(105, 'O aplicativo bloqueia toda conexão com a internet.', FALSE),

(106, 'Obrigação', TRUE),
(106, 'Possibilidade remota', FALSE),
(106, 'Preferência', FALSE),
(106, 'Proibição', FALSE),

(107, 'Desconectado da rede', FALSE),
(107, 'Com a tela bloqueada', FALSE),
(107, 'Com o volume reduzido', FALSE),
(107, 'Conectado à tomada', TRUE),

(108, 'Está disponível para todos', FALSE),
(108, 'Foi instalado recentemente', FALSE),
(108, 'Está indisponível no momento', TRUE),
(108, 'Está realizando uma cópia concluída', FALSE),

(109, 'Redefinir o dispositivo antes de salvar arquivos', FALSE),
(109, 'Fazer backup antes de redefinir o dispositivo', TRUE),
(109, 'Apagar os arquivos e depois fazer backup', FALSE),
(109, 'Ignorar os arquivos antes de redefinir', FALSE),

(110, 'Ativada por padrão', TRUE),
(110, 'Desativada permanentemente', FALSE),
(110, 'Disponível apenas mediante pagamento', FALSE),
(110, 'Oculta por falha', FALSE),

(111, 'A senha deve conter exatamente oito números.', FALSE),
(111, 'A senha pode ter no máximo oito caracteres.', FALSE),
(111, 'A senha não pode conter letras.', FALSE),
(111, 'A senha deve conter pelo menos oito caracteres.', TRUE),

(112, 'A instalação terminou antes do download', FALSE),
(112, 'O download e a instalação falharam', FALSE),
(112, 'O download terminou, mas a instalação falhou', TRUE),
(112, 'A instalação foi concluída com sucesso', FALSE),

(113, 'Apagar a pasta que contém o arquivo', FALSE),
(113, 'Escolher a pasta de destino do arquivo', TRUE),
(113, 'Compactar todas as pastas', FALSE),
(113, 'Compartilhar a pasta com todos', FALSE),

(114, 'Para melhorar a experiência do usuário', TRUE),
(114, 'Para impedir a navegação', FALSE),
(114, 'Para desligar o dispositivo', FALSE),
(114, 'Para remover todas as contas', FALSE),

(115, 'Certeza de conclusão', FALSE),
(115, 'Ação já executada', FALSE),
(115, 'Impossibilidade', FALSE),
(115, 'Recomendação', TRUE),

(116, 'Fechar o programa sem salvar', FALSE),
(116, 'Reiniciar o computador imediatamente', FALSE),
(116, 'Salvar as alterações', TRUE),
(116, 'Desconectar o teclado', FALSE),

(117, 'Menor confiabilidade da nova versão', FALSE),
(117, 'Maior confiabilidade da nova versão', TRUE),
(117, 'Confiabilidade idêntica', FALSE),
(117, 'Ausência de versões anteriores', FALSE),

(118, 'Somente pessoas autorizadas', TRUE),
(118, 'Qualquer visitante', FALSE),
(118, 'Somente usuários desconectados', FALSE),
(118, 'Todos os usuários anônimos', FALSE),

(119, 'Indicar causa direta', FALSE),
(119, 'Enumerar etapas', FALSE),
(119, 'Concluir uma sequência temporal', FALSE),
(119, 'Introduzir contraste', TRUE),

(120, 'Será analisado amanhã', FALSE),
(120, 'Ainda não foi identificado', FALSE),
(120, 'Foi resolvido', TRUE),
(120, 'Está sendo criado', FALSE);

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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(121, 'O gerente avisou ao analista que o relatório do analista estava incompleto.', TRUE),
(121, 'O gerente avisou que o relatório dele estava incompleto.', FALSE),
(121, 'O gerente avisou ao analista que seu relatório continuava incompleto.', FALSE),
(121, 'O gerente, com seu relatório, avisou ao analista.', FALSE),

(122, 'Portanto.', FALSE),
(122, 'Porque.', FALSE),
(122, 'Entretanto.', TRUE),
(122, 'Além disso.', FALSE),

(123, 'Contudo.', FALSE),
(123, 'Portanto.', TRUE),
(123, 'Embora.', FALSE),
(123, 'Enquanto.', FALSE),

(124, 'Com certeza a equipe de rede causou a falha.', FALSE),
(124, 'O serviço ficou indisponível às 14h; a causa ainda está em análise.', TRUE),
(124, 'O sistema parou por motivos absurdos.', FALSE),
(124, 'O erro aconteceu porque alguém foi descuidado.', FALSE),

(125, 'A hipótese foi comprovada apenas porque parece provável.', FALSE),
(125, 'O log registrou cinco falhas; suspeita-se de instabilidade na conexão.', TRUE),
(125, 'A conexão falhou, logo o fornecedor é culpado.', FALSE),
(125, 'O servidor está ruim e isso é óbvio.', FALSE),

(126, 'Contexto, procedimento, resultados e conclusão.', TRUE),
(126, 'Conclusão, saudação, propaganda e assinatura.', FALSE),
(126, 'Anexos, despedida, slogan e introdução.', FALSE),
(126, 'Resultados, piadas, opiniões e título.', FALSE),

(127, 'A equipe que não entender é incompetente.', FALSE),
(127, 'Só os funcionários mais antigos precisam saber.', FALSE),
(127, 'A orientação vale apenas para quem concordar.', FALSE),
(127, 'Todas as pessoas da equipe devem receber as instruções.', TRUE),

(128, 'Trocar poucas palavras e omitir a referência.', FALSE),
(128, 'Atribuir a ideia a si mesmo.', FALSE),
(128, 'Reformular com palavras próprias e indicar a fonte.', TRUE),
(128, 'Copiar integralmente sem aspas nem crédito.', FALSE),

(129, 'Os resultado da pesquisa foram apresentado ontem.', FALSE),
(129, 'Os resultados da pesquisa foram apresentados ontem.', TRUE),
(129, 'Os resultados da pesquisa foi apresentado ontem.', FALSE),
(129, 'Os resultados da pesquisa foi apresentados ontem.', FALSE),

(130, 'O relatório apresenta três tópicos; contexto, método e resultados.', FALSE),
(130, 'O relatório apresenta três tópicos: contexto, método e resultados.', TRUE),
(130, 'O relatório apresenta: três tópicos contexto método e resultados.', FALSE),
(130, 'O relatório apresenta três tópicos? contexto, método e resultados.', FALSE),

(131, 'Envie logo que possível.', FALSE),
(131, 'Preciso disso em breve.', FALSE),
(131, 'Envie a versão revisada até 16 de outubro, às 17h, horário de Brasília.', TRUE),
(131, 'Mande em algum momento da semana.', FALSE),

(132, 'Isso está horrível, refaça.', FALSE),
(132, 'Poderia revisar os valores da tabela 2, por favor?', TRUE),
(132, 'Não vou explicar; descubra sozinho.', FALSE),
(132, 'Você errou tudo na tabela 2.', FALSE),

(133, 'Aumentar a quantidade de jargões.', FALSE),
(133, 'Excluir o objetivo da apresentação.', FALSE),
(133, 'Explicar termos técnicos e usar exemplos pertinentes.', TRUE),
(133, 'Usar apenas siglas sem defini-las.', FALSE),

(134, 'A taxa de erro foi de 3%, provando negligência.', FALSE),
(134, 'A taxa de erro foi de 3%; recomenda-se investigar os registros.', TRUE),
(134, 'Investigar registros é o mesmo que medir 3%.', FALSE),
(134, 'A recomendação é um dado coletado pelo sistema.', FALSE),

(135, 'Substituir o desenvolvimento do texto.', FALSE),
(135, 'Confirmar automaticamente a veracidade do conteúdo.', FALSE),
(135, 'Indicar somente o número de páginas escritas.', FALSE),
(135, 'Permitir a identificação da obra consultada.', TRUE),

(136, 'Omitir resultados que contrariem a opinião pessoal.', FALSE),
(136, 'Copiar apenas frases isoladas sem contexto.', FALSE),
(136, 'Preservar as ideias principais sem distorcer o sentido.', TRUE),
(136, 'Acrescentar conclusões que o autor não apresentou.', FALSE),

(137, 'Usar referências pronominais claras e sinônimos adequados.', TRUE),
(137, 'Trocar o assunto a cada frase.', FALSE),
(137, 'Eliminar todos os conectivos.', FALSE),
(137, 'Usar pronomes sem antecedente identificável.', FALSE),

(138, 'O envio atrasou, por outro lado a conexão foi interrompida.', FALSE),
(138, 'O envio atrasou porque a conexão foi interrompida.', TRUE),
(138, 'O envio atrasou, entretanto a conexão foi interrompida.', FALSE),
(138, 'O envio atrasou, além disso a conexão foi interrompida.', FALSE),

(139, 'Podemos deixar esse detalhe para depois, sem registrar?', FALSE),
(139, 'Todo mundo já entendeu, certo?', FALSE),
(139, 'Não precisamos definir critérios, correto?', FALSE),
(139, 'O que significa “resposta rápida” em segundos, neste projeto?', TRUE),

(140, 'Uma impressão geral sem datas.', FALSE),
(140, 'Apenas o primeiro nome do participante.', FALSE),
(140, 'Somente o título da reunião.', FALSE),
(140, 'Responsável, atividade, prazo e situação.', TRUE);

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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(141, 'Compartilhar a senha apenas por mensagem privada.', FALSE),
(141, 'Enviar a senha e alterá-la somente no mês seguinte.', FALSE),
(141, 'Permitir o acesso usando sua conta sem registrar a ação.', FALSE),
(141, 'Não compartilhar a senha e buscar um acesso autorizado para ele.', TRUE),

(142, 'Esperar o prazo vencer para informar a equipe.', FALSE),
(142, 'Registrar a entrega como concluída mesmo incompleta.', FALSE),
(142, 'Informar apenas depois que o cliente reclamar.', FALSE),
(142, 'Avisar antecipadamente, explicar o impacto e propor um novo plano.', TRUE),

(143, 'Pedir à pessoa que aceite a situação para evitar conflitos.', FALSE),
(143, 'Tratar os comentários como brincadeiras inevitáveis.', FALSE),
(143, 'Compartilhar os comentários para obter mais opiniões.', FALSE),
(143, 'Acolher a pessoa e encaminhar o caso pelos canais institucionais.', TRUE),

(144, 'Excluir pessoas por características sem relação com a vaga.', FALSE),
(144, 'Avaliar competências relacionadas à função por critérios definidos.', TRUE),
(144, 'Alterar critérios depois de conhecer os candidatos.', FALSE),
(144, 'Escolher candidatos por afinidade pessoal apenas.', FALSE),

(145, 'Copiar todos os dados para um dispositivo pessoal.', FALSE),
(145, 'Compartilhar a lista integral com qualquer colega.', FALSE),
(145, 'Usar apenas os dados necessários à finalidade autorizada.', TRUE),
(145, 'Reutilizar os dados em campanhas não autorizadas.', FALSE),

(146, 'Comparar impacto, urgência e objetivos do projeto em diálogo.', TRUE),
(146, 'Ignorar prazos previamente acordados.', FALSE),
(146, 'Atribuir a decisão a quem falar mais alto.', FALSE),
(146, 'Escolher sempre a preferência do membro mais antigo.', FALSE),

(147, 'Pedir que o benefício seja entregue fora do expediente.', FALSE),
(147, 'Recusar o benefício e comunicar o potencial conflito de interesses.', TRUE),
(147, 'Aceitar o benefício se o valor for baixo, sem informar.', FALSE),
(147, 'Escolher o fornecedor antes de analisar propostas.', FALSE),

(148, 'Comunicar previamente um vínculo relevante.', FALSE),
(148, 'Registrar critérios objetivos para contratação.', FALSE),
(148, 'Solicitar uma avaliação técnica independente.', FALSE),
(148, 'Participar da escolha de empresa pertencente a familiar sem declarar o vínculo.', TRUE),

(149, 'Assinar sozinho uma entrega construída pela equipe.', FALSE),
(149, 'Omitir a participação de colaboradores.', FALSE),
(149, 'Creditar contribuições reais de colegas e fontes utilizadas.', TRUE),
(149, 'Copiar materiais externos sem atribuição.', FALSE),

(150, 'Esclarecer o escopo e negociar formalmente impactos e prioridades.', TRUE),
(150, 'Ignorar a solicitação sem resposta.', FALSE),
(150, 'Alterar o planejamento sem comunicar a equipe.', FALSE),
(150, 'Aceitar sem avaliar prazo, custo ou recursos.', FALSE),

(151, 'Afirmar que perguntas não são permitidas.', FALSE),
(151, 'Ridicularizar a dúvida diante da equipe.', FALSE),
(151, 'Responder com respeito e indicar referências úteis.', TRUE),
(151, 'Encerrar a reunião para evitar explicações.', FALSE),

(152, 'Cumprir acordos de disponibilidade e comunicar o andamento das tarefas.', TRUE),
(152, 'Compartilhar credenciais para facilitar substituições.', FALSE),
(152, 'Manter o status de disponível sem executar atividades.', FALSE),
(152, 'Deixar informações importantes somente em conversas informais.', FALSE),

(153, 'Encaminhar a colegas para perguntar se é relevante.', FALSE),
(153, 'Publicar um trecho para alertar outras pessoas.', FALSE),
(153, 'Armazenar cópia pessoal para uso futuro.', FALSE),
(153, 'Evitar divulgação e comunicar o responsável pelo canal adequado.', TRUE),

(154, 'Omitir o impacto para preservar o cronograma.', FALSE),
(154, 'Considerar acessibilidade apenas após reclamações.', FALSE),
(154, 'Apresentar o impacto e buscar alternativas acessíveis.', TRUE),
(154, 'Desconsiderar usuários que utilizam tecnologias assistivas.', FALSE),

(155, 'Impressões pessoais sem exemplos concretos.', FALSE),
(155, 'Evidências observáveis, critérios claros e feedback respeitoso.', TRUE),
(155, 'Comentários anônimos não verificados como único critério.', FALSE),
(155, 'Preferências pessoais do avaliador.', FALSE),

(156, 'Explorar a falha para demonstrar habilidade.', FALSE),
(156, 'Registrar e reportar pelos canais de segurança definidos.', TRUE),
(156, 'Divulgar detalhes técnicos publicamente antes de avisar.', FALSE),
(156, 'Utilizar a falha para acessar dados sem autorização.', FALSE),

(157, 'Ocultar a funcionalidade da documentação.', FALSE),
(157, 'Explicar a restrição e propor alternativa compatível com as regras.', TRUE),
(157, 'Implementar a solicitação para evitar perder o cliente.', FALSE),
(157, 'Solicitar que outro desenvolvedor assuma a tarefa sem explicação.', FALSE),

(158, 'Normalizar humilhações como método de cobrança.', FALSE),
(158, 'Desestimular o registro de sobrecarga.', FALSE),
(158, 'Respeitar limites, pausas e acordos de comunicação.', TRUE),
(158, 'Exigir respostas imediatas a qualquer hora sem necessidade.', FALSE),

(159, 'Evitar discutir problemas para preservar a imagem da equipe.', FALSE),
(159, 'Expor publicamente um integrante como responsável único.', FALSE),
(159, 'Descartar evidências que poderiam orientar melhorias.', FALSE),
(159, 'Analisar causas e melhorias sem buscar culpados arbitrariamente.', TRUE),

(160, 'Verificar resultados e respeitar regras de confidencialidade e autoria.', TRUE),
(160, 'Atribuir a ferramenta toda responsabilidade por decisões.', FALSE),
(160, 'Publicar resultados sem conferência porque foram automatizados.', FALSE),
(160, 'Inserir dados sigilosos em qualquer serviço sem avaliação.', FALSE);

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