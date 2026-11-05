-- ============================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Linguagem, Trabalho e Tecnologia - Modulo 3
-- DIFICULDADE: NIVEL DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_linguagem_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Linguagem, Trabalho e Tecnologia'
      AND d.modulo = 3
    LIMIT 1
);

-- ====================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ====================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_linguagem_id, 'Um requisito diz: “O sistema deve responder rapidamente”. Qual reescrita torna o critério verificável?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Um relatório compara dois testes com amostras de tamanhos diferentes. Qual prática evita uma conclusão enganosa?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Ao elaborar um parecer técnico com evidências contraditórias, qual conduta é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual argumento evita a falácia de generalização apressada?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Uma equipe precisa comunicar uma vulnerabilidade ainda não corrigida. Qual texto equilibra precisão e responsabilidade?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual afirmação diferencia correlação de causalidade de maneira correta?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Um documento contém “O aplicativo enviará notificações aos usuários cadastrados quando estiverem ativos”. Como eliminar a ambiguidade se quem deve estar ativo é o aplicativo?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual redação diferencia corretamente escopo e limitação em um projeto?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Em uma proposta de melhoria, qual estrutura argumentativa é mais consistente?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Um gráfico tem eixo vertical começando em 98, e valores de 99 a 101. Qual cuidado interpretativo é essencial?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Ao redigir uma instrução de recuperação de dados, qual detalhe reduz o risco de interpretação inadequada?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual escolha fortalece a credibilidade de uma análise sobre desempenho de software?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Em uma análise comparativa, qual critério ajuda a evitar uma falsa equivalência?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Um texto afirma: “A equipe implementou testes; portanto, o software não tem defeitos”. Qual é a falha argumentativa?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual estratégia é mais adequada para documentar uma decisão arquitetural contestada?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Um relatório técnico cita uma estatística sem indicar período nem população. Qual é o principal problema?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Ao sintetizar entrevistas com usuários, qual prática preserva melhor a fidelidade dos resultados?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Qual frase apresenta uma recomendação condicionada a evidências, sem extrapolação?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Uma especificação afirma “o sistema nunca perderá dados”. Qual alternativa comunica melhor uma meta verificável?', 'DIFICIL', 15, 15),
(@quiz_linguagem_id, 'Em uma apresentação de resultados negativos de um projeto, qual postura demonstra rigor técnico?', 'DIFICIL', 15, 15);

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
WHERE quiz_id = @quiz_linguagem_id
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- =====================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | ALTERNATIVAS DAS QUESTOES 41 A 60
-- =====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 1130 | GABARITO C
(1130, 'O sistema precisa superar qualquer concorrente.', FALSE),
(1130, 'O sistema deve ser muito rápido sempre.', FALSE),
(1130, 'Em 95% das consultas, a resposta deve ocorrer em até 2 segundos, sob carga definida.', TRUE),
(1130, 'A resposta deve parecer imediata ao usuário.', FALSE),

-- QUESTAO 42 | ID 1131 | GABARITO C
(1131, 'Comparar apenas o maior número absoluto.', FALSE),
(1131, 'Ocultar o total de casos observados.', FALSE),
(1131, 'Apresentar valores absolutos e proporções, informando o tamanho de cada amostra.', TRUE),
(1131, 'Escolher somente o teste com melhor resultado.', FALSE),

-- QUESTAO 43 | ID 1132 | GABARITO A
(1132, 'Explicitar divergências, limitações e critérios usados na análise.', TRUE),
(1132, 'Afirmar certeza sem examinar as fontes.', FALSE),
(1132, 'Tratar a primeira evidência como definitiva.', FALSE),
(1132, 'Omitir dados que contrariem a hipótese inicial.', FALSE),

-- QUESTAO 44 | ID 1133 | GABARITO D
(1133, 'Um teste passou; não há defeitos possíveis.', FALSE),
(1133, 'Três usuários reclamaram; todos rejeitam o produto.', FALSE),
(1133, 'Uma falha ocorreu; o sistema nunca funciona.', FALSE),
(1133, 'Os três casos analisados sugerem uma tendência, mas a amostra não permite generalização.', TRUE),

-- QUESTAO 45 | ID 1134 | GABARITO B
(1134, 'Divulgaremos credenciais de teste para provar o problema.', FALSE),
(1134, 'Identificamos uma falha em investigação; o acesso afetado foi restringido e novas orientações serão divulgadas.', TRUE),
(1134, 'A falha não importa e ninguém deve ser informado.', FALSE),
(1134, 'O sistema é totalmente seguro, apesar da falha conhecida.', FALSE),

-- QUESTAO 46 | ID 1135 | GABARITO C
(1135, 'Uma causa sempre produz correlação perfeita.', FALSE),
(1135, 'Toda correlação demonstra relação de causa e efeito.', FALSE),
(1135, 'Duas variáveis podem variar juntas sem que uma seja necessariamente a causa da outra.', TRUE),
(1135, 'Se não há correlação, as variáveis são idênticas.', FALSE),

-- QUESTAO 47 | ID 1136 | GABARITO B
(1136, 'Quando estiverem ativos, as notificações serão enviadas.', FALSE),
(1136, 'Quando o aplicativo estiver ativo, enviará notificações aos usuários cadastrados.', TRUE),
(1136, 'O aplicativo notificará os usuários ativos quando estiver ativo.', FALSE),
(1136, 'O aplicativo enviará notificações quando eles estiverem ativos.', FALSE),

