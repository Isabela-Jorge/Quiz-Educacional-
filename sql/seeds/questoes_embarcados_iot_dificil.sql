-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (69 a 88).
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
--      AND dificuldade = 'DIFICIL'
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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- EMBARCADOS E IOT | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_embarcados_id, 'Um ADC de 10 bits mede de 0 a 3,3 V e retorna valores de 0 a 1023. Qual tensão aproximada corresponde à leitura 512?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um sensor envia 120 bytes de dados a cada 10 segundos, sem contar cabeçalhos. Quantos bytes de carga útil envia em uma hora?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um LED é alimentado por 5 V, possui queda de 2 V e deve operar com 10 mA. Qual resistor em série é calculado pela Lei de Ohm?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em MQTT, o que o nível de QoS 1 garante no protocolo?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Qual mecanismo reduz o risco de interceptação de dados em trânsito entre dispositivo IoT e servidor?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em um sensor sujeito a ruído esporádico, qual medida pode suavizar variações aleatórias de leitura?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um nó IoT mede temperatura a cada 2 segundos, mas transmite a cada 60 segundos. Quantas amostras completas acumula entre transmissões, desconsiderando a medição inicial?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Por que uma rotina de interrupção deve ser mantida curta em muitos microcontroladores?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Qual abordagem ajuda a impedir que comandos MQTT de dispositivos não autorizados acionem um atuador?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um dispositivo utiliza uma entrada de 3,3 V que não é tolerante a 5 V. Como conectar com segurança uma saída digital de 5 V?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Qual é uma consequência de gravar continuamente dados em memória flash sem controlar o número de escritas?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em uma atualização OTA de firmware, qual medida ajuda a evitar a instalação de código adulterado?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em uma rede de sensores com conexão intermitente, qual estratégia reduz perda de medições durante quedas de internet?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um motor exige 500 mA, mas o GPIO suporta apenas poucos miliampères. Qual solução é apropriada?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em uma leitura I2C com vários periféricos, qual problema ocorre se dois dispositivos usam o mesmo endereço e não oferecem mecanismo de seleção?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em um dispositivo que mede pressão, qual é a diferença entre calibração e resolução?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Um sensor consome 60 mA ativo por 1 segundo e 1 mA em repouso por 59 segundos. Qual é a corrente média aproximada no ciclo de 60 segundos?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em uma automação de irrigação, qual lógica evita acionamentos repetidos quando a umidade oscila perto do limite?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Em sistemas embarcados com tarefas de prioridades distintas, o que é inversão de prioridade?', 'DIFICIL', 15, 15),
(@quiz_embarcados_id, 'Para garantir que um comando de abertura de porta não seja executado duas vezes após retransmissão, qual técnica é mais adequada?', 'DIFICIL', 15, 15);

-- ============================================================
-- EMBARCADOS E IOT | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41  | Correta: B
(69, '0,83 V.', FALSE),
(69, '1,65 V.', TRUE),
(69, '2,48 V.', FALSE),
(69, '3,30 V.', FALSE),

-- Questão 42  | Correta: A
(70, '43.200 bytes.', TRUE),
(70, '4.320 bytes.', FALSE),
(70, '12.000 bytes.', FALSE),
(70, '432.000 bytes.', FALSE),

-- Questão 43  | Correta: D
(71, '30 Ω.', FALSE),
(71, '200 Ω.', FALSE),
(71, '500 Ω.', FALSE),
(71, '300 Ω.', TRUE),

-- Questão 44  | Correta: C
(72, 'Entrega exatamente uma vez em qualquer condição.', FALSE),
(72, 'Entrega no máximo uma vez, sem confirmação.', FALSE),
(72, 'Entrega pelo menos uma vez, podendo haver mensagens duplicadas.', TRUE),
(72, 'Entrega obrigatória mesmo sem conectividade futura.', FALSE),

-- Questão 45  | Correta: B
(73, 'Enviar credenciais em texto puro por HTTP.', FALSE),
(73, 'Usar TLS com validação adequada do certificado do servidor.', TRUE),
(73, 'Desativar a verificação da identidade do servidor.', FALSE),
(73, 'Utilizar a mesma senha pública em todos os dispositivos.', FALSE),

-- Questão 46  | Correta: A
(74, 'Aplicar um filtro de média móvel com janela apropriada.', TRUE),
(74, 'Descartar permanentemente todos os valores diferentes de zero.', FALSE),
(74, 'Aumentar a tensão além da especificação do sensor.', FALSE),
(74, 'Substituir o timestamp pela identificação do dispositivo.', FALSE),

-- Questão 47 | Correta: D
(75, '15 amostras.', FALSE),
(75, '60 amostras.', FALSE),
(75, '120 amostras.', FALSE),
(75, '30 amostras.', TRUE),

