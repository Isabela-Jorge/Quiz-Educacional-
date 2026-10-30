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

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(1, 'IaaS (Infrastructure as a Service)', FALSE),
(1, 'PaaS (Platform as a Service)', TRUE),
(1, 'SaaS (Software as a Service)', FALSE),
(1, 'BaaS (Backup as a Service)', FALSE),

(2, 'Armazenamento em Bloco', FALSE),
(2, 'Arquivos Compartilhados', FALSE),
(2, 'Armazenamento de Objetos', TRUE),
(2, 'Banco de Dados Relacional', FALSE),

(3, 'Amazon EC2', TRUE),
(3, 'Gmail', FALSE),
(3, 'Google Docs', FALSE),
(3, 'Amazon S3', FALSE),

(4, 'Necessidade de aquisição de servidores físicos próprios', FALSE),
(4, 'Elasticidade e provisionamento de recursos sob demanda', TRUE),
(4, 'Utilização obrigatória de apenas um sistema operacional', FALSE),
(4, 'Impossibilidade de automatizar recursos', FALSE),

(5, 'Manutenção do hardware dos servidores físicos do datacenter.', FALSE),
(5, 'Segurança física das instalações e controle de acesso aos racks.', FALSE),
(5, 'Atualização do firmware das placas de rede dos hosts.', FALSE),
(5, 'Gestão dos dados armazenados e controle de acesso às aplicações.', TRUE),

(6, 'Amazon EBS', FALSE),
(6, 'Amazon S3', TRUE),
(6, 'Amazon EC2', FALSE),
(6, 'Amazon RDS', FALSE),

(7, 'Amazon RDS', TRUE),
(7, 'Amazon S3', FALSE),
(7, 'Amazon ECR', FALSE),
(7, 'AWS Lambda', FALSE),

(8, 'AWS Lambda', TRUE),
(8, 'Amazon EBS', FALSE),
(8, 'Amazon VPC', FALSE),
(8, 'Amazon Route 53', FALSE),

(9, 'Amazon DynamoDB e Google Cloud Datastore / Firestore', TRUE),
(9, 'Amazon RDS e Azure Database for MySQL', FALSE),
(9, 'Google Cloud SQL e Azure SQL Database', FALSE),
(9, 'Amazon Aurora e Cloud Spanner', FALSE),

(10, 'AWS Amplify', FALSE),
(10, 'Amazon ECR', TRUE),
(10, 'AWS CodePipeline', FALSE),
(10, 'Amazon ECS', FALSE),

(11, 'Elasticidade', TRUE),
(11, 'Virtualização manual', FALSE),
(11, 'Criptografia', FALSE),
(11, 'Deduplicação', FALSE),

(12, 'Amazon VPC', TRUE),
(12, 'Amazon S3', FALSE),
(12, 'AWS Lambda', FALSE),
(12, 'Amazon ECR', FALSE),

(13, 'Armazenar backups', FALSE),
(13, 'Distribuir requisições entre múltiplos servidores', TRUE),
(13, 'Criptografar bancos de dados', FALSE),
(13, 'Criar imagens Docker', FALSE),

(14, 'Amazon EC2', FALSE),
(14, 'Google Compute Engine', FALSE),
(14, 'Microsoft 365', TRUE),
(14, 'Amazon EBS', FALSE),

(15, 'Virtualização', TRUE),
(15, 'Balanceamento', FALSE),
(15, 'Cache', FALSE),
(15, 'Replicação', FALSE),

(16, 'Pagamento antecipado obrigatório', FALSE),
(16, 'Pagamento baseado no consumo dos recursos', TRUE),
(16, 'Pagamento exclusivamente anual', FALSE),
(16, 'Pagamento somente pelo hardware físico', FALSE),

(17, 'Object Storage', TRUE),
(17, 'Block Storage', FALSE),
(17, 'CPU Cache', FALSE),
(17, 'Memory Storage', FALSE),

(18, 'Aumentar a capacidade do processador', FALSE),
(18, 'Controlar o tráfego de rede de acordo com regras de segurança', TRUE),
(18, 'Criar containers', FALSE),
(18, 'Fazer backup automático do banco', FALSE),

(19, 'Container', TRUE),
(19, 'VPN', FALSE),
(19, 'DNS', FALSE),
(19, 'CDN', FALSE),

