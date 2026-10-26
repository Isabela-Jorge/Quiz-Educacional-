-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (49 a 68).
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
--      AND dificuldade = 'MEDIO'
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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- EMBARCADOS E IOT | Questões 21 a 40 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_embarcados_id, 'Em uma leitura analógica, qual é a função do conversor ADC?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Por que é importante compartilhar o GND entre módulos ligados por sinais elétricos?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a finalidade do PWM no controle de brilho de um LED?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a principal característica da comunicação I2C?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Em uma conexão UART, como normalmente se ligam TX e RX entre dois dispositivos?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é uma vantagem típica do MQTT em aplicações IoT?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é o papel do broker em uma arquitetura MQTT?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'O que acontece quando um cliente MQTT assina um tópico?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Por que utilizar debounce na leitura de um botão mecânico?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a vantagem de usar interrupções para detectar certos eventos?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Por que um relé pode ser útil em um sistema de automação?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a função de um resistor pull-up em uma entrada digital?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Por que se deve conferir a tensão lógica de um sensor antes de conectá-lo a um microcontrolador?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a finalidade de um watchdog timer?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Em uma aplicação com sensores, o que significa taxa de amostragem?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual prática ajuda a reduzir o consumo energético de um nó IoT alimentado por bateria?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a diferença entre um endereço IP e um endereço MAC?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Qual é a finalidade de enviar medições com carimbo de data e hora?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'Por que validar leituras recebidas de sensores antes de acionar equipamentos?', 'MEDIO', 10, 15),
(@quiz_embarcados_id, 'O que representa o protocolo HTTP em um sistema IoT?', 'MEDIO', 10, 15);

-- ============================================================
-- EMBARCADOS E IOT | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | Correta: B
(49, 'Converter texto em sinal de rádio.', FALSE),
(49, 'Converter um sinal analógico em um valor digital.', TRUE),
(49, 'Aumentar a frequência do processador.', FALSE),
(49, 'Criptografar todos os dados do dispositivo.', FALSE),

-- Questão 22 | Correta: A
(50, 'Para estabelecer uma referência elétrica comum aos sinais.', TRUE),
(50, 'Para dobrar automaticamente a tensão disponível.', FALSE),
(50, 'Para eliminar a necessidade de qualquer alimentação.', FALSE),
(50, 'Para aumentar a capacidade de memória flash.', FALSE),

-- Questão 23 | Correta: D
(51, 'Modificar fisicamente a resistência do LED.', FALSE),
(51, 'Transformar o pino digital em bateria.', FALSE),
(51, 'Impedir qualquer oscilação no sinal.', FALSE),
(51, 'Variar a razão entre tempo ligado e desligado do sinal.', TRUE),

-- Questão 24 |  Correta: C
(52, 'Exigir um cabo Ethernet por sensor.', FALSE),
(52, 'Transmitir apenas por sinais infravermelhos.', FALSE),
(52, 'Usar linhas compartilhadas de dados e clock para comunicação entre dispositivos.', TRUE),
(52, 'Operar sem endereçamento de dispositivos.', FALSE),

-- Questão 25 | Correta: B
(53, 'TX ao TX e RX ao RX obrigatoriamente.', FALSE),
(53, 'TX de um ao RX do outro, com referência elétrica compatível.', TRUE),
(53, 'Apenas os pinos de alimentação são necessários.', FALSE),
(53, 'Cada pino deve ser ligado diretamente à rede elétrica.', FALSE),

-- Questão 26 | Correta: A
(54, 'Troca leve de mensagens no modelo publicação/assinatura.', TRUE),
(54, 'Exigir uma conexão HDMI dedicada.', FALSE),
(54, 'Dispensar completamente qualquer infraestrutura de rede.', FALSE),
(54, 'Garantir por si só a identidade de todos os dispositivos.', FALSE),

-- Questão 27 |  Correta: D
(55, 'Converter corrente alternada em contínua.', FALSE),
(55, 'Medir diretamente a temperatura de cada sensor.', FALSE),
(55, 'Executar apenas páginas HTML no navegador.', FALSE),
(55, 'Receber publicações e encaminhá-las aos assinantes dos tópicos.', TRUE),

-- Questão 28 |  Correta: C
(56, 'Ele altera fisicamente a configuração do sensor.', FALSE),
(56, 'Ele impede outros clientes de publicar no tópico.', FALSE),
(56, 'Ele passa a receber mensagens publicadas nesse tópico enquanto a assinatura estiver ativa e a entrega ocorrer.', TRUE),
(56, 'Ele transforma o broker em um roteador Wi-Fi.', FALSE),

