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
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- SISTEMAS EMBARCADOS E IoT | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_iot_id, 'Em uma leitura analógica, qual é a função do conversor ADC?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Por que é importante compartilhar o GND entre módulos ligados por sinais elétricos?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a finalidade do PWM no controle de brilho de um LED?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a principal característica da comunicação I2C?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Em uma conexão UART, como normalmente se ligam TX e RX entre dois dispositivos?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é uma vantagem típica do MQTT em aplicações IoT?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é o papel do broker em uma arquitetura MQTT?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'O que acontece quando um cliente MQTT assina um tópico?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Por que utilizar debounce na leitura de um botão mecânico?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a vantagem de usar interrupções para detectar certos eventos?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Por que um relé pode ser útil em um sistema de automação?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a função de um resistor pull-up em uma entrada digital?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Por que se deve conferir a tensão lógica de um sensor antes de conectá-lo a um microcontrolador?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a finalidade de um watchdog timer?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Em uma aplicação com sensores, o que significa taxa de amostragem?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual prática ajuda a reduzir o consumo energético de um nó IoT alimentado por bateria?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a diferença entre um endereço IP e um endereço MAC?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Qual é a finalidade de enviar medições com carimbo de data e hora?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'Por que validar leituras recebidas de sensores antes de acionar equipamentos?', 'MEDIO', 10, 15),
(@quiz_iot_id, 'O que representa o protocolo HTTP em um sistema IoT?', 'MEDIO', 10, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS 20 QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 27
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ================================================================
-- SISTEMAS EMBARCADOS E IOT | Alternativas das questões 21 a 40
-- ================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 330 | Correta: B
(330, 'Converter texto em sinal de rádio.', FALSE),
(330, 'Converter um sinal analógico em um valor digital.', TRUE),
(330, 'Aumentar a frequência do processador.', FALSE),
(330, 'Criptografar todos os dados do dispositivo.', FALSE),

-- Questão 22 | ID 331 | Correta: A
(331, 'Para estabelecer uma referência elétrica comum aos sinais.', TRUE),
(331, 'Para dobrar automaticamente a tensão disponível.', FALSE),
(331, 'Para eliminar a necessidade de qualquer alimentação.', FALSE),
(331, 'Para aumentar a capacidade de memória flash.', FALSE),

-- Questão 23 | ID 332 | Correta: D
(332, 'Modificar fisicamente a resistência do LED.', FALSE),
(332, 'Transformar o pino digital em bateria.', FALSE),
(332, 'Impedir qualquer oscilação no sinal.', FALSE),
(332, 'Variar a razão entre tempo ligado e desligado do sinal.', TRUE),

-- Questão 24 | ID 333 | Correta: C
(333, 'Exigir um cabo Ethernet por sensor.', FALSE),
(333, 'Transmitir apenas por sinais infravermelhos.', FALSE),
(333, 'Usar linhas compartilhadas de dados e clock para comunicação entre dispositivos.', TRUE),
(333, 'Operar sem endereçamento de dispositivos.', FALSE),

-- Questão 25 | ID 334 | Correta: B
(334, 'TX ao TX e RX ao RX obrigatoriamente.', FALSE),
(334, 'TX de um ao RX do outro, com referência elétrica compatível.', TRUE),
(334, 'Apenas os pinos de alimentação são necessários.', FALSE),
(334, 'Cada pino deve ser ligado diretamente à rede elétrica.', FALSE),

-- Questão 26 | ID 335 | Correta: A
(335, 'Troca leve de mensagens no modelo publicação/assinatura.', TRUE),
(335, 'Exigir uma conexão HDMI dedicada.', FALSE),
(335, 'Dispensar completamente qualquer infraestrutura de rede.', FALSE),
(335, 'Garantir por si só a identidade de todos os dispositivos.', FALSE),

-- Questão 27 | ID 336 | Correta: D
(336, 'Converter corrente alternada em contínua.', FALSE),
(336, 'Medir diretamente a temperatura de cada sensor.', FALSE),
(336, 'Executar apenas páginas HTML no navegador.', FALSE),
(336, 'Receber publicações e encaminhá-las aos assinantes dos tópicos.', TRUE),

-- Questão 28 | ID 337 | Correta: C
(337, 'Ele altera fisicamente a configuração do sensor.', FALSE),
(337, 'Ele impede outros clientes de publicar no tópico.', FALSE),
(337, 'Ele passa a receber mensagens publicadas nesse tópico enquanto a assinatura estiver ativa e a entrega ocorrer.', TRUE),
(337, 'Ele transforma o broker em um roteador Wi-Fi.', FALSE),

-- Questão 29 | ID 338 | Correta: B
(338, 'Para aumentar a tensão da fonte de alimentação.', FALSE),
(338, 'Para evitar múltiplos acionamentos causados pela trepidação dos contatos.', TRUE),
(338, 'Para converter o botão em sensor analógico de temperatura.', FALSE),
(338, 'Para acelerar o clock do microcontrolador.', FALSE),

-- Questão 30 | ID 339 | Correta: A
(339, 'Permitir reação a eventos sem depender apenas de consultas contínuas no laço principal.', TRUE),
(339, 'Eliminar todas as limitações de memória do dispositivo.', FALSE),
(339, 'Dispensar a configuração de pinos.', FALSE),
(339, 'Garantir que qualquer rotina de interrupção possa ser ilimitada.', FALSE),

-- Questão 31 | ID 340 | Correta: D
(340, 'Armazena leituras de temperatura por anos.', FALSE),
(340, 'Substitui a necessidade de dimensionar a carga elétrica.', FALSE),
(340, 'Converte automaticamente qualquer sensor em atuador.', FALSE),
(340, 'Permite comandar uma carga por meio de um circuito de controle eletricamente separado, conforme o módulo.', TRUE),

-- Questão 32 | ID 341 | Correta: C
(341, 'Fazer o microcontrolador operar em frequência máxima.', FALSE),
(341, 'Criar uma conexão Bluetooth com o botão.', FALSE),
(341, 'Manter um nível lógico definido quando não há acionamento que leve o pino ao nível baixo.', TRUE),
(341, 'Forçar o pino a medir temperatura.', FALSE),

-- Questão 33 | ID 342 | Correta: B
(342, 'Para aumentar a resolução da tela do computador.', FALSE),
(342, 'Para evitar níveis elétricos incompatíveis que possam causar falhas ou danos.', TRUE),
(342, 'Para reduzir a quantidade de código-fonte.', FALSE),
(342, 'Para dispensar a leitura do datasheet.', FALSE),

-- Questão 34 | ID 343 | Correta: A
(343, 'Detectar ausência de atividade esperada e possibilitar recuperação, como reinicialização.', TRUE),
(343, 'Medir a umidade do solo.', FALSE),
(343, 'Converter uma porta serial em saída analógica.', FALSE),
(343, 'Ampliar a cobertura de um roteador sem antena.', FALSE),

-- Questão 35 | ID 344 | Correta: D
(344, 'Quantidade de bytes da senha do Wi-Fi.', FALSE),
(344, 'Número de atuadores instalados na rede.', FALSE),
(344, 'Tensão máxima suportada pela bateria.', FALSE),
(344, 'Quantidade de medições realizadas por unidade de tempo.', TRUE),

-- Questão 36 | ID 345 | Correta: C
(345, 'Manter todos os LEDs ligados continuamente.', FALSE),
(345, 'Transmitir dados sem intervalos, independentemente da necessidade.', FALSE),
(345, 'Usar modos de baixo consumo entre medições, quando viável.', TRUE),
(345, 'Aumentar a frequência do processador ao máximo sempre.', FALSE),

-- Questão 37 | ID 346 | Correta: B
(346, 'O IP mede tensão e o MAC mede corrente.', FALSE),
(346, 'O IP identifica uma interface logicamente na rede; o MAC identifica a interface no enlace local.', TRUE),
(346, 'O IP só existe em sensores analógicos.', FALSE),
(346, 'O MAC é sempre o nome do usuário no aplicativo.', FALSE),

-- Questão 38 | ID 347 | Correta: A
(347, 'Permitir identificar quando cada leitura foi obtida.', TRUE),
(347, 'Aumentar automaticamente a precisão física do sensor.', FALSE),
(347, 'Dispensar toda validação dos dados.', FALSE),
(347, 'Evitar a necessidade de energia elétrica.', FALSE),

-- Questão 39 | ID 348 | Correta: D
(348, 'Para impedir a manutenção preventiva.', FALSE),
(348, 'Para eliminar completamente a latência da rede.', FALSE),
(348, 'Para converter dados digitais em tensão de rede.', FALSE),
(348, 'Para reduzir decisões incorretas causadas por valores inválidos ou fora da faixa esperada.', TRUE),

-- Questão 40 | ID 349 | Correta: C
(349, 'Um tipo de sensor de temperatura.', FALSE),
(349, 'Um circuito que limita corrente em LEDs.', FALSE),
(349, 'Um protocolo de aplicação que pode transportar requisições e respostas entre dispositivos e serviços.', TRUE),
(349, 'Uma linguagem usada para soldar componentes.', FALSE);

-- =================================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE SISTEMAS EMBARCADOS E IoT
-- =================================================================

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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
