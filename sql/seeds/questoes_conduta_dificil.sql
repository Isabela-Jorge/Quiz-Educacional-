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
-- DIFICULDADE: NIVEL DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
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
-- CONDUTA PROFISSIONAL | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_conduta_id, 'Uma equipe precisa usar dados reais em ambiente de testes. Qual abordagem reduz riscos de privacidade?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma pessoa relata discriminação praticada por seu superior imediato. Qual procedimento é mais apropriado?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma empresa mede produtividade somente pelo número de commits. Qual problema ético pode surgir?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um algoritmo de triagem de currículos apresenta resultados sistematicamente desfavoráveis a um grupo. Qual resposta é mais responsável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Durante um incidente, um gestor pede que você altere registros para esconder a hora real da falha. Qual decisão é adequada?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma empresa pretende monitorar empregados por software. Qual princípio deve orientar a decisão?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um desenvolvedor encontra código proprietário de outro cliente que resolveria rapidamente um problema. O que fazer?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Ao apurar um possível assédio, qual medida ajuda a preservar a justiça do procedimento?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um sistema automatizado negou um serviço importante com base em dados desatualizados. Qual prática é mais responsável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Em um projeto, a liderança exige uma data inviável e a equipe prevê falhas graves. Qual conduta demonstra integridade?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um fornecedor participa da definição dos critérios usados para avaliar sua própria proposta. Qual salvaguarda é recomendável?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma análise de desempenho considera apenas horas conectadas, ignorando entregas e condições de acessibilidade. Qual é o principal risco?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um colaborador recebe uma solicitação para exportar dados de clientes sem finalidade clara. Qual deve ser a primeira providência?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma equipe descobre vulnerabilidade crítica pouco antes de uma entrega. Qual resposta equilibra responsabilidade e gestão de projeto?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma política interna conflita com obrigação legal aplicável. Qual orientação geral é correta?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma equipe global trabalha com diferentes contextos culturais. Como construir regras de convivência eficazes?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Um relatório técnico contém incertezas relevantes sobre uma solução. Qual é a forma ética de apresentá-lo?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Em uma investigação interna, dados pessoais de testemunhas foram coletados. Qual procedimento é mais adequado?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Uma ferramenta sugere priorizar clientes com base em atributos potencialmente discriminatórios. Qual resposta é apropriada?', 'DIFICIL', 15, 15),
(@quiz_conduta_id, 'Após um incidente de vazamento, qual comunicação institucional tende a ser mais responsável?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- CONDUTA PROFISSIONAL | ALTERNATIVAS DAS QUESTOES 41 A 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 1070 | GABARITO C
(1070, 'Desativar controles de acesso para agilizar os testes.', FALSE),
(1070, 'Manter identificadores pessoais visíveis em relatórios compartilhados.', FALSE),
(1070, 'Usar dados sintéticos ou anonimizados adequadamente e controlar acessos.', TRUE),
(1070, 'Copiar a base de produção integral para todos os desenvolvedores.', FALSE),

-- QUESTAO 42 | ID 1071 | GABARITO B
(1071, 'Desconsiderar o caso por envolver liderança.', FALSE),
(1071, 'Orientar o uso de canal independente e preservar a confidencialidade do relato.', TRUE),
(1071, 'Exigir que o relato seja feito apenas ao próprio superior denunciado.', FALSE),
(1071, 'Divulgar a denúncia a toda a equipe antes de apuração.', FALSE),

-- QUESTAO 43 | ID 1072 | GABARITO A
(1072, 'O indicador pode estimular volume artificial e avaliações injustas de contribuições.', TRUE),
(1072, 'O indicador mede diretamente a satisfação dos usuários.', FALSE),
(1072, 'O indicador elimina a necessidade de avaliação contextual.', FALSE),
(1072, 'O indicador demonstra sozinho a qualidade e o impacto do software.', FALSE),

-- QUESTAO 44 | ID 1073 | GABARITO B
(1073, 'Manter o sistema por ser automatizado e, portanto, neutro.', FALSE),
(1073, 'Auditar dados, critérios e resultados, corrigindo vieses identificados.', TRUE),
(1073, 'Ocultar os resultados para evitar questionamentos.', FALSE),
(1073, 'Excluir os registros do grupo afetado sem investigação.', FALSE),

-- QUESTAO 45 | ID 1074 | GABARITO C
(1074, 'Modificar apenas os registros que o cliente poderá consultar.', FALSE),
(1074, 'Apagar todos os logs para impedir interpretações equivocadas.', FALSE),
(1074, 'Preservar registros íntegros e comunicar a solicitação pelos canais apropriados.', TRUE),
(1074, 'Alterar os registros porque a ordem veio da liderança.', FALSE),

-- QUESTAO 46 | ID 1075 | GABARITO D
(1075, 'Divulgação pública de métricas individuais sensíveis.', FALSE),
(1075, 'Coleta irrestrita de dados pessoais independentemente da finalidade.', FALSE),
(1075, 'Monitoramento oculto como prática padrão sem avaliação.', FALSE),
(1075, 'Necessidade, proporcionalidade, transparência e respeito à privacidade.', TRUE),

-- QUESTAO 47 | ID 1076 | GABARITO D
(1076, 'Compartilhar o repositório privado com toda a equipe.', FALSE),
(1076, 'Copiar o código porque a finalidade é semelhante.', FALSE),
(1076, 'Remover comentários de autoria antes de reutilizar.', FALSE),
(1076, 'Respeitar direitos e contratos, buscando solução licenciada ou autorizada.', TRUE),

-- QUESTAO 48 | ID 1077 | GABARITO B
(1077, 'Ignorar evidências que contrariem a hipótese inicial.', FALSE),
(1077, 'Ouvir as partes, proteger envolvidos e analisar evidências com imparcialidade.', TRUE),
(1077, 'Publicar depoimentos para pressionar os envolvidos.', FALSE),
(1077, 'Considerar culpado quem receber a primeira denúncia.', FALSE),

-- QUESTAO 49 | ID 1078 | GABARITO B
(1078, 'Presumir que decisões automatizadas nunca contêm erros.', FALSE),
(1078, 'Prever revisão, correção de dados e contestação adequada da decisão.', TRUE),
(1078, 'Apagar registros da decisão antes de investigar.', FALSE),
(1078, 'Impedir qualquer contestação para preservar a automação.', FALSE),

-- QUESTAO 50 | ID 1079 | GABARITO D
(1079, 'Confirmar a data sabendo que os testes serão omitidos.', FALSE),
(1079, 'Ocultar os riscos para evitar desgaste com a liderança.', FALSE),
(1079, 'Transferir responsabilidades sem revisar o plano.', FALSE),
(1079, 'Documentar riscos, apresentar estimativas fundamentadas e negociar alternativas.', TRUE),

-- QUESTAO 51 | ID 1080 | GABARITO C
(1080, 'Ocultar a participação do fornecedor na elaboração.', FALSE),
(1080, 'Dispensar documentação para agilizar a seleção.', FALSE),
(1080, 'Separar responsabilidades e submeter os critérios a revisão independente.', TRUE),
(1080, 'Permitir que o fornecedor defina sozinho todos os pesos.', FALSE),

-- QUESTAO 52 | ID 1081 | GABARITO A
(1081, 'Produzir avaliações distorcidas e potencialmente discriminatórias.', TRUE),
(1081, 'Garantir automaticamente igualdade de oportunidades.', FALSE),
(1081, 'Medir com precisão a qualidade de todas as entregas.', FALSE),
(1081, 'Eliminar vieses por usar um indicador numérico.', FALSE),

-- QUESTAO 53 | ID 1082 | GABARITO B
(1082, 'Usar conta pessoal para facilitar a transferência.', FALSE),
(1082, 'Verificar finalidade, autorização e necessidade antes de executar a exportação.', TRUE),
(1082, 'Exportar os dados e pedir justificativa depois.', FALSE),
(1082, 'Enviar apenas uma amostra contendo dados sensíveis sem autorização.', FALSE),

-- QUESTAO 54 | ID 1083 | GABARITO C
(1083, 'Omitir a vulnerabilidade porque a entrega já foi anunciada.', FALSE),
(1083, 'Aguardar um ataque real para justificar a correção.', FALSE),
(1083, 'Comunicar o risco, avaliar impacto e priorizar mitigação antes da exposição.', TRUE),
(1083, 'Liberar o sistema e remover o registro da falha.', FALSE),

-- QUESTAO 55 | ID 1084 | GABARITO B
(1084, 'Solicitar a colegas que decidam por votação qual regra vale.', FALSE),
(1084, 'Buscar orientação competente e cumprir a obrigação legal aplicável.', TRUE),
(1084, 'Ignorar ambas as regras sem registrar a situação.', FALSE),
(1084, 'Seguir a política interna mesmo que imponha conduta ilegal.', FALSE),

-- QUESTAO 56 | ID 1085 | GABARITO D
(1085, 'Evitar qualquer norma para não criar divergências.', FALSE),
(1085, 'Impor costumes de uma única pessoa sem discussão.', FALSE),
(1085, 'Aplicar estereótipos culturais para distribuir responsabilidades.', FALSE),
(1085, 'Definir acordos inclusivos, claros e revisáveis com participação da equipe.', TRUE),

-- QUESTAO 57 | ID 1086 | GABARITO B
(1086, 'Retirar ressalvas para tornar o relatório mais convincente.', FALSE),
(1086, 'Explicitar hipóteses, limitações, evidências e riscos conhecidos.', TRUE),
(1086, 'Selecionar apenas evidências favoráveis à proposta.', FALSE),
(1086, 'Apresentar estimativas como resultados comprovados.', FALSE),

-- QUESTAO 58 | ID 1087 | GABARITO B
(1087, 'Manter cópias indefinidamente em dispositivos pessoais.', FALSE),
(1087, 'Restringir acesso e retenção ao necessário para a finalidade legítima.', TRUE),
(1087, 'Compartilhar depoimentos com toda a organização.', FALSE),
(1087, 'Utilizar os depoimentos em treinamentos públicos sem proteção.', FALSE),

-- QUESTAO 59 | ID 1088 | GABARITO D
(1088, 'Aplicar a regra apenas a clientes que não possam contestar.', FALSE),
(1088, 'Adotar a recomendação sem análise por ser estatística.', FALSE),
(1088, 'Ocultar os atributos utilizados dos responsáveis pela decisão.', FALSE),
(1088, 'Revisar a finalidade, a legitimidade dos critérios e seus impactos antes do uso.', TRUE),

-- QUESTAO 60 | ID 1089 | GABARITO B
(1089, 'Eliminar registros de decisões para reduzir exposição institucional.', FALSE),
(1089, 'Informar fatos confirmados, incertezas e medidas adotadas aos responsáveis e públicos pertinentes.', TRUE),
(1089, 'Negar o incidente antes de concluir a apuração.', FALSE),
(1089, 'Divulgar nomes e dados de pessoas afetadas indiscriminadamente.', FALSE);

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
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
