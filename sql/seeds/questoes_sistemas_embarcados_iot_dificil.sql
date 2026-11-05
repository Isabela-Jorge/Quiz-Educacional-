-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Sistemas Embarcados e IoT - Módulo 1
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
SET @quiz_iot_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Sistemas Embarcados e IoT'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- SISTEMAS EMBARCADOS E IoT | QUESTÕES 41 A 60 | NÍVEL DIFÍCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_iot_id, 'Um ADC de 10 bits mede de 0 a 3,3 V e retorna valores de 0 a 1023. Qual tensão aproximada corresponde à leitura 512?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um sensor envia 120 bytes de dados a cada 10 segundos, sem contar cabeçalhos. Quantos bytes de carga útil envia em uma hora?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um LED é alimentado por 5 V, possui queda de 2 V e deve operar com 10 mA. Qual resistor em série é calculado pela Lei de Ohm?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em MQTT, o que o nível de QoS 1 garante no protocolo?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Qual mecanismo reduz o risco de interceptação de dados em trânsito entre dispositivo IoT e servidor?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em um sensor sujeito a ruído esporádico, qual medida pode suavizar variações aleatórias de leitura?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um nó IoT mede temperatura a cada 2 segundos, mas transmite a cada 60 segundos. Quantas amostras completas acumula entre transmissões, desconsiderando a medição inicial?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Por que uma rotina de interrupção deve ser mantida curta em muitos microcontroladores?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Qual abordagem ajuda a impedir que comandos MQTT de dispositivos não autorizados acionem um atuador?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um dispositivo utiliza uma entrada de 3,3 V que não é tolerante a 5 V. Como conectar com segurança uma saída digital de 5 V?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Qual é uma consequência de gravar continuamente dados em memória flash sem controlar o número de escritas?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em uma atualização OTA de firmware, qual medida ajuda a evitar a instalação de código adulterado?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em uma rede de sensores com conexão intermitente, qual estratégia reduz perda de medições durante quedas de internet?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um motor exige 500 mA, mas o GPIO suporta apenas poucos miliampères. Qual solução é apropriada?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em uma leitura I2C com vários periféricos, qual problema ocorre se dois dispositivos usam o mesmo endereço e não oferecem mecanismo de seleção?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em um dispositivo que mede pressão, qual é a diferença entre calibração e resolução?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Um sensor consome 60 mA ativo por 1 segundo e 1 mA em repouso por 59 segundos. Qual é a corrente média aproximada no ciclo de 60 segundos?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em uma automação de irrigação, qual lógica evita acionamentos repetidos quando a umidade oscila perto do limite?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Em sistemas embarcados com tarefas de prioridades distintas, o que é inversão de prioridade?', 'DIFICIL', 15, 15),
(@quiz_iot_id, 'Para garantir que um comando de abertura de porta não seja executado duas vezes após retransmissão, qual técnica é mais adequada?', 'DIFICIL', 15, 15);

-- ============================================================
-- CONSULTAR OS IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 27
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ================================================================
-- SISTEMAS EMBARCADOS E IOT | Alternativas das questões 41 a 60
-- ================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- Questão 41 | ID 350 | Correta: B
(350, '0,82 V.', FALSE),
(350, '1,65 V.', TRUE),
(350, '2,50 V.', FALSE),
(350, '3,30 V.', FALSE),

-- Questão 42 | ID 351 | Correta: C
(351, '4.320 bytes.', FALSE),
(351, '12.000 bytes.', FALSE),
(351, '43.200 bytes.', TRUE),
(351, '72.000 bytes.', FALSE),

-- Questão 43 | ID 352 | Correta: A
(352, '300 ohms.', TRUE),
(352, '100 ohms.', FALSE),
(352, '500 ohms.', FALSE),
(352, '30 ohms.', FALSE),

-- Questão 44 | ID 353 | Correta: B
(353, 'Entrega exatamente uma vez.', FALSE),
(353, 'Entrega pelo menos uma vez, podendo haver duplicações.', TRUE),
(353, 'Entrega sem confirmação de recebimento.', FALSE),
(353, 'Entrega somente quando o dispositivo está offline.', FALSE),

-- Questão 45 | ID 354 | Correta: C
(354, 'Desativar autenticação.', FALSE),
(354, 'Utilizar somente endereços IP fixos.', FALSE),
(354, 'Utilizar comunicação criptografada com TLS.', TRUE),
(354, 'Transmitir dados em texto puro.', FALSE),

-- Questão 46 | ID 355 | Correta: A
(355, 'Aplicar uma média móvel às leituras.', TRUE),
(355, 'Aumentar o ruído artificialmente.', FALSE),
(355, 'Eliminar todas as medições.', FALSE),
(355, 'Desativar permanentemente o sensor.', FALSE),