-- Questão 48 |  Correta: C
(76, 'Porque interrupções não podem acessar nenhuma variável.', FALSE),
(76, 'Porque qualquer instrução dentro de interrupção apaga a memória.', FALSE),
(76, 'Para reduzir bloqueios e latências que prejudicam outras tarefas e interrupções.', TRUE),
(76, 'Porque o processador para de executar código após uma interrupção.', FALSE),

-- Questão 49 |  Correta: B
(77, 'Aceitar comandos de qualquer cliente anônimo.', FALSE),
(77, 'Autenticar clientes e aplicar autorização de publicação por tópico.', TRUE),
(77, 'Divulgar as credenciais de todos os dispositivos.', FALSE),
(77, 'Desativar logs de acesso e auditoria.', FALSE),

-- Questão 50 | Correta: A
(78, 'Usar conversão de nível lógico adequada ao sinal e às especificações.', TRUE),
(78, 'Conectar diretamente porque qualquer entrada digital aceita 5 V.', FALSE),
(78, 'Aplicar 12 V para estabilizar a leitura.', FALSE),
(78, 'Ligar a saída de 5 V diretamente ao pino GND.', FALSE),

-- Questão 51 |  Correta: D
(79, 'Aumento ilimitado da capacidade de armazenamento.', FALSE),
(79, 'Transformação automática da memória em RAM.', FALSE),
(79, 'Eliminação de falhas de energia.', FALSE),
(79, 'Desgaste das células e redução da vida útil da memória.', TRUE),

-- Questão 52 | Correta: C
(80, 'Aceitar qualquer arquivo recebido sem validação.', FALSE),
(80, 'Desativar mecanismos de recuperação após falha.', FALSE),
(80, 'Verificar a assinatura digital da imagem antes de instalá-la.', TRUE),
(80, 'Usar somente o nome do arquivo como prova de autenticidade.', FALSE),

-- Questão 53 |Correta: B
(81, 'Descartar todas as leituras assim que a conexão falhar.', FALSE),
(81, 'Armazenar temporariamente leituras e reenviá-las quando a conexão voltar.', TRUE),
(81, 'Reiniciar o sensor após cada medição.', FALSE),
(81, 'Desligar permanentemente a memória não volátil.', FALSE),

-- Questão 54 | Correta: A
(82, 'Usar um estágio de acionamento dimensionado, como driver ou transistor, e proteção adequada.', TRUE),
(82, 'Ligar o motor diretamente ao GPIO.', FALSE),
(82, 'Reduzir a corrente com um cabo USB mais longo.', FALSE),
(82, 'Substituir o motor por um resistor de pull-up.', FALSE),

-- Questão 55 | Correta: D
(83, 'O barramento aumenta automaticamente sua largura de banda.', FALSE),
(83, 'Ambos recebem endereços IP diferentes por padrão.', FALSE),
(83, 'A tensão de alimentação dobra para cada periférico.', FALSE),
(83, 'Pode haver conflito de comunicação ao acessar esse endereço.', TRUE),

-- Questão 56 | Correta: C
(84, 'Calibração é o número de pinos; resolução é a velocidade do Wi-Fi.', FALSE),
(84, 'Calibração elimina a necessidade de sensores; resolução é sempre 100%.', FALSE),
(84, 'Calibração relaciona a medição a referências; resolução é a menor variação distinguível pelo sistema.', TRUE),
(84, 'Calibração e resolução são obrigatoriamente a mesma propriedade.', FALSE),

-- Questão 57 | Correta: B
(85, '1,00 mA.', FALSE),
(85, '1,98 mA.', TRUE),
(85, '30,50 mA.', FALSE),
(85, '60,00 mA.', FALSE),

-- Questão 58 |Correta: A
(86, 'Aplicar histerese com limites diferentes para ligar e desligar.', TRUE),
(86, 'Usar o mesmo limite e alternar a saída a cada leitura.', FALSE),
(86, 'Ignorar todas as medições após a primeira.', FALSE),
(86, 'Aumentar a frequência do clock sem alterar o algoritmo.', FALSE),

-- Questão 59 |  Correta: D
(87, 'Quando a fonte de alimentação troca polaridade automaticamente.', FALSE),
(87, 'Quando a ordem dos bits recebidos é invertida pelo sensor.', FALSE),
(87, 'Quando uma tarefa de maior prioridade sempre termina primeiro.', FALSE),
(87, 'Quando uma tarefa prioritária fica bloqueada por recurso mantido por tarefa menos prioritária.', TRUE),

-- Questão 60 | Correta: C
(88, 'Executar todo comando recebido sem verificar repetições.', FALSE),
(88, 'Remover todos os registros de comandos anteriores.', FALSE),
(88, 'Usar identificador único de comando e tratamento idempotente no receptor.', TRUE),
(88, 'Aumentar a potência do transmissor até não haver retransmissões.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCIL DE EMBARCADOS E IOT
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
