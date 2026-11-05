-- ====================================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ====================================================================

-- ====================================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Conduta Profissional e Relacoes de Trabalho - Modulo 3
-- DIFICULDADE: NIVEL FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
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
-- CONDUTA PROFISSIONAL | QUESTOES 01 A 20 | NIVEL FACIL
-- ============================================================

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
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ====================================================================
-- CONDUTA PROFISSIONAL | ALTERNATIVAS DAS QUESTOES 01 A 20
-- ====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 1030 | GABARITO A
(1030, 'Agir com honestidade, respeito e responsabilidade.', TRUE),
(1030, 'Ignorar regras quando não houver supervisão.', FALSE),
(1030, 'Ocultar erros para preservar a própria imagem.', FALSE),
(1030, 'Priorizar interesses pessoais em qualquer situação.', FALSE),

-- QUESTAO 02 | ID 1031 | GABARITO B
(1031, 'Interromper constantemente quem discorda.', FALSE),
(1031, 'Ouvir opiniões diferentes sem ofensas.', TRUE),
(1031, 'Divulgar comentários depreciativos sobre a equipe.', FALSE),
(1031, 'Excluir colegas das conversas de trabalho.', FALSE),

-- QUESTAO 03 | ID 1032 | GABARITO C
(1032, 'Substituir todas as leis aplicáveis.', FALSE),
(1032, 'Definir somente a remuneração dos funcionários.', FALSE),
(1032, 'Orientar comportamentos e decisões no trabalho.', TRUE),
(1032, 'Eliminar a necessidade de comunicação interna.', FALSE),

-- QUESTAO 04 | ID 1033 | GABARITO C
(1033, 'Compartilhar senhas com colegas de confiança.', FALSE),
(1033, 'Publicar documentos internos em redes sociais.', FALSE),
(1033, 'Proteger informações confidenciais obtidas no trabalho.', TRUE),
(1033, 'Enviar dados de clientes para uso pessoal.', FALSE),

-- QUESTAO 05 | ID 1034 | GABARITO D
(1034, 'Reter informações para obter vantagem individual.', FALSE),
(1034, 'Desconsiderar as responsabilidades combinadas.', FALSE),
(1034, 'Transferir erros próprios para outras pessoas.', FALSE),
(1034, 'Colaborar e compartilhar informações necessárias.', TRUE),

-- QUESTAO 06 | ID 1035 | GABARITO A
(1035, 'Exposição repetida a situações humilhantes e degradantes.', TRUE),
(1035, 'Orientação respeitosa sobre uma tarefa.', FALSE),
(1035, 'Discordância profissional expressa com educação.', FALSE),
(1035, 'Avaliação objetiva de desempenho.', FALSE),

-- QUESTAO 07 | ID 1036 | GABARITO C
(1036, 'Reagir com ofensas ao responsável.', FALSE),
(1036, 'Ignorar qualquer orientação recebida.', FALSE),
(1036, 'Ouvir, esclarecer dúvidas e avaliar melhorias.', TRUE),
(1036, 'Expor o colega publicamente para retaliar.', FALSE),

-- QUESTAO 08 | ID 1037 | GABARITO A
(1037, 'Cumprir os horários e compromissos assumidos.', TRUE),
(1037, 'Chegar no horário apenas em dias de reunião.', FALSE),
(1037, 'Priorizar compromissos pessoais durante o expediente.', FALSE),
(1037, 'Alterar prazos sem avisar a equipe.', FALSE),

-- QUESTAO 09 | ID 1038 | GABARITO C
(1038, 'Restringir tarefas com base em estereótipos.', FALSE),
(1038, 'Fazer piadas sobre características pessoais.', FALSE),
(1038, 'Tratar pessoas com respeito independentemente de suas diferenças.', TRUE),
(1038, 'Desconsiderar pedidos de acessibilidade.', FALSE),

-- QUESTAO 10 | ID 1039 | GABARITO C
(1039, 'Evitar qualquer conversa sobre problemas.', FALSE),
(1039, 'Usar mensagens ambíguas para não assumir compromissos.', FALSE),
(1039, 'Expressar ideias com clareza e respeito.', TRUE),
(1039, 'Impor decisões por meio de ameaças.', FALSE),