(20, 'Amazon CloudFront', TRUE),
(20, 'Amazon RDS', FALSE),
(20, 'Amazon EBS', FALSE),
(20, 'Amazon DynamoDB', FALSE);

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
(@quiz_ingles_id, 'Em um manual, o termo “save” indica qual ação?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual é a tradução adequada de “keyboard” em informática?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma interface, “settings” geralmente significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O botão “cancel” normalmente permite:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em instruções de software, “click” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual palavra inglesa significa “senha”?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em um formulário, “required field” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O termo “download” corresponde a:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma mensagem, “error” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual expressão indica que um dispositivo está conectado?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em “Open the file”, o verbo “open” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma página de cadastro, “first name” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'A palavra “update”, em um aplicativo, indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual expressão significa “tente novamente”?', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em um site, “search” identifica a função de:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'A palavra “warning” indica:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em uma conta de usuário, “sign in” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Em “The system is ready”, “ready” significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'O termo “attachment”, em um e-mail, significa:', 'FACIL', 5, 15),
(@quiz_ingles_id, 'Qual palavra inglesa indica “impressora”?', 'FACIL', 5, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(21, 'Imprimir', FALSE),
(21, 'Salvar', TRUE),
(21, 'Excluir', FALSE),
(21, 'Fechar', FALSE),

(22, 'Teclado', TRUE),
(22, 'Tela', FALSE),
(22, 'Mouse', FALSE),
(22, 'Impressora', FALSE),

(23, 'Downloads', FALSE),
(23, 'Arquivos', FALSE),
(23, 'Mensagens', FALSE),
(23, 'Configurações', TRUE),

(24, 'Confirmar uma compra', FALSE),
(24, 'Salvar um arquivo', FALSE),
(24, 'Cancelar uma operação', TRUE),
(24, 'Atualizar uma página', FALSE),

(25, 'Arrastar', FALSE),
(25, 'Clicar', TRUE),
(25, 'Copiar', FALSE),
(25, 'Digitar', FALSE),

(26, 'Password', TRUE),
(26, 'Username', FALSE),
(26, 'Folder', FALSE),
(26, 'Window', FALSE),

(27, 'Campo oculto', FALSE),
(27, 'Campo desativado', FALSE),
(27, 'Campo opcional', FALSE),
(27, 'Campo obrigatório', TRUE),

(28, 'Enviar um arquivo', FALSE),
(28, 'Excluir um arquivo', FALSE),
(28, 'Baixar um arquivo', TRUE),
(28, 'Renomear um arquivo', FALSE),

(29, 'Sucesso', FALSE),
(29, 'Erro', TRUE),
(29, 'Ajuda', FALSE),
(29, 'Aviso de conclusão', FALSE),

(30, 'Connected', TRUE),
(30, 'Deleted', FALSE),
(30, 'Expired', FALSE),
(30, 'Disabled', FALSE),

(31, 'Salvar', FALSE),
(31, 'Fechar', FALSE),
(31, 'Mover', FALSE),
(31, 'Abrir', TRUE),

(32, 'Sobrenome', FALSE),
(32, 'Nome de usuário', FALSE),
(32, 'Primeiro nome', TRUE),
(32, 'Nome da empresa', FALSE),

(33, 'Desinstalação', FALSE),
(33, 'Atualização', TRUE),
(33, 'Impressão', FALSE),
(33, 'Tradução', FALSE),

(34, 'Try again', TRUE),
(34, 'Turn off', FALSE),
(34, 'Sign out', FALSE),
(34, 'Go back', FALSE),

(35, 'Compartilhar', FALSE),
(35, 'Arquivar', FALSE),
(35, 'Imprimir', FALSE),
(35, 'Pesquisar', TRUE),

(36, 'Confirmação', FALSE),
(36, 'Arquivo', FALSE),
(36, 'Aviso ou alerta', TRUE),
(36, 'Permissão', FALSE),

(37, 'Criar uma pasta', FALSE),
(37, 'Entrar na conta', TRUE),
(37, 'Alterar o idioma', FALSE),
(37, 'Desligar o aparelho', FALSE),

(38, 'Pronto', TRUE),
(38, 'Lento', FALSE),
(38, 'Vazio', FALSE),
(38, 'Bloqueado', FALSE),

(39, 'Assunto', FALSE),
(39, 'Destinatário', FALSE),
(39, 'Rascunho', FALSE),
(39, 'Anexo', TRUE),

(40, 'Scanner', FALSE),
(40, 'Speaker', FALSE),
(40, 'Printer', TRUE),
(40, 'Router', FALSE);

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
(@quiz_ltt_id, 'Qual é a finalidade principal de um texto instrucional?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Em um e-mail profissional, qual assunto é mais informativo?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual elemento apresenta a ideia central de um parágrafo argumentativo?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é a função de um título em um relatório?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'O que caracteriza a linguagem formal em um contexto profissional?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual documento registra decisões e encaminhamentos de uma reunião?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Em um texto, qual é a função do ponto de interrogação?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'O que é o destinatário de uma mensagem?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é o objetivo de revisar um texto antes do envio?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual alternativa apresenta uma saudação adequada a um e-mail formal?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'O que é uma fonte de informação em uma pesquisa?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual recurso organiza informações em linhas e colunas?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Em uma apresentação oral, qual prática facilita a compreensão?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é a função de uma conclusão em um texto argumentativo?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual documento costuma apresentar formação e experiência profissional?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é a finalidade de uma legenda em um gráfico?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'O que é uma sigla?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é a função de um parágrafo?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é o objetivo de uma comunicação objetiva?', 'FACIL', 5, 15),
(@quiz_ltt_id, 'Qual é a finalidade de citar uma fonte em um trabalho?', 'FACIL', 5, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(41, 'Descrever emoções pessoais.', FALSE),
(41, 'Orientar a execução de uma tarefa.', TRUE),
(41, 'Narrar uma história fictícia.', FALSE),
(41, 'Defender uma opinião política.', FALSE),

(42, 'Solicitação de revisão do relatório mensal', TRUE),
(42, 'Uma coisa', FALSE),
(42, 'Oi', FALSE),
(42, 'Importante!!!', FALSE),

(43, 'A numeração das páginas.', FALSE),
(43, 'A assinatura do remetente.', FALSE),
(43, 'A frase que expressa a tese ou argumento principal.', TRUE),
(43, 'A data de impressão.', FALSE),

(44, 'Apresentar a senha do sistema.', FALSE),
(44, 'Indicar claramente o tema do documento.', TRUE),
(44, 'Substituir todas as conclusões.', FALSE),
(44, 'Eliminar a necessidade de referências.', FALSE),

(45, 'Adequação à norma-padrão e à situação comunicativa.', TRUE),
(45, 'Ausência de pontuação.', FALSE),
(45, 'Emprego constante de abreviações informais.', FALSE),
(45, 'Uso obrigatório de gírias.', FALSE),

(46, 'Convite.', FALSE),
(46, 'Currículo.', FALSE),
(46, 'Cartaz publicitário.', FALSE),
(46, 'Ata.', TRUE),

(47, 'Encerrar sempre uma ordem.', FALSE),
(47, 'Indicar uma lista de itens.', FALSE),
(47, 'Introduzir uma citação longa.', FALSE),
(47, 'Marcar uma pergunta direta.', TRUE),

(48, 'O arquivo anexado.', FALSE),
(48, 'O aplicativo usado para escrevê-la.', FALSE),
(48, 'A pessoa ou grupo a quem ela se dirige.', TRUE),
(48, 'A data em que foi enviada.', FALSE),

(49, 'Substituir fatos por opiniões.', FALSE),
(49, 'Aumentar o tamanho sem necessidade.', FALSE),
(49, 'Eliminar todas as informações técnicas.', FALSE),
(49, 'Corrigir problemas de clareza, ortografia e coerência.', TRUE),

(50, 'E aí, galera!', FALSE),
(50, 'Fala, pessoal!!!', FALSE),
(50, 'Salve, turma!', FALSE),
(50, 'Prezada equipe,', TRUE),

(51, 'O nome da pasta do computador.', FALSE),
(51, 'A origem dos dados ou das ideias consultadas.', TRUE),
(51, 'A cor usada no documento.', FALSE),
(51, 'O tamanho da letra no editor.', FALSE),

(52, 'Rodapé.', FALSE),
(52, 'Tabela.', TRUE),
(52, 'Epígrafe.', FALSE),
(52, 'Saudação.', FALSE),

(53, 'Organizar as ideias em sequência lógica.', TRUE),
(53, 'Ler muito rapidamente.', FALSE),
(53, 'Mudar de assunto sem transição.', FALSE),
(53, 'Usar termos desconhecidos sem explicar.', FALSE),

(54, 'Substituir todos os exemplos por imagens.', FALSE),
(54, 'Retomar a discussão e sintetizar o posicionamento.', TRUE),
(54, 'Apagar a tese apresentada.', FALSE),
(54, 'Introduzir um tema sem relação.', FALSE),

(55, 'Manual de instalação.', FALSE),
(55, 'Currículo.', TRUE),
(55, 'Nota fiscal.', FALSE),
(55, 'Ata de reunião.', FALSE),

(56, 'Substituir o título do trabalho.', FALSE),
(56, 'Identificar o significado de elementos visuais.', TRUE),
(56, 'Alterar os dados medidos.', FALSE),
(56, 'Esconder a origem dos números.', FALSE),

(57, 'Um erro obrigatório de ortografia.', FALSE),
(57, 'Uma palavra usada apenas em poesia.', FALSE),
(57, 'Uma frase sem verbo.', FALSE),
(57, 'Forma abreviada composta, em geral, por letras iniciais.', TRUE),

(58, 'Agrupar ideias relacionadas em uma unidade textual.', TRUE),
(58, 'Impedir a divisão do texto.', FALSE),
(58, 'Eliminar sinais de pontuação.', FALSE),
(58, 'Substituir todas as frases por tópicos.', FALSE),

(59, 'Omitir os dados essenciais.', FALSE),
(59, 'Transmitir a informação com clareza e sem excessos.', TRUE),
(59, 'Usar frases deliberadamente vagas.', FALSE),
(59, 'Repetir a mesma ideia sem necessidade.', FALSE),

(60, 'Garantir que todo conteúdo esteja correto.', FALSE),
(60, 'Dispensar a leitura do material.', FALSE),
(60, 'Identificar a origem de informações utilizadas.', TRUE),
(60, 'Ocultar o autor da informação.', FALSE);

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
(@quiz_conduta_id, 'O que caracteriza uma conduta ética no ambiente de trabalho?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual atitude demonstra respeito entre colegas?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Para que serve um código de conduta profissional?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que significa manter sigilo profissional?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual comportamento favorece o trabalho em equipe?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que é assédio moral no trabalho?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual é uma prática adequada ao receber uma crítica construtiva?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que caracteriza pontualidade profissional?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual atitude contribui para um ambiente inclusivo?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual é a finalidade principal da comunicação assertiva?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que é responsabilidade profissional?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Como agir ao identificar um risco à segurança no trabalho?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual exemplo representa discriminação no trabalho?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual prática ajuda a resolver conflitos profissionais?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que significa agir com transparência no trabalho?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual conduta é apropriada no uso de recursos da empresa?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Por que é importante respeitar a diversidade na equipe?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual atitude demonstra compromisso com a qualidade?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'O que fazer ao cometer um erro que afeta a equipe?', 'FACIL', 5, 15),
(@quiz_conduta_id, 'Qual é uma boa prática de convivência em reuniões?', 'FACIL', 5, 15);

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
(61, 'Agir com honestidade, respeito e responsabilidade.', TRUE),
(61, 'Ignorar regras quando não houver supervisão.', FALSE),
(61, 'Ocultar erros para preservar a própria imagem.', FALSE),
(61, 'Priorizar interesses pessoais em qualquer situação.', FALSE),

(62, 'Interromper constantemente quem discorda.', FALSE),
(62, 'Ouvir opiniões diferentes sem ofensas.', TRUE),
(62, 'Divulgar comentários depreciativos sobre a equipe.', FALSE),
(62, 'Excluir colegas das conversas de trabalho.', FALSE),

(63, 'Substituir todas as leis aplicáveis.', FALSE),
(63, 'Definir somente a remuneração dos funcionários.', FALSE),
(63, 'Orientar comportamentos e decisões no trabalho.', TRUE),
(63, 'Eliminar a necessidade de comunicação interna.', FALSE),

(64, 'Compartilhar senhas com colegas de confiança.', FALSE),
(64, 'Publicar documentos internos em redes sociais.', FALSE),
(64, 'Proteger informações confidenciais obtidas no trabalho.', TRUE),
(64, 'Enviar dados de clientes para uso pessoal.', FALSE),

(65, 'Reter informações para obter vantagem individual.', FALSE),
(65, 'Desconsiderar as responsabilidades combinadas.', FALSE),
(65, 'Transferir erros próprios para outras pessoas.', FALSE),
(65, 'Colaborar e compartilhar informações necessárias.', TRUE),

(66, 'Exposição repetida a situações humilhantes e degradantes.', TRUE),
(66, 'Orientação respeitosa sobre uma tarefa.', FALSE),
(66, 'Discordância profissional expressa com educação.', FALSE),
(66, 'Avaliação objetiva de desempenho.', FALSE),

(67, 'Reagir com ofensas ao responsável.', FALSE),
(67, 'Ignorar qualquer orientação recebida.', FALSE),
(67, 'Ouvir, esclarecer dúvidas e avaliar melhorias.', TRUE),
(67, 'Expor o colega publicamente para retaliar.', FALSE),

(68, 'Cumprir os horários e compromissos assumidos.', TRUE),
(68, 'Chegar no horário apenas em dias de reunião.', FALSE),
(68, 'Priorizar compromissos pessoais durante o expediente.', FALSE),
(68, 'Alterar prazos sem avisar a equipe.', FALSE),

(69, 'Restringir tarefas com base em estereótipos.', FALSE),
(69, 'Fazer piadas sobre características pessoais.', FALSE),
(69, 'Tratar pessoas com respeito independentemente de suas diferenças.', TRUE),
(69, 'Desconsiderar pedidos de acessibilidade.', FALSE),

(70, 'Evitar qualquer conversa sobre problemas.', FALSE),
(70, 'Usar mensagens ambíguas para não assumir compromissos.', FALSE),
(70, 'Expressar ideias com clareza e respeito.', TRUE),
(70, 'Impor decisões por meio de ameaças.', FALSE),

(71, 'Executar somente tarefas que tragam reconhecimento.', FALSE),
(71, 'Assumir as consequências das próprias ações e cumprir deveres.', TRUE),
(71, 'Delegar toda decisão difícil sem justificativa.', FALSE),
(71, 'Esconder falhas para evitar correções.', FALSE),

(72, 'Divulgar o risco apenas em redes sociais.', FALSE),
(72, 'Ignorar o problema se não afetar sua função.', FALSE),
(72, 'Aguardar que ocorra um acidente.', FALSE),
(72, 'Comunicar o risco pelos canais apropriados.', TRUE),

(73, 'Negar oportunidade por preconceito contra uma característica pessoal.', TRUE),
(73, 'Oferecer capacitação para toda a equipe.', FALSE),
(73, 'Adaptar recursos para promover acessibilidade.', FALSE),
(73, 'Aplicar critérios técnicos iguais aos candidatos.', FALSE),

(74, 'Espalhar rumores sobre os envolvidos.', FALSE),
(74, 'Aumentar o tom de voz para encerrar a discussão.', FALSE),
(74, 'Evitar registrar acordos importantes.', FALSE),
(74, 'Dialogar com respeito e buscar soluções objetivas.', TRUE),

(75, 'Divulgar dados sigilosos indiscriminadamente.', FALSE),
(75, 'Comunicar informações relevantes de maneira clara e verdadeira.', TRUE),
(75, 'Omitir dificuldades que afetam as entregas.', FALSE),
(75, 'Alterar registros para melhorar indicadores.', FALSE),

(76, 'Emprestá-los sem autorização a terceiros.', FALSE),
(76, 'Utilizá-los conforme as políticas e finalidades autorizadas.', TRUE),
(76, 'Utilizar contas corporativas para atividades ilícitas.', FALSE),
(76, 'Instalar qualquer software sem avaliação.', FALSE),

(77, 'Porque conflitos deixam de existir automaticamente.', FALSE),
(77, 'Porque diferentes experiências merecem respeito e podem enriquecer a colaboração.', TRUE),
(77, 'Porque as regras profissionais deixam de valer.', FALSE),
(77, 'Porque todos devem ter as mesmas opiniões.', FALSE),

(78, 'Revisar entregas e corrigir falhas identificadas.', TRUE),
(78, 'Entregar trabalhos sem verificar requisitos.', FALSE),
(78, 'Apagar evidências de erros encontrados.', FALSE),
(78, 'Ignorar comentários de usuários.', FALSE),

(79, 'Apagar registros sem comunicar ninguém.', FALSE),
(79, 'Aguardar indefinidamente que alguém descubra.', FALSE),
(79, 'Atribuir a falha a outra pessoa.', FALSE),
(79, 'Informar o ocorrido e colaborar na correção.', TRUE),

(80, 'Respeitar a fala dos participantes e manter o foco na pauta.', TRUE),
(80, 'Interromper participantes para impor opiniões.', FALSE),
(80, 'Desconsiderar decisões registradas.', FALSE),
(80, 'Expor dados pessoais sem necessidade.', FALSE);

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
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.quiz_id, q.enunciado
ORDER BY q.quiz_id, q.id;