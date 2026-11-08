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
-- DISCIPLINA: Desenvolvimento do TCC - Modulo 3
-- DIFICULDADE: NIVEL FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_tcc3_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.id = 30
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- DESENVOLVIMENTO DO TCC | QUESTOES 01 A 20 | NIVEL FACIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc3_id, 'O que reúne os estudos e pesquisas já publicados sobre um tema?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Como são chamadas as publicações usadas para fundamentar uma pesquisa?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que apresenta o significado de termos técnicos e científicos?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual ferramenta representa visualmente as etapas de um processo?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual norma é utilizada na formatação de trabalhos acadêmicos no Brasil?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que é um Trabalho de Conclusão de Curso (TCC)?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual é a principal finalidade de uma introdução em um TCC?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que é o tema de uma pesquisa?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual elemento apresenta aquilo que o pesquisador pretende investigar?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Para que serve um cronograma em um projeto?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual elemento apresenta as fontes utilizadas no desenvolvimento do TCC?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que é uma hipótese?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual seção explica como a pesquisa será realizada?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que é uma pesquisa bibliográfica?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual é uma característica de uma fonte científica confiável?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual elemento geralmente aparece no início de um TCC?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que são objetivos em uma pesquisa?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual recurso pode ser utilizado para coletar informações de participantes?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'O que significa pesquisar?', 'FACIL', 5, 15),
(@quiz_tcc3_id, 'Qual parte do TCC apresenta uma síntese dos principais resultados e conclusões?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_tcc3_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- DESENVOLVIMENTO DO TCC | ALTERNATIVAS DAS QUESTOES 01 A 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 1150 | GABARITO B
(1150, 'Cronograma', FALSE),
(1150, 'Referencial teórico', TRUE),
(1150, 'Fluxograma', FALSE),
(1150, 'Histograma', FALSE),

-- QUESTAO 02 | ID 1151 | GABARITO A
(1151, 'Produções científicas', TRUE),
(1151, 'Recursos financeiros', FALSE),
(1151, 'Metas do projeto', FALSE),
(1151, 'Requisitos técnicos', FALSE),

-- QUESTAO 03 | ID 1152 | GABARITO C
(1152, 'Fluxograma', FALSE),
(1152, 'Cronograma', FALSE),
(1152, 'Definições técnicas', TRUE),
(1152, 'Tabulação', FALSE),

-- QUESTAO 04 | ID 1153 | GABARITO B
(1153, 'Histograma', FALSE),
(1153, 'Fluxograma', TRUE),
(1153, 'Relatório', FALSE),
(1153, 'Questionário', FALSE),

-- QUESTAO 05 | ID 1154 | GABARITO C
(1154, 'ISO', FALSE),
(1154, 'IEEE', FALSE),
(1154, 'ABNT', TRUE),
(1154, 'UML', FALSE),

-- QUESTAO 06 | ID 1155 | GABARITO B
(1155, 'Um documento sem finalidade acadêmica', FALSE),
(1155, 'Um trabalho desenvolvido para demonstrar conhecimentos adquiridos no curso', TRUE),
(1155, 'Um relatório exclusivamente financeiro', FALSE),
(1155, 'Um manual de instalação de software', FALSE),

-- QUESTAO 07 | ID 1156 | GABARITO A
(1156, 'Apresentar o tema e contextualizar o trabalho', TRUE),
(1156, 'Apresentar somente os resultados', FALSE),
(1156, 'Mostrar apenas as referências', FALSE),
(1156, 'Listar os erros do projeto', FALSE),

-- QUESTAO 08 | ID 1157 | GABARITO B
(1157, 'O conjunto de resultados obtidos', FALSE),
(1157, 'O assunto principal que será estudado', TRUE),
(1157, 'A lista de referências', FALSE),
(1157, 'O cronograma do projeto', FALSE),

-- QUESTAO 09 | ID 1158 | GABARITO A
(1158, 'Problema de pesquisa', TRUE),
(1158, 'Sumário', FALSE),
(1158, 'Capa', FALSE),
(1158, 'Referências', FALSE),

-- QUESTAO 10 | ID 1159 | GABARITO A
(1159, 'Organizar as atividades ao longo do tempo', TRUE),
(1159, 'Apresentar somente os resultados', FALSE),
(1159, 'Definir a bibliografia', FALSE),
(1159, 'Representar a distribuição de frequências', FALSE),

-- QUESTAO 11 | ID 1160 | GABARITO A
(1160, 'Referências', TRUE),
(1160, 'Introdução', FALSE),
(1160, 'Objetivos', FALSE),
(1160, 'Metodologia', FALSE),

-- QUESTAO 12 | ID 1161 | GABARITO A
(1161, 'Uma possível resposta ou explicação para um problema de pesquisa', TRUE),
(1161, 'Uma lista de livros', FALSE),
(1161, 'Uma ferramenta gráfica', FALSE),
(1161, 'Um tipo de cronograma', FALSE),

-- QUESTAO 13 | ID 1162 | GABARITO A
(1162, 'Metodologia', TRUE),
(1162, 'Conclusão', FALSE),
(1162, 'Capa', FALSE),
(1162, 'Referências', FALSE),

-- QUESTAO 14 | ID 1163 | GABARITO A
(1163, 'Pesquisa baseada em livros, artigos e outras publicações', TRUE),
(1163, 'Pesquisa realizada apenas por entrevistas', FALSE),
(1163, 'Pesquisa realizada somente em laboratórios', FALSE),
(1163, 'Pesquisa baseada apenas em gráficos', FALSE),

-- QUESTAO 15 | ID 1164 | GABARITO B
(1164, 'Possui informações sem autoria', FALSE),
(1164, 'Apresenta informações fundamentadas e verificáveis', TRUE),
(1164, 'Não possui referências', FALSE),
(1164, 'É sempre publicada em redes sociais', FALSE),

-- QUESTAO 16 | ID 1165 | GABARITO A
(1165, 'Capa', TRUE),
(1165, 'Conclusão', FALSE),
(1165, 'Análise de dados', FALSE),
(1165, 'Apêndice', FALSE),

-- QUESTAO 17 | ID 1166 | GABARITO A
(1166, 'Resultados que o trabalho pretende alcançar', TRUE),
(1166, 'Apenas as referências utilizadas', FALSE),
(1166, 'As dificuldades encontradas pelo pesquisador', FALSE),
(1166, 'Os gráficos da pesquisa', FALSE),

-- QUESTAO 18 | ID 1167 | GABARITO A
(1167, 'Questionário', TRUE),
(1167, 'Histograma', FALSE),
(1167, 'Fluxograma', FALSE),
(1167, 'Cronograma', FALSE),

-- QUESTAO 19 | ID 1168 | GABARITO A
(1168, 'Buscar informações de maneira organizada para responder a uma questão', TRUE),
(1168, 'Copiar informações da internet', FALSE),
(1168, 'Criar somente gráficos', FALSE),
(1168, 'Elaborar apenas um cronograma', FALSE),

-- QUESTAO 20 | ID 1169 | GABARITO B
(1169, 'Introdução', FALSE),
(1169, 'Conclusão', TRUE),
(1169, 'Referencial teórico', FALSE),
(1169, 'Capa', FALSE);

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

WHERE q.quiz_id = 15
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
