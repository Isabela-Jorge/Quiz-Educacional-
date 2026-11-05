-- ============================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ============================================================

-- ====================================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Conduta Profissional e Relacoes de Trabalho - Modulo 3
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
-- TEMPO: 15 segundos por questao
-- ====================================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_conduta_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Conduta Profissional e Relações de Trabalho'
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- CONDUTA PROFISSIONAL | QUESTOES 21 A 40 | NIVEL MEDIO
-- ============================================================

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

-- ============================================================
-- CONSULTAR OS IDS REAIS DAS QUESTOES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_conduta_id
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- CONDUTA PROFISSIONAL | ALTERNATIVAS DAS QUESTOES 21 A 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 1050 | GABARITO D
(1050, 'Compartilhar a senha apenas por mensagem privada.', FALSE),
(1050, 'Enviar a senha e alterá-la somente no mês seguinte.', FALSE),
(1050, 'Permitir o acesso usando sua conta sem registrar a ação.', FALSE),
(1050, 'Não compartilhar a senha e buscar um acesso autorizado para ele.', TRUE),

-- QUESTAO 22 | ID 1051 | GABARITO D
(1051, 'Esperar o prazo vencer para informar a equipe.', FALSE),
(1051, 'Registrar a entrega como concluída mesmo incompleta.', FALSE),
(1051, 'Informar apenas depois que o cliente reclamar.', FALSE),
(1051, 'Avisar antecipadamente, explicar o impacto e propor um novo plano.', TRUE),

-- QUESTAO 23 | ID 1052 | GABARITO D
(1052, 'Pedir à pessoa que aceite a situação para evitar conflitos.', FALSE),
(1052, 'Tratar os comentários como brincadeiras inevitáveis.', FALSE),
(1052, 'Compartilhar os comentários para obter mais opiniões.', FALSE),
(1052, 'Acolher a pessoa e encaminhar o caso pelos canais institucionais.', TRUE),

-- QUESTAO 24 | ID 1053 | GABARITO B
(1053, 'Excluir pessoas por características sem relação com a vaga.', FALSE),
(1053, 'Avaliar competências relacionadas à função por critérios definidos.', TRUE),
(1053, 'Alterar critérios depois de conhecer os candidatos.', FALSE),
(1053, 'Escolher candidatos por afinidade pessoal apenas.', FALSE),

-- QUESTAO 25 | ID 1054 | GABARITO C
(1054, 'Copiar todos os dados para um dispositivo pessoal.', FALSE),
(1054, 'Compartilhar a lista integral com qualquer colega.', FALSE),
(1054, 'Usar apenas os dados necessários à finalidade autorizada.', TRUE),
(1054, 'Reutilizar os dados em campanhas não autorizadas.', FALSE),

-- QUESTAO 26 | ID 1055 | GABARITO A
(1055, 'Comparar impacto, urgência e objetivos do projeto em diálogo.', TRUE),
(1055, 'Ignorar prazos previamente acordados.', FALSE),
(1055, 'Atribuir a decisão a quem falar mais alto.', FALSE),
(1055, 'Escolher sempre a preferência do membro mais antigo.', FALSE),

-- QUESTAO 27 | ID 1056 | GABARITO B
(1056, 'Pedir que o benefício seja entregue fora do expediente.', FALSE),
(1056, 'Recusar o benefício e comunicar o potencial conflito de interesses.', TRUE),
(1056, 'Aceitar o benefício se o valor for baixo, sem informar.', FALSE),
(1056, 'Escolher o fornecedor antes de analisar propostas.', FALSE),

-- QUESTAO 28 | ID 1057 | GABARITO D
(1057, 'Comunicar previamente um vínculo relevante.', FALSE),
(1057, 'Registrar critérios objetivos para contratação.', FALSE),
(1057, 'Solicitar uma avaliação técnica independente.', FALSE),
(1057, 'Participar da escolha de empresa pertencente a familiar sem declarar o vínculo.', TRUE),

-- QUESTAO 29 | ID 1058 | GABARITO C
(1058, 'Assinar sozinho uma entrega construída pela equipe.', FALSE),
(1058, 'Omitir a participação de colaboradores.', FALSE),
(1058, 'Creditar contribuições reais de colegas e fontes utilizadas.', TRUE),
(1058, 'Copiar materiais externos sem atribuição.', FALSE),

