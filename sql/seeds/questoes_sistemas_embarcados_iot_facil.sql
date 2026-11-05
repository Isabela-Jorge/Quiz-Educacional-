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
-- DIFICULDADE: FACIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
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
-- SISTEMAS EMBARCADOS E IoT QUESTÕES 01 A 20 | NÍVEL FÁCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_iot_id, 'O que caracteriza um sistema embarcado?', 'FACIL', 5, 15),
(@quiz_iot_id, 'O que significa a sigla IoT?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual componente é usado para medir a temperatura ambiente?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual componente executa ações físicas, como abrir uma válvula?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual é a função principal de um microcontrolador?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual placa é bastante utilizada no ensino de prototipagem com microcontroladores?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Para que serve um LED em um circuito de teste?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual é a unidade de medida de tensão elétrica?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual é a função de um resistor em série com um LED?', 'FACIL', 5, 15),
(@quiz_iot_id, 'O que é um sensor em um projeto de IoT?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual tecnologia permite conexão sem fio a uma rede local e à internet?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual componente pode detectar a presença de movimento em um ambiente?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Em um circuito digital, o que representa normalmente o nível lógico HIGH?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual é a função de uma protoboard?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual linguagem é comumente utilizada em projetos com Arduino?', 'FACIL', 5, 15),
(@quiz_iot_id, 'O que significa monitoramento remoto em IoT?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual componente pode produzir um aviso sonoro em um protótipo?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual sensor é usado para detectar intensidade luminosa em projetos simples?', 'FACIL', 5, 15),
(@quiz_iot_id, 'O que é firmware?', 'FACIL', 5, 15),
(@quiz_iot_id, 'Qual é a finalidade de uma fonte de alimentação?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 27
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ================================================================
-- SISTEMAS EMBARCADOS E IOT | Alternativas das questões 01 a 20
-- ================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | ID 310 | Correta: B
(310, 'É sempre um computador de mesa.', FALSE),
(310, 'É um sistema computacional dedicado a funções específicas em um equipamento.', TRUE),
(310, 'É um programa que funciona apenas na nuvem.', FALSE),
(310, 'É qualquer site acessado pelo navegador.', FALSE),

-- Questão 02 | ID 311 | Correta: A
(311, 'Internet das Coisas.', TRUE),
(311, 'Integração de Operadores Técnicos.', FALSE),
(311, 'Interface de Operações em Tempo Real.', FALSE),
(311, 'Internet de Transmissão Óptica.', FALSE),

-- Questão 03 | ID 312 | Correta: D
(312, 'Relé eletromecânico.', FALSE),
(312, 'Motor de passo.', FALSE),
(312, 'LED indicador.', FALSE),
(312, 'Sensor de temperatura.', TRUE),

-- Questão 04 | ID 313 | Correta: C
(313, 'Sensor de luminosidade.', FALSE),
(313, 'Resistor fixo.', FALSE),
(313, 'Atuador.', TRUE),
(313, 'Memória flash.', FALSE),

-- Questão 05 | ID 314 | Correta: B
(314, 'Fornecer acesso à internet sem qualquer módulo.', FALSE),
(314, 'Executar um programa e controlar periféricos eletrônicos.', TRUE),
(314, 'Substituir a fonte de alimentação.', FALSE),
(314, 'Aumentar mecanicamente a velocidade de um motor.', FALSE),

-- Questão 06 | ID 315 | Correta: A
(315, 'Arduino Uno.', TRUE),
(315, 'Placa de vídeo dedicada.', FALSE),
(315, 'Placa de rede PCIe.', FALSE),
(315, 'Placa de captura HDMI.', FALSE),

-- Questão 07 | ID 316 | Correta: D
(316, 'Medir diretamente a umidade do ar.', FALSE),
(316, 'Armazenar o programa do dispositivo.', FALSE),
(316, 'Converter Wi-Fi em Ethernet.', FALSE),
(316, 'Indicar visualmente um estado do circuito.', TRUE),

-- Questão 08 | ID 317 | Correta: C
(317, 'Ampere (A).', FALSE),
(317, 'Ohm (Ω).', FALSE),
(317, 'Volt (V).', TRUE),
(317, 'Watt-hora (Wh).', FALSE),

-- Questão 09 | ID 318 | Correta: B
(318, 'Ampliar indefinidamente a tensão do circuito.', FALSE),
(318, 'Limitar a corrente elétrica que passa pelo LED.', TRUE),
(318, 'Armazenar os dados coletados pelo sensor.', FALSE),
(318, 'Transformar o LED em sensor de movimento.', FALSE),

-- Questão 10 | ID 319 | Correta: A
(319, 'Um dispositivo que detecta uma grandeza ou condição do ambiente.', TRUE),
(319, 'Um componente que sempre aciona um motor.', FALSE),
(319, 'Um aplicativo exclusivo para edição de imagens.', FALSE),
(319, 'Um equipamento que substitui o roteador.', FALSE),

-- Questão 11 | ID 320 | Correta: D
(320, 'HDMI.', FALSE),
(320, 'USB-A.', FALSE),
(320, 'SATA.', FALSE),
(320, 'Wi-Fi.', TRUE),

-- Questão 12 | ID 321 | Correta: C
(321, 'Buzzer passivo.', FALSE),
(321, 'Diodo retificador.', FALSE),
(321, 'Sensor PIR.', TRUE),
(321, 'Cristal oscilador.', FALSE),

-- Questão 13 | ID 322 | Correta: B
(322, 'Uma tensão sempre igual a 220 V.', FALSE),
(322, 'Um nível elétrico interpretado como 1 lógico.', TRUE),
(322, 'Uma corrente elétrica necessariamente nula.', FALSE),
(322, 'Um erro obrigatório de comunicação.', FALSE),

-- Questão 14 | ID 323 | Correta: A
(323, 'Permitir a montagem de circuitos experimentais sem solda.', TRUE),
(323, 'Gravar permanentemente um circuito impresso.', FALSE),
(323, 'Medir a velocidade de uma rede Wi-Fi.', FALSE),
(323, 'Programar um microcontrolador sem computador.', FALSE),

-- Questão 15 | ID 324 | Correta: D
(324, 'SQL exclusivamente.', FALSE),
(324, 'HTML exclusivamente.', FALSE),
(324, 'CSS exclusivamente.', FALSE),
(324, 'C/C++.', TRUE),

-- Questão 16 | ID 325 | Correta: C
(325, 'Retirar todos os sensores do equipamento.', FALSE),
(325, 'Impedir que o dispositivo envie medições.', FALSE),
(325, 'Acompanhar dados de um dispositivo sem estar fisicamente ao lado dele.', TRUE),
(325, 'Controlar o equipamento apenas por botões locais.', FALSE),

-- Questão 17 | ID 326 | Correta: B
(326, 'LDR.', FALSE),
(326, 'Buzzer.', TRUE),
(326, 'Potenciômetro.', FALSE),
(326, 'Capacitor cerâmico.', FALSE),

-- Questão 18 | ID 327 | Correta: A
(327, 'LDR.', TRUE),
(327, 'Relé.', FALSE),
(327, 'Servo motor.', FALSE),
(327, 'Conversor USB-serial.', FALSE),

-- Questão 19 | ID 328 | Correta: D
(328, 'A estrutura metálica de um gabinete.', FALSE),
(328, 'Um tipo de cabo de alimentação.', FALSE),
(328, 'Um serviço obrigatório de armazenamento em nuvem.', FALSE),
(328, 'Software gravado para controlar o funcionamento de um dispositivo.', TRUE),

-- Questão 20 | ID 329 | Correta: C
(329, 'Traduzir automaticamente protocolos de rede.', FALSE),
(329, 'Calcular a média das leituras do sensor.', FALSE),
(329, 'Fornecer energia elétrica adequada ao circuito.', TRUE),
(329, 'Armazenar registros em um banco de dados.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS
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
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