-- Questão 47 | ID 356 | Correta: D
(356, '10 amostras.', FALSE),
(356, '20 amostras.', FALSE),
(356, '60 amostras.', FALSE),
(356, '30 amostras.', TRUE),

-- Questão 48 | ID 357 | Correta: B
(357, 'Para impedir que o microcontrolador execute outras tarefas.', FALSE),
(357, 'Para reduzir latência e evitar bloquear outras interrupções.', TRUE),
(357, 'Para aumentar o consumo de memória.', FALSE),
(357, 'Para substituir o programa principal.', FALSE),

-- Questão 49 | ID 358 | Correta: C
(358, 'Permitir acesso anônimo a todos os tópicos.', FALSE),
(358, 'Publicar comandos sem autenticação.', FALSE),
(358, 'Aplicar autenticação e autorização por tópicos.', TRUE),
(358, 'Desativar o controle de acesso do broker.', FALSE),

-- Questão 50 | ID 359 | Correta: A
(359, 'Utilizar um conversor de nível lógico adequado.', TRUE),
(359, 'Conectar diretamente sem verificar a tensão.', FALSE),
(359, 'Aumentar a tensão para 12 V.', FALSE),
(359, 'Remover a referência de terra do circuito.', FALSE),

-- Questão 51 | ID 360 | Correta: D
(360, 'Aumento ilimitado da capacidade.', FALSE),
(360, 'Eliminação do consumo elétrico.', FALSE),
(360, 'Melhoria automática da velocidade.', FALSE),
(360, 'Desgaste das células e redução da vida útil.', TRUE),

-- Questão 52 | ID 361 | Correta: B
(361, 'Aceitar qualquer firmware recebido.', FALSE),
(361, 'Verificar a assinatura digital do firmware.', TRUE),
(361, 'Desativar todas as verificações.', FALSE),
(361, 'Utilizar apenas o nome do arquivo como validação.', FALSE),

-- Questão 53 | ID 362 | Correta: C
(362, 'Descartar imediatamente todas as medições.', FALSE),
(362, 'Desligar permanentemente o dispositivo.', FALSE),
(362, 'Armazenar temporariamente os dados e reenviar depois.', TRUE),
(362, 'Transmitir somente valores aleatórios.', FALSE),

-- Questão 54 | ID 363 | Correta: A
(363, 'Utilizar um transistor ou driver adequado para acionar o motor.', TRUE),
(363, 'Ligar o motor diretamente ao GPIO.', FALSE),
(363, 'Aumentar a corrente máxima do GPIO por software.', FALSE),
(363, 'Eliminar a alimentação externa do motor.', FALSE),

-- Questão 55 | ID 364 | Correta: D
(364, 'A comunicação fica automaticamente mais rápida.', FALSE),
(364, 'Os dispositivos recebem novos endereços automaticamente.', FALSE),
(364, 'O barramento deixa de precisar de resistores pull-up.', FALSE),
(364, 'Pode ocorrer conflito de endereçamento e comunicação incorreta.', TRUE),

-- Questão 56 | ID 365 | Correta: B
(365, 'Calibração e resolução representam exatamente a mesma propriedade.', FALSE),
(365, 'Calibração ajusta a correspondência com a referência; resolução define o menor incremento distinguível.', TRUE),
(365, 'Resolução elimina qualquer erro de medição.', FALSE),
(365, 'Calibração determina apenas a velocidade da rede.', FALSE),

-- Questão 57 | ID 366 | Correta: C
(366, '60 mA.', FALSE),
(366, '30,5 mA.', FALSE),
(366, 'Aproximadamente 1,98 mA.', TRUE),
(366, '0,5 mA.', FALSE),

-- Questão 58 | ID 367 | Correta: A
(367, 'Utilizar histerese com limites diferentes para ligar e desligar.', TRUE),
(367, 'Utilizar exatamente o mesmo limite sem filtragem.', FALSE),
(367, 'Ignorar permanentemente as medições.', FALSE),
(367, 'Acionar a bomba a cada leitura.', FALSE),

-- Questão 59 | ID 368 | Correta: D
(368, 'Quando todas as tarefas possuem a mesma prioridade.', FALSE),
(368, 'Quando uma tarefa de alta prioridade sempre executa primeiro.', FALSE),
(368, 'Quando não existem recursos compartilhados.', FALSE),
(368, 'Quando uma tarefa de alta prioridade espera por um recurso retido por uma tarefa de baixa prioridade.', TRUE),

-- Questão 60 | ID 369 | Correta: B
(369, 'Executar todos os comandos recebidos sem verificação.', FALSE),
(369, 'Utilizar identificadores únicos de comando e controle de idempotência.', TRUE),
(369, 'Desativar a confirmação de recebimento.', FALSE),
(369, 'Reenviar indefinidamente o comando sem identificação.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES
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
WHERE q.quiz_id = 27
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