-- QUESTAO 11 | ID 1040 | GABARITO B
(1040, 'Executar somente tarefas que tragam reconhecimento.', FALSE),
(1040, 'Assumir as consequências das próprias ações e cumprir deveres.', TRUE),
(1040, 'Delegar toda decisão difícil sem justificativa.', FALSE),
(1040, 'Esconder falhas para evitar correções.', FALSE),

-- QUESTAO 12 | ID 1041 | GABARITO D
(1041, 'Divulgar o risco apenas em redes sociais.', FALSE),
(1041, 'Ignorar o problema se não afetar sua função.', FALSE),
(1041, 'Aguardar que ocorra um acidente.', FALSE),
(1041, 'Comunicar o risco pelos canais apropriados.', TRUE),

-- QUESTAO 13 | ID 1042 | GABARITO A
(1042, 'Negar oportunidade por preconceito contra uma característica pessoal.', TRUE),
(1042, 'Oferecer capacitação para toda a equipe.', FALSE),
(1042, 'Adaptar recursos para promover acessibilidade.', FALSE),
(1042, 'Aplicar critérios técnicos iguais aos candidatos.', FALSE),

-- QUESTAO 14 | ID 1043 | GABARITO D
(1043, 'Espalhar rumores sobre os envolvidos.', FALSE),
(1043, 'Aumentar o tom de voz para encerrar a discussão.', FALSE),
(1043, 'Evitar registrar acordos importantes.', FALSE),
(1043, 'Dialogar com respeito e buscar soluções objetivas.', TRUE),

-- QUESTAO 15 | ID 1044 | GABARITO B
(1044, 'Divulgar dados sigilosos indiscriminadamente.', FALSE),
(1044, 'Comunicar informações relevantes de maneira clara e verdadeira.', TRUE),
(1044, 'Omitir dificuldades que afetam as entregas.', FALSE),
(1044, 'Alterar registros para melhorar indicadores.', FALSE),

-- QUESTAO 16 | ID 1045 | GABARITO B
(1045, 'Emprestá-los sem autorização a terceiros.', FALSE),
(1045, 'Utilizá-los conforme as políticas e finalidades autorizadas.', TRUE),
(1045, 'Utilizar contas corporativas para atividades ilícitas.', FALSE),
(1045, 'Instalar qualquer software sem avaliação.', FALSE),

-- QUESTAO 17 | ID 1046 | GABARITO B
(1046, 'Porque conflitos deixam de existir automaticamente.', FALSE),
(1046, 'Porque diferentes experiências merecem respeito e podem enriquecer a colaboração.', TRUE),
(1046, 'Porque as regras profissionais deixam de valer.', FALSE),
(1046, 'Porque todos devem ter as mesmas opiniões.', FALSE),

-- QUESTAO 18 | ID 1047 | GABARITO A
(1047, 'Revisar entregas e corrigir falhas identificadas.', TRUE),
(1047, 'Entregar trabalhos sem verificar requisitos.', FALSE),
(1047, 'Apagar evidências de erros encontrados.', FALSE),
(1047, 'Ignorar comentários de usuários.', FALSE),

-- QUESTAO 19 | ID 1048 | GABARITO D
(1048, 'Apagar registros sem comunicar ninguém.', FALSE),
(1048, 'Aguardar indefinidamente que alguém descubra.', FALSE),
(1048, 'Atribuir a falha a outra pessoa.', FALSE),
(1048, 'Informar o ocorrido e colaborar na correção.', TRUE),

-- QUESTAO 20 | ID 1049 | GABARITO A
(1049, 'Respeitar a fala dos participantes e manter o foco na pauta.', TRUE),
(1049, 'Interromper participantes para impor opiniões.', FALSE),
(1049, 'Desconsiderar decisões registradas.', FALSE),
(1049, 'Expor dados pessoais sem necessidade.', FALSE);

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
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