-- Questão 29 | Correta: B
(57, 'Para aumentar a tensão da fonte de alimentação.', FALSE),
(57, 'Para evitar múltiplos acionamentos causados pela trepidação dos contatos.', TRUE),
(57, 'Para converter o botão em sensor analógico de temperatura.', FALSE),
(57, 'Para acelerar o clock do microcontrolador.', FALSE),

-- Questão 30 |  Correta: A
(58, 'Permitir reação a eventos sem depender apenas de consultas contínuas no laço principal.', TRUE),
(58, 'Eliminar todas as limitações de memória do dispositivo.', FALSE),
(58, 'Dispensar a configuração de pinos.', FALSE),
(58, 'Garantir que qualquer rotina de interrupção possa ser ilimitada.', FALSE),

-- Questão 31 |  Correta: D
(59, 'Armazena leituras de temperatura por anos.', FALSE),
(59, 'Substitui a necessidade de dimensionar a carga elétrica.', FALSE),
(59, 'Converte automaticamente qualquer sensor em atuador.', FALSE),
(59, 'Permite comandar uma carga por meio de um circuito de controle eletricamente separado, conforme o módulo.', TRUE),

-- Questão 32 |  Correta: C
(60, 'Fazer o microcontrolador operar em frequência máxima.', FALSE),
(60, 'Criar uma conexão Bluetooth com o botão.', FALSE),
(60, 'Manter um nível lógico definido quando não há acionamento que leve o pino ao nível baixo.', TRUE),
(60, 'Forçar o pino a medir temperatura.', FALSE),

-- Questão 33 | Correta: B
(61, 'Para aumentar a resolução da tela do computador.', FALSE),
(61, 'Para evitar níveis elétricos incompatíveis que possam causar falhas ou danos.', TRUE),
(61, 'Para reduzir a quantidade de código-fonte.', FALSE),
(61, 'Para dispensar a leitura do datasheet.', FALSE),

-- Questão 34 |  Correta: A
(62, 'Detectar ausência de atividade esperada e possibilitar recuperação, como reinicialização.', TRUE),
(62, 'Medir a umidade do solo.', FALSE),
(62, 'Converter uma porta serial em saída analógica.', FALSE),
(62, 'Ampliar a cobertura de um roteador sem antena.', FALSE),

-- Questão 35 | Correta: D
(63, 'Quantidade de bytes da senha do Wi-Fi.', FALSE),
(63, 'Número de atuadores instalados na rede.', FALSE),
(63, 'Tensão máxima suportada pela bateria.', FALSE),
(63, 'Quantidade de medições realizadas por unidade de tempo.', TRUE),

-- Questão 36 | Correta: C
(64, 'Manter todos os LEDs ligados continuamente.', FALSE),
(64, 'Transmitir dados sem intervalos, independentemente da necessidade.', FALSE),
(64, 'Usar modos de baixo consumo entre medições, quando viável.', TRUE),
(64, 'Aumentar a frequência do processador ao máximo sempre.', FALSE),

-- Questão 37 | Correta: B
(65, 'O IP mede tensão e o MAC mede corrente.', FALSE),
(65, 'O IP identifica uma interface logicamente na rede; o MAC identifica a interface no enlace local.', TRUE),
(65, 'O IP só existe em sensores analógicos.', FALSE),
(65, 'O MAC é sempre o nome do usuário no aplicativo.', FALSE),

-- Questão 38 | Correta: A
(66, 'Permitir identificar quando cada leitura foi obtida.', TRUE),
(66, 'Aumentar automaticamente a precisão física do sensor.', FALSE),
(66, 'Dispensar toda validação dos dados.', FALSE),
(66, 'Evitar a necessidade de energia elétrica.', FALSE),

-- Questão 39 | Correta: D
(67, 'Para impedir a manutenção preventiva.', FALSE),
(67, 'Para eliminar completamente a latência da rede.', FALSE),
(67, 'Para converter dados digitais em tensão de rede.', FALSE),
(67, 'Para reduzir decisões incorretas causadas por valores inválidos ou fora da faixa esperada.', TRUE),

-- Questão 40 | Correta: C
(68, 'Um tipo de sensor de temperatura.', FALSE),
(68, 'Um circuito que limita corrente em LEDs.', FALSE),
(68, 'Um protocolo de aplicação que pode transportar requisições e respostas entre dispositivos e serviços.', TRUE),
(68, 'Uma linguagem usada para soldar componentes.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIO DE EMBARCADOS E IOT
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
