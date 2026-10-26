-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (29 a 48).
-- Eles precisam corresponder aos IDs gerados no seu banco de dados.
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
--    WHERE quiz_id = (SELECT id FROM quiz WHERE disciplina_id =
--          (SELECT id FROM disciplina
--           WHERE nome = 'Sistemas Embarcados e IoT' AND modulo = 1))
--      AND dificuldade = 'FACIL'
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
-- DISCIPLINA: Sistemas Embarcados e IoT - Módulo 1
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Sistemas Embarcados e IoT do módulo 1
SET @quiz_embarcados_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Sistemas Embarcados e IoT'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- EMBARCADOS E IOT | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_embarcados_id, 'O que caracteriza um sistema embarcado?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'O que significa a sigla IoT?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual componente é usado para medir a temperatura ambiente?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual componente executa ações físicas, como abrir uma válvula?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual é a função principal de um microcontrolador?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual placa é bastante utilizada no ensino de prototipagem com microcontroladores?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Para que serve um LED em um circuito de teste?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual é a unidade de medida de tensão elétrica?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual é a função de um resistor em série com um LED?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'O que é um sensor em um projeto de IoT?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual tecnologia permite conexão sem fio a uma rede local e à internet?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual componente pode detectar a presença de movimento em um ambiente?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Em um circuito digital, o que representa normalmente o nível lógico HIGH?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual é a função de uma protoboard?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual linguagem é comumente utilizada em projetos com Arduino?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'O que significa monitoramento remoto em IoT?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual componente pode produzir um aviso sonoro em um protótipo?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual sensor é usado para detectar intensidade luminosa em projetos simples?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'O que é firmware?', 'FACIL', 5, 15),
(@quiz_embarcados_id, 'Qual é a finalidade de uma fonte de alimentação?', 'FACIL', 5, 15);

-- ============================================================
-- EMBARCADOS E IOT | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | Correta: B
(29, 'É sempre um computador de mesa.', FALSE),
(29, 'É um sistema computacional dedicado a funções específicas em um equipamento.', TRUE),
(29, 'É um programa que funciona apenas na nuvem.', FALSE),
(29, 'É qualquer site acessado pelo navegador.', FALSE),

-- Questão 02 |  Correta: A
(30, 'Internet das Coisas.', TRUE),
(30, 'Integração de Operadores Técnicos.', FALSE),
(30, 'Interface de Operações em Tempo Real.', FALSE),
(30, 'Internet de Transmissão Óptica.', FALSE),

-- Questão 03 | Correta: D
(31, 'Relé eletromecânico.', FALSE),
(31, 'Motor de passo.', FALSE),
(31, 'LED indicador.', FALSE),
(31, 'Sensor de temperatura.', TRUE),

-- Questão 04 | Correta: C
(32, 'Sensor de luminosidade.', FALSE),
(32, 'Resistor fixo.', FALSE),
(32, 'Atuador.', TRUE),
(32, 'Memória flash.', FALSE),

-- Questão 05 |  Correta: B
(33, 'Fornecer acesso à internet sem qualquer módulo.', FALSE),
(33, 'Executar um programa e controlar periféricos eletrônicos.', TRUE),
(33, 'Substituir a fonte de alimentação.', FALSE),
(33, 'Aumentar mecanicamente a velocidade de um motor.', FALSE),

-- Questão 06 | Correta: A
(34, 'Arduino Uno.', TRUE),
(34, 'Placa de vídeo dedicada.', FALSE),
(34, 'Placa de rede PCIe.', FALSE),
(34, 'Placa de captura HDMI.', FALSE),

-- Questão 07 |  Correta: D
(35, 'Medir diretamente a umidade do ar.', FALSE),
(35, 'Armazenar o programa do dispositivo.', FALSE),
(35, 'Converter Wi-Fi em Ethernet.', FALSE),
(35, 'Indicar visualmente um estado do circuito.', TRUE),

