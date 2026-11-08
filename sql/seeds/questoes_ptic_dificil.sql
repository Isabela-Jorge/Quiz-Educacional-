-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script correspondem ao banco
-- de dados original do projeto.
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
--    WHERE quiz_id = 26
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
-- DISCIPLINA: PTIC - Módulo 1
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de PTIC do módulo 1
SET @quiz_ptic_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Projetos de Tecnologia de Informação e Comunicação'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- PTIC | Questões 41 a 60 | Nível difícil
-- 15 pontos | 15 segundos
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ptic_id, 'Uma estação apresenta falhas apenas ao resolver nomes de sites, mas acessa um servidor pelo endereço IP. Qual serviço deve ser investigado primeiro?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Um computador apresenta 100% de uso de disco por um processo de indexação. Qual é a primeira análise técnica mais apropriada?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Em uma rede com máscara 255.255.255.0, qual endereço pertence à mesma sub-rede de 192.168.10.25/24?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual cenário demonstra autenticação multifator verdadeira?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Ao avaliar uma solução de backup, o que o objetivo RPO expressa?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual é a melhor justificativa para testar a restauração de um backup?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Um site mostra um certificado TLS expirado. Qual interpretação é correta?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual procedimento preserva melhor a rastreabilidade de mudanças em documentos de um projeto?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Uma conta possui acesso administrativo sem necessidade operacional. Qual é o risco mais diretamente associado?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Em um laboratório, computadores obtêm IP automaticamente, mas um deles recebe 169.254.x.x. Qual hipótese inicial é plausível?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual medida ajuda a garantir a integridade de um arquivo baixado?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Um sistema informa espaço livre, mas falha ao salvar arquivos em uma pasta compartilhada. Qual verificação é prioritária?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual é a diferença entre criptografia e hash criptográfico em uso típico?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Ao escolher uma plataforma de colaboração para dados escolares, qual critério é essencial?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Em uma rede local, qual teste ajuda a distinguir falha de resolução DNS de falha geral de conectividade?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual prática reduz o risco de uma alteração de configuração causar indisponibilidade prolongada?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Por que uma cópia de segurança conectada permanentemente ao computador pode ser insuficiente contra ransomware?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Qual mecanismo permite verificar se um pacote de software foi assinado por um fornecedor confiável?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Um serviço apresenta falhas intermitentes após uma atualização. Qual abordagem facilita identificar a causa?', 'DIFICIL', 15, 15),
(@quiz_ptic_id, 'Em um plano básico de continuidade, o que significa RTO?', 'DIFICIL', 15, 15);

-- ============================================================
-- PTIC | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 49 | Correta: A
(49, 'DNS.', TRUE),
(49, 'DHCP para concessão de energia.', FALSE),
(49, 'Bluetooth.', FALSE),
(49, 'Controlador de vídeo.', FALSE),

-- Questão 42 | ID 50 | Correta: B
(50, 'Substituir imediatamente a placa-mãe.', FALSE),
(50, 'Verificar no monitor de recursos o processo e sua atividade de E/S.', TRUE),
(50, 'Apagar todos os arquivos temporários sem avaliação.', FALSE),
(50, 'Desativar permanentemente as atualizações.', FALSE),

-- Questão 43 | ID 51 | Correta: C
(51, '192.168.11.20.', FALSE),
(51, '192.168.9.25.', FALSE),
(51, '192.168.10.200.', TRUE),
(51, '192.168.20.25.', FALSE),

-- Questão 44 | ID 52 | Correta: D
(52, 'Senha e pergunta secreta baseada em informação memorizada.', FALSE),
(52, 'Senha e PIN, ambos memorizados.', FALSE),
(52, 'Duas senhas diferentes.', FALSE),
(52, 'Senha e confirmação em aplicativo autenticador no celular.', TRUE),

-- Questão 45 | ID 53 | Correta: A
(53, 'A perda máxima de dados aceitável medida em tempo.', TRUE),
(53, 'O tempo necessário para trocar um SSD.', FALSE),
(53, 'A taxa de transferência máxima da rede.', FALSE),
(53, 'O número de usuários simultâneos.', FALSE),

-- Questão 46 | ID 54 | Correta: B
(54, 'Aumentar o espaço livre no disco.', FALSE),
(54, 'Comprovar que a cópia pode recuperar os dados necessários.', TRUE),
(54, 'Substituir o controle de acesso.', FALSE),
(54, 'Eliminar a necessidade de manter versões.', FALSE),

-- Questão 47 | ID 55 | Correta: C
(55, 'O site é necessariamente fraudulento.', FALSE),
(55, 'O conteúdo foi comprovadamente alterado.', FALSE),
(55, 'A validação de identidade e da conexão segura não pode ser considerada normal sem investigar o alerta.', TRUE),
(55, 'O problema se resolve informando a senha novamente.', FALSE),

