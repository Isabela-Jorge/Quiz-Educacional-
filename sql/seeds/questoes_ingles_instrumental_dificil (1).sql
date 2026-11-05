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
-- DISCIPLINA: Inglês Instrumental - Módulo 1
-- DIFICULDADE: DIFICIL
-- QUESTÕES: 41 a 60
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

SET @quiz_ingles_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Inglês Instrumental'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- INGLÊS INSTRUMENTAL | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ingles_id, 'Leia: “Despite having sufficient storage, the installation was aborted due to missing permissions.” Qual foi a causa da interrupção?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “Had the administrator configured the firewall correctly, the incident might have been prevented”, a frase expressa:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The patch addresses vulnerabilities that could otherwise be exploited remotely.” Qual é a finalidade principal do patch?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Qual interpretação de “The findings are consistent with the initial assessment” é adequada?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Only after the logs had been reviewed was the root cause identified.” O que ocorreu primeiro?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em um relatório técnico, “The outage was traced back to a misconfigured router” indica que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Provided that the credentials remain valid, the service will continue operating.” Qual condição é necessária?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Na frase “The dataset, which had been anonymized, was shared with researchers”, qual informação é acrescentada pela oração relativa?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The update is unlikely to affect backward compatibility.” Qual é a previsão?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Qual é o sentido de “whereas” em “The first model prioritizes speed, whereas the second emphasizes accuracy”?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The system shall retain audit records for no less than ninety days.” Qual é o requisito?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “The feature would have worked if the dependency had been installed”, conclui-se que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The documentation omits the steps required to reproduce the bug.” Qual é a deficiência da documentação?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em um artigo, “The results suggest a correlation, not necessarily causation” significa que:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Once the migration is complete, legacy endpoints will be deprecated.” O que acontecerá após a migração?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “Notwithstanding the limitations, the proposed solution remains viable”, o termo inicial indica:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The request was rejected because the payload did not conform to the schema.” Por que houve rejeição?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Em “The report should have been submitted by Friday”, a estrutura indica:', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “The proposed change may introduce unintended side effects.” Qual risco está sendo apontado?', 'DIFICIL', 15, 15),
(@quiz_ingles_id, 'Leia: “Unless otherwise specified, all timestamps are expressed in UTC.” Qual regra deve ser adotada?', 'DIFICIL', 15, 15);

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
WHERE quiz_id = 16
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- INGLÊS INSTRUMENTAL | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 170 | Correta: B
(170, 'Falta de armazenamento', FALSE),
(170, 'Falta de permissões', TRUE),
(170, 'Ausência de conexão sem fio', FALSE),
(170, 'Incompatibilidade do monitor', FALSE),

-- Questão 42 | ID 171 | Correta: A
(171, 'Uma hipótese contrária ao passado', TRUE),
(171, 'Uma instrução obrigatória no presente', FALSE),
(171, 'Um evento futuro confirmado', FALSE),
(171, 'Uma rotina habitual', FALSE),

-- Questão 43 | ID 172 | Correta: D
(172, 'Aumentar o tamanho dos arquivos', FALSE),
(172, 'Desativar toda comunicação externa', FALSE),
(172, 'Criar novas contas de usuário', FALSE),
(172, 'Corrigir vulnerabilidades exploráveis remotamente', TRUE),

-- Questão 44 | ID 173 | Correta: C
(173, 'Os resultados contradizem obrigatoriamente a avaliação inicial.', FALSE),
(173, 'A avaliação inicial ainda não foi realizada.', FALSE),
(173, 'Os resultados estão de acordo com a avaliação inicial.', TRUE),
(173, 'Os resultados foram descartados sem análise.', FALSE),

-- Questão 45 | ID 174 | Correta: B
(174, 'A identificação da causa raiz', FALSE),
(174, 'A análise dos logs', TRUE),
(174, 'A publicação da correção', FALSE),
(174, 'A substituição do servidor', FALSE),

-- Questão 46 | ID 175 | Correta: A
(175, 'A interrupção foi atribuída a um roteador mal configurado', TRUE),
(175, 'A interrupção foi causada por falta de energia comprovada', FALSE),
(175, 'O roteador foi instalado após a interrupção', FALSE),
(175, 'O problema foi resolvido por um novo navegador', FALSE),

-- Questão 47 | ID 176 | Correta: D
(176, 'O serviço ser desinstalado', FALSE),
(176, 'O usuário alterar o hardware', FALSE),
(176, 'O servidor permanecer desligado', FALSE),
(176, 'As credenciais permanecerem válidas', TRUE),

