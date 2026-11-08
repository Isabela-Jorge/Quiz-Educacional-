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
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
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
-- PTIC | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ptic_id, 'Qual é a principal função de um sistema operacional?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual componente executa instruções e operações lógicas?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que significa a sigla TIC?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual é um dispositivo de entrada de dados?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Para que serve um navegador web?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual dispositivo armazena arquivos mesmo após o desligamento?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual é a função principal da memória RAM?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual alternativa apresenta um exemplo de software aplicativo?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que é um arquivo digital?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual é a finalidade de uma pasta no sistema de arquivos?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual tecnologia é usada para conectar dispositivos em uma rede local sem fio?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual periférico apresenta informações visuais ao usuário?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que é um backup?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual é um exemplo de sistema operacional?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que caracteriza uma senha forte?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual dispositivo permite apontar e clicar em elementos da interface?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que é hardware?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual é a função de um mecanismo de busca na web?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'O que indica a extensão .pdf em um arquivo?', 'FACIL', 5, 15),
(@quiz_ptic_id, 'Qual atitude ajuda a proteger informações pessoais?', 'FACIL', 5, 15);

-- ============================================================
-- PTIC | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 9 | Correta: A
(9, 'Gerenciar os recursos do computador e executar programas.', TRUE),
(9, 'Criar apenas documentos de texto.', FALSE),
(9, 'Substituir os componentes físicos.', FALSE),
(9, 'Fornecer energia ao computador.', FALSE),

-- Questão 02 | ID 10 | Correta: B
(10, 'Monitor.', FALSE),
(10, 'Processador (CPU).', TRUE),
(10, 'Teclado.', FALSE),
(10, 'Fonte de alimentação.', FALSE),

-- Questão 03 | ID 11 | Correta: C
(11, 'Tecnologia Integrada de Computadores.', FALSE),
(11, 'Técnicas de Internet Comercial.', FALSE),
(11, 'Tecnologia da Informação e Comunicação.', TRUE),
(11, 'Transferência Interna de Códigos.', FALSE),

-- Questão 04 | ID 12 | Correta: D
(12, 'Impressora.', FALSE),
(12, 'Projetor.', FALSE),
(12, 'Monitor.', FALSE),
(12, 'Teclado.', TRUE),

-- Questão 05 | ID 13 | Correta: A
(13, 'Acessar e visualizar páginas e aplicações da web.', TRUE),
(13, 'Controlar a tensão da fonte.', FALSE),
(13, 'Formatar automaticamente discos.', FALSE),
(13, 'Substituir a memória RAM.', FALSE),

-- Questão 06 | ID 14 | Correta: B
(14, 'Memória cache.', FALSE),
(14, 'SSD.', TRUE),
(14, 'Registrador da CPU.', FALSE),
(14, 'Memória RAM volátil.', FALSE),

-- Questão 07 | ID 15 | Correta: C
(15, 'Armazenar dados permanentemente sem energia.', FALSE),
(15, 'Transmitir sinais de vídeo ao monitor.', FALSE),
(15, 'Manter temporariamente dados e programas em uso.', TRUE),
(15, 'Refrigerar o processador.', FALSE),

-- Questão 08 | ID 16 | Correta: D
(16, 'Placa-mãe.', FALSE),
(16, 'Memória RAM.', FALSE),
(16, 'Cabo HDMI.', FALSE),
(16, 'Editor de textos.', TRUE),

-- Questão 09 | ID 17 | Correta: A
(17, 'Uma unidade de dados armazenada com nome e formato.', TRUE),
(17, 'Uma peça física do computador.', FALSE),
(17, 'Uma conexão elétrica da placa-mãe.', FALSE),
(17, 'Um equipamento de rede.', FALSE),

-- Questão 10 | ID 18 | Correta: B
(18, 'Aumentar a frequência da CPU.', FALSE),
(18, 'Organizar arquivos e outras pastas.', TRUE),
(18, 'Eliminar a necessidade de backups.', FALSE),
(18, 'Transformar arquivos em hardware.', FALSE),

-- Questão 11 | ID 19 | Correta: C
(19, 'USB.', FALSE),
(19, 'HDMI.', FALSE),
(19, 'Wi-Fi.', TRUE),
(19, 'SATA.', FALSE),

-- Questão 12 | ID 20 | Correta: D
(20, 'Microfone.', FALSE),
(20, 'Scanner.', FALSE),
(20, 'Mouse.', FALSE),
(20, 'Monitor.', TRUE),

-- Questão 13 | ID 21 | Correta: A
(21, 'Uma cópia de dados para possível recuperação.', TRUE),
(21, 'Um antivírus instalado automaticamente.', FALSE),
(21, 'Um tipo de processador.', FALSE),
(21, 'Uma senha temporária.', FALSE),

-- Questão 14 | ID 22 | Correta: B
(22, 'Google Chrome.', FALSE),
(22, 'Ubuntu.', TRUE),
(22, 'LibreOffice Writer.', FALSE),
(22, 'Adobe Acrobat Reader.', FALSE),

-- Questão 15 | ID 23 | Correta: C
(23, 'Conter apenas o nome do usuário.', FALSE),
(23, 'Ser igual em todos os serviços.', FALSE),
(23, 'Ser longa e difícil de adivinhar.', TRUE),
(23, 'Conter somente quatro números sequenciais.', FALSE),

-- Questão 16 | ID 24 | Correta: D
(24, 'Impressora.', FALSE),
(24, 'Caixa de som.', FALSE),
(24, 'Projetor.', FALSE),
(24, 'Mouse.', TRUE),

-- Questão 17 | ID 25 | Correta: A
(25, 'Conjunto dos componentes físicos de um sistema computacional.', TRUE),
(25, 'Conjunto de aplicativos instalados.', FALSE),
(25, 'Lista de senhas salvas.', FALSE),
(25, 'Conteúdo de uma página web.', FALSE),

-- Questão 18 | ID 26 | Correta: B
(26, 'Instalar automaticamente o sistema operacional.', FALSE),
(26, 'Localizar informações e páginas por consultas.', TRUE),
(26, 'Substituir a conexão com a internet.', FALSE),
(26, 'Aumentar a capacidade física do SSD.', FALSE),

-- Questão 19 | ID 27 | Correta: C
(27, 'Que o arquivo é necessariamente um vídeo.', FALSE),
(27, 'Que o arquivo é um executável do sistema.', FALSE),
(27, 'Que o arquivo usa um formato de documento portátil.', TRUE),
(27, 'Que o arquivo contém apenas áudio.', FALSE),

-- Questão 20 | ID 28 | Correta: D
(28, 'Compartilhar senhas com colegas.', FALSE),
(28, 'Abrir qualquer anexo desconhecido.', FALSE),
(28, 'Desativar todas as atualizações.', FALSE),
(28, 'Usar autenticação em duas etapas quando disponível.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE PTIC
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
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