-- Questão 08 | Correta: C
(36, 'Ampere (A).', FALSE),
(36, 'Ohm (Ω).', FALSE),
(36, 'Volt (V).', TRUE),
(36, 'Watt-hora (Wh).', FALSE),

-- Questão 09 | Correta: B
(37, 'Ampliar indefinidamente a tensão do circuito.', FALSE),
(37, 'Limitar a corrente elétrica que passa pelo LED.', TRUE),
(37, 'Armazenar os dados coletados pelo sensor.', FALSE),
(37, 'Transformar o LED em sensor de movimento.', FALSE),

-- Questão 10 | Correta: A
(38, 'Um dispositivo que detecta uma grandeza ou condição do ambiente.', TRUE),
(38, 'Um componente que sempre aciona um motor.', FALSE),
(38, 'Um aplicativo exclusivo para edição de imagens.', FALSE),
(38, 'Um equipamento que substitui o roteador.', FALSE),

-- Questão 11 | Correta: D
(39, 'HDMI.', FALSE),
(39, 'USB-A.', FALSE),
(39, 'SATA.', FALSE),
(39, 'Wi-Fi.', TRUE),

-- Questão 12 | Correta: C
(40, 'Buzzer passivo.', FALSE),
(40, 'Diodo retificador.', FALSE),
(40, 'Sensor PIR.', TRUE),
(40, 'Cristal oscilador.', FALSE),

-- Questão 13 | Correta: B
(41, 'Uma tensão sempre igual a 220 V.', FALSE),
(41, 'Um nível elétrico interpretado como 1 lógico.', TRUE),
(41, 'Uma corrente elétrica necessariamente nula.', FALSE),
(41, 'Um erro obrigatório de comunicação.', FALSE),

-- Questão 14 | Correta: A
(42, 'Permitir a montagem de circuitos experimentais sem solda.', TRUE),
(42, 'Gravar permanentemente um circuito impresso.', FALSE),
(42, 'Medir a velocidade de uma rede Wi-Fi.', FALSE),
(42, 'Programar um microcontrolador sem computador.', FALSE),

-- Questão 15 |  Correta: D
(43, 'SQL exclusivamente.', FALSE),
(43, 'HTML exclusivamente.', FALSE),
(43, 'CSS exclusivamente.', FALSE),
(43, 'C/C++.', TRUE),

-- Questão 16 | Correta: C
(44, 'Retirar todos os sensores do equipamento.', FALSE),
(44, 'Impedir que o dispositivo envie medições.', FALSE),
(44, 'Acompanhar dados de um dispositivo sem estar fisicamente ao lado dele.', TRUE),
(44, 'Controlar o equipamento apenas por botões locais.', FALSE),

-- Questão 17 | Correta: B
(45, 'LDR.', FALSE),
(45, 'Buzzer.', TRUE),
(45, 'Potenciômetro.', FALSE),
(45, 'Capacitor cerâmico.', FALSE),

-- Questão 18 | Correta: A
(46, 'LDR.', TRUE),
(46, 'Relé.', FALSE),
(46, 'Servo motor.', FALSE),
(46, 'Conversor USB-serial.', FALSE),

-- Questão 19 |  Correta: D
(47, 'A estrutura metálica de um gabinete.', FALSE),
(47, 'Um tipo de cabo de alimentação.', FALSE),
(47, 'Um serviço obrigatório de armazenamento em nuvem.', FALSE),
(47, 'Software gravado para controlar o funcionamento de um dispositivo.', TRUE),

-- Questão 20 | Correta: C
(48, 'Traduzir automaticamente protocolos de rede.', FALSE),
(48, 'Calcular a média das leituras do sensor.', FALSE),
(48, 'Fornecer energia elétrica adequada ao circuito.', TRUE),
(48, 'Armazenar registros em um banco de dados.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCIL DE EMBARCADOS E IOT
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
WHERE q.quiz_id = @quiz_embarcados_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