-- Questão 48 | ID 56 | Correta: D
(56, 'Sobrescrever versões sem registro.', FALSE),
(56, 'Enviar cópias com nomes aleatórios.', FALSE),
(56, 'Compartilhar uma única senha entre os integrantes.', FALSE),
(56, 'Usar controle de versões com histórico e identificação das alterações.', TRUE),

-- Questão 49 | ID 57 | Correta: A
(57, 'Aumento do impacto potencial de uso indevido ou comprometimento.', TRUE),
(57, 'Redução automática do espaço em disco.', FALSE),
(57, 'Perda da conexão HDMI.', FALSE),
(57, 'Incompatibilidade inevitável com navegadores.', FALSE),

-- Questão 50 | ID 58 | Correta: B
(58, 'Falha no driver de áudio.', FALSE),
(58, 'Ausência de resposta do DHCP, levando à autoconfiguração de endereço local.', TRUE),
(58, 'Defeito obrigatório na CPU.', FALSE),
(58, 'Excesso de arquivos PDF.', FALSE),

-- Questão 51 | ID 59 | Correta: C
(59, 'Conferir apenas o nome do arquivo.', FALSE),
(59, 'Abrir o arquivo sem proteção.', FALSE),
(59, 'Comparar seu hash com um valor confiável publicado pelo fornecedor.', TRUE),
(59, 'Renomear a extensão antes de executar.', FALSE),

-- Questão 52 | ID 60 | Correta: D
(60, 'Brilho da tela.', FALSE),
(60, 'Tipo de mouse conectado.', FALSE),
(60, 'Tema do sistema operacional.', FALSE),
(60, 'Permissões de escrita e eventuais cotas do usuário.', TRUE),

-- Questão 53 | ID 61 | Correta: A
(61, 'Criptografia permite recuperar o conteúdo com chave adequada; hash gera um resumo sem reversão direta.', TRUE),
(61, 'Ambos permitem recuperar o texto original sem chave.', FALSE),
(61, 'Hash substitui obrigatoriamente a autenticação.', FALSE),
(61, 'Criptografia impede qualquer alteração no hardware.', FALSE),

-- Questão 54 | ID 62 | Correta: B
(62, 'Quantidade de temas visuais disponíveis.', FALSE),
(62, 'Controles de acesso, retenção e proteção dos dados pessoais.', TRUE),
(62, 'Número de emojis suportados.', FALSE),
(62, 'Possibilidade de compartilhar contas entre todos.', FALSE),

-- Questão 55 | ID 63 | Correta: C
(63, 'Trocar o papel de parede.', FALSE),
(63, 'Reiniciar a impressora sem verificar a rede.', FALSE),
(63, 'Comparar acesso por IP com acesso por nome de domínio.', TRUE),
(63, 'Excluir o histórico de downloads.', FALSE),

-- Questão 56 | ID 64 | Correta: D
(64, 'Modificar vários serviços sem registro.', FALSE),
(64, 'Aplicar mudanças diretamente sem avaliação.', FALSE),
(64, 'Ignorar dependências entre sistemas.', FALSE),
(64, 'Planejar janela de mudança, registrar configuração anterior e definir reversão.', TRUE),

-- Questão 57 | ID 65 | Correta: A
(65, 'Porque o malware pode alcançar e cifrar também a cópia acessível.', TRUE),
(65, 'Porque backups só funcionam em mídias ópticas.', FALSE),
(65, 'Porque ransomware não afeta armazenamento externo.', FALSE),
(65, 'Porque arquivos copiados deixam de ter permissões.', FALSE),

-- Questão 58 | ID 66 | Correta: B
(66, 'Alterar manualmente o nome do executável.', FALSE),
(66, 'Validar a assinatura digital e a cadeia de confiança correspondente.', TRUE),
(66, 'Desativar o antivírus.', FALSE),
(66, 'Comparar apenas o tamanho visual do ícone.', FALSE),

-- Questão 59 | ID 67 | Correta: C
(67, 'Reinstalar todos os aplicativos sem registrar evidências.', FALSE),
(67, 'Trocar imediatamente todos os cabos.', FALSE),
(67, 'Correlacionar horários dos erros nos logs com as mudanças implantadas.', TRUE),
(67, 'Apagar logs antigos antes da análise.', FALSE),

-- Questão 60 | ID 68 | Correta: D
(68, 'Quantidade de versões armazenadas.', FALSE),
(68, 'Nível de criptografia de um arquivo.', FALSE),
(68, 'Número de permissões administrativas.', FALSE),
(68, 'Tempo máximo desejado para restaurar um serviço após uma interrupção.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE PTIC
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
WHERE q.quiz_id = @quiz_ptic_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;