-- Questão 48 | ID 177 | Correta: C
(177, 'Os pesquisadores anonimizaram os dados após recebê-los', FALSE),
(177, 'Os dados continham obrigatoriamente nomes completos', FALSE),
(177, 'O conjunto de dados havia sido anonimizado', TRUE),
(177, 'O conjunto de dados não foi compartilhado', FALSE),

-- Questão 49 | ID 178 | Correta: B
(178, 'A atualização certamente eliminará a compatibilidade', FALSE),
(178, 'É pouco provável que a atualização afete a compatibilidade retroativa', TRUE),
(178, 'A compatibilidade já foi removida', FALSE),
(178, 'A atualização depende da exclusão de versões anteriores', FALSE),

-- Questão 50 | ID 179 | Correta: A
(179, 'Estabelecer contraste entre os modelos', TRUE),
(179, 'Indicar que ambos são idênticos', FALSE),
(179, 'Introduzir uma condição de instalação', FALSE),
(179, 'Expressar uma consequência inevitável', FALSE),

-- Questão 51 | ID 180 | Correta: D
(180, 'Excluir registros após exatamente 30 dias', FALSE),
(180, 'Manter somente os últimos nove registros', FALSE),
(180, 'Apagar todos os registros a cada acesso', FALSE),
(180, 'Manter registros de auditoria por pelo menos 90 dias', TRUE),

-- Questão 52 | ID 181 | Correta: C
(181, 'A funcionalidade funcionou normalmente', FALSE),
(181, 'A dependência será instalada com certeza', FALSE),
(181, 'A dependência não havia sido instalada na situação descrita', TRUE),
(181, 'A instalação da dependência é irrelevante', FALSE),

-- Questão 53 | ID 182 | Correta: B
(182, 'Não informa a data de lançamento do produto', FALSE),
(182, 'Não apresenta as etapas necessárias para reproduzir o erro', TRUE),
(182, 'Não contém imagens decorativas', FALSE),
(182, 'Não identifica o fabricante do teclado', FALSE),

-- Questão 54 | ID 183 | Correta: A
(183, 'Uma associação observada não comprova relação de causa e efeito', TRUE),
(183, 'Toda correlação comprova causalidade', FALSE),
(183, 'Os resultados descartam qualquer associação', FALSE),
(183, 'O estudo demonstrou uma causa única e definitiva', FALSE),

-- Questão 55 | ID 184 | Correta: D
(184, 'Os endpoints antigos serão obrigatoriamente ampliados', FALSE),
(184, 'A migração será cancelada', FALSE),
(184, 'Todos os dados serão publicados', FALSE),
(184, 'Os endpoints antigos serão descontinuados gradualmente', TRUE),

-- Questão 56 | ID 185 | Correta: C
(185, 'Causa direta das limitações', FALSE),
(185, 'Finalidade exclusiva da solução', FALSE),
(185, 'Concessão, apesar das limitações', TRUE),
(185, 'Sequência cronológica obrigatória', FALSE),

-- Questão 57 | ID 186 | Correta: B
(186, 'O servidor estava sem energia', FALSE),
(186, 'O conteúdo enviado não seguia a estrutura exigida', TRUE),
(186, 'O usuário não havia aberto o navegador', FALSE),
(186, 'O arquivo tinha sido compactado corretamente', FALSE),

-- Questão 58 | ID 187 | Correta: A
(187, 'Uma obrigação ou expectativa passada possivelmente não cumprida', TRUE),
(187, 'Uma obrigação que só começa no próximo mês', FALSE),
(187, 'Uma proibição permanente de enviar relatórios', FALSE),
(187, 'Uma confirmação de envio na sexta-feira', FALSE),

-- Questão 59 | ID 188 | Correta: D
(188, 'Garantia de ausência de falhas', FALSE),
(188, 'Redução obrigatória do consumo de memória', FALSE),
(188, 'Eliminação de toda necessidade de testes', FALSE),
(188, 'Consequências não previstas decorrentes da alteração', TRUE),

-- Questão 60 | ID 189 | Correta: C
(189, 'Usar sempre o horário local do leitor', FALSE),
(189, 'Ignorar a indicação de fuso horário', FALSE),
(189, 'Usar UTC para os horários, salvo indicação diferente', TRUE),
(189, 'Converter todos os horários para minutos', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE INGLÊS INSTRUMENTAL
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
WHERE q.quiz_id = 16
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;