-- QUESTAO 30 | ID 1059 | GABARITO A
(1059, 'Esclarecer o escopo e negociar formalmente impactos e prioridades.', TRUE),
(1059, 'Ignorar a solicitação sem resposta.', FALSE),
(1059, 'Alterar o planejamento sem comunicar a equipe.', FALSE),
(1059, 'Aceitar sem avaliar prazo, custo ou recursos.', FALSE),

-- QUESTAO 31 | ID 1060 | GABARITO C
(1060, 'Afirmar que perguntas não são permitidas.', FALSE),
(1060, 'Ridicularizar a dúvida diante da equipe.', FALSE),
(1060, 'Responder com respeito e indicar referências úteis.', TRUE),
(1060, 'Encerrar a reunião para evitar explicações.', FALSE),

-- QUESTAO 32 | ID 1061 | GABARITO A
(1061, 'Cumprir acordos de disponibilidade e comunicar o andamento das tarefas.', TRUE),
(1061, 'Compartilhar credenciais para facilitar substituições.', FALSE),
(1061, 'Manter o status de disponível sem executar atividades.', FALSE),
(1061, 'Deixar informações importantes somente em conversas informais.', FALSE),

-- QUESTAO 33 | ID 1062 | GABARITO D
(1062, 'Encaminhar a colegas para perguntar se é relevante.', FALSE),
(1062, 'Publicar um trecho para alertar outras pessoas.', FALSE),
(1062, 'Armazenar cópia pessoal para uso futuro.', FALSE),
(1062, 'Evitar divulgação e comunicar o responsável pelo canal adequado.', TRUE),

-- QUESTAO 34 | ID 1063 | GABARITO C
(1063, 'Omitir o impacto para preservar o cronograma.', FALSE),
(1063, 'Considerar acessibilidade apenas após reclamações.', FALSE),
(1063, 'Apresentar o impacto e buscar alternativas acessíveis.', TRUE),
(1063, 'Desconsiderar usuários que utilizam tecnologias assistivas.', FALSE),

-- QUESTAO 35 | ID 1064 | GABARITO B
(1064, 'Impressões pessoais sem exemplos concretos.', FALSE),
(1064, 'Evidências observáveis, critérios claros e feedback respeitoso.', TRUE),
(1064, 'Comentários anônimos não verificados como único critério.', FALSE),
(1064, 'Preferências pessoais do avaliador.', FALSE),

-- QUESTAO 36 | ID 1065 | GABARITO B
(1065, 'Explorar a falha para demonstrar habilidade.', FALSE),
(1065, 'Registrar e reportar pelos canais de segurança definidos.', TRUE),
(1065, 'Divulgar detalhes técnicos publicamente antes de avisar.', FALSE),
(1065, 'Utilizar a falha para acessar dados sem autorização.', FALSE),

-- QUESTAO 37 | ID 1066 | GABARITO B
(1066, 'Ocultar a funcionalidade da documentação.', FALSE),
(1066, 'Explicar a restrição e propor alternativa compatível com as regras.', TRUE),
(1066, 'Implementar a solicitação para evitar perder o cliente.', FALSE),
(1066, 'Solicitar que outro desenvolvedor assuma a tarefa sem explicação.', FALSE),

-- QUESTAO 38 | ID 1067 | GABARITO C
(1067, 'Normalizar humilhações como método de cobrança.', FALSE),
(1067, 'Desestimular o registro de sobrecarga.', FALSE),
(1067, 'Respeitar limites, pausas e acordos de comunicação.', TRUE),
(1067, 'Exigir respostas imediatas a qualquer hora sem necessidade.', FALSE),

-- QUESTAO 39 | ID 1068 | GABARITO D
(1068, 'Evitar discutir problemas para preservar a imagem da equipe.', FALSE),
(1068, 'Expor publicamente um integrante como responsável único.', FALSE),
(1068, 'Descartar evidências que poderiam orientar melhorias.', FALSE),
(1068, 'Analisar causas e melhorias sem buscar culpados arbitrariamente.', TRUE),

-- QUESTAO 40 | ID 1069 | GABARITO A
(1069, 'Verificar resultados e respeitar regras de confidencialidade e autoria.', TRUE),
(1069, 'Atribuir a ferramenta toda responsabilidade por decisões.', FALSE),
(1069, 'Publicar resultados sem conferência porque foram automatizados.', FALSE),
(1069, 'Inserir dados sigilosos em qualquer serviço sem avaliação.', FALSE);

-- ============================================================
-- VALIDACAO DAS QUESTOES
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

WHERE q.quiz_id = 12
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