-- QUESTAO 48 | ID 1137 | GABARITO B
(1137, 'Escopo e limitação significam a mesma coisa.', FALSE),
(1137, 'O escopo inclui autenticação; a integração com sistemas legados fica fora desta entrega.', TRUE),
(1137, 'O escopo é fazer tudo, sem exceções.', FALSE),
(1137, 'Limitações são tarefas já concluídas.', FALSE),

-- QUESTAO 49 | ID 1138 | GABARITO A
(1138, 'Problema demonstrado, evidências, alternativa proposta e impactos esperados.', TRUE),
(1138, 'Solução escolhida, sem problema nem critérios.', FALSE),
(1138, 'Opinião pessoal, slogan e conclusão sem dados.', FALSE),
(1138, 'Crítica aos colegas, seguida de uma exigência.', FALSE),

-- QUESTAO 50 | ID 1139 | GABARITO C
(1139, 'Afirmar que houve crescimento de 100%.', FALSE),
(1139, 'Ocultar a escala para destacar a tendência.', FALSE),
(1139, 'Informar a escala truncada, pois ela pode ampliar visualmente pequenas diferenças.', TRUE),
(1139, 'Tratar a diferença visual como prova de causalidade.', FALSE),

-- QUESTAO 51 | ID 1140 | GABARITO B
(1140, 'Usar “faça o necessário” em todas as etapas.', FALSE),
(1140, 'Explicitar pré-requisitos, etapas, verificações e condições para interromper o procedimento.', TRUE),
(1140, 'Misturar procedimentos alternativos sem identificação.', FALSE),
(1140, 'Omitir alertas para encurtar o texto.', FALSE),

-- QUESTAO 52 | ID 1141 | GABARITO B
(1141, 'Omitir a versão do sistema testado.', FALSE),
(1141, 'Descrever ambiente, métricas, método de coleta e limitações dos resultados.', TRUE),
(1141, 'Usar depoimentos como substitutos de toda medição.', FALSE),
(1141, 'Informar apenas a melhor medição obtida.', FALSE),

-- QUESTAO 53 | ID 1142 | GABARITO D
(1142, 'Usar métricas diferentes para favorecer uma opção.', FALSE),
(1142, 'Dar o mesmo peso a qualquer alegação sem evidências.', FALSE),
(1142, 'Ignorar diferenças relevantes de contexto.', FALSE),
(1142, 'Comparar soluções segundo os mesmos requisitos e condições de teste.', TRUE),

-- QUESTAO 54 | ID 1143 | GABARITO A
(1143, 'A conclusão absoluta não decorre da existência de testes.', TRUE),
(1143, 'Testes nunca fornecem evidências de qualidade.', FALSE),
(1143, 'A palavra “equipe” torna o texto informal.', FALSE),
(1143, 'O uso de conectivo conclusivo é sempre proibido.', FALSE),

-- QUESTAO 55 | ID 1144 | GABARITO B
(1144, 'Trocar a justificativa por uma frase motivacional.', FALSE),
(1144, 'Registrar alternativas, critérios, evidências, decisão e consequências.', TRUE),
(1144, 'Excluir as alternativas descartadas sem justificativa.', FALSE),
(1144, 'Registrar somente o nome de quem venceu a discussão.', FALSE),

-- QUESTAO 56 | ID 1145 | GABARITO D
(1145, 'A ausência de período torna o número necessariamente falso.', FALSE),
(1145, 'Toda estatística precisa ser apresentada apenas por gráfico.', FALSE),
(1145, 'O uso de números é inadequado em relatórios.', FALSE),
(1145, 'Falta contexto para interpretar a abrangência e a validade do indicador.', TRUE),

-- QUESTAO 57 | ID 1146 | GABARITO C
(1146, 'Excluir relatos que revelem divergências.', FALSE),
(1146, 'Reescrever todas as falas como se fossem opiniões da equipe.', FALSE),
(1146, 'Distinguir falas dos participantes, interpretação da equipe e conclusões.', TRUE),
(1146, 'Apresentar inferências como citações literais.', FALSE),

-- QUESTAO 58 | ID 1147 | GABARITO C
(1147, 'Todo problema de desempenho se resolve com cache.', FALSE),
(1147, 'O cache é certamente a causa de qualquer lentidão.', FALSE),
(1147, 'Se o teste de carga confirmar o gargalo, recomenda-se revisar o mecanismo de cache.', TRUE),
(1147, 'O teste é desnecessário porque a solução já foi escolhida.', FALSE),

-- QUESTAO 59 | ID 1148 | GABARITO D
(1148, 'O sistema será infalível em qualquer circunstância.', FALSE),
(1148, 'A equipe garantirá confiabilidade total sem testes.', FALSE),
(1148, 'A perda de dados será impossível por definição.', FALSE),
(1148, 'Após falha simulada, a restauração deverá recuperar dados até o último ponto de backup definido.', TRUE),

-- QUESTAO 60 | ID 1149 | GABARITO A
(1149, 'Relatar os resultados, investigar causas possíveis e propor próximos testes.', TRUE),
(1149, 'Modificar os números para aproximá-los da meta.', FALSE),
(1149, 'Atribuir o insucesso a uma pessoa sem evidências.', FALSE),
(1149, 'Excluir os resultados para preservar a imagem da equipe.', FALSE);

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

WHERE q.quiz_id = 17
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
