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
-- DIFICULDADE: NIVEL DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
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
-- DESENVOLVIMENTO DO TCC | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc3_id, 'Qual análise avalia os impactos de um projeto na sociedade?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'O que define os resultados que um projeto pretende alcançar?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual ferramenta gráfica é utilizada para representar a distribuição de frequências de dados?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual fator está diretamente relacionado ao cumprimento dos resultados esperados do projeto?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual etapa ocorre após a organização dos dados e tem como objetivo explicar os resultados obtidos?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'O que caracteriza uma boa pergunta de pesquisa?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual é a relação entre problema de pesquisa e objetivo geral?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Em um projeto de software, o que pode acontecer quando os requisitos não são definidos corretamente?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual é a principal finalidade de validar os requisitos de um sistema?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Em um TCC de desenvolvimento de sistemas, por que é importante relacionar a teoria à prática?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'O que é uma análise de viabilidade técnica?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Por que a análise de viabilidade econômica é importante em um projeto de software?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'O que pode ser considerado um risco em um projeto de desenvolvimento de sistemas?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual é a importância da gestão de riscos em um projeto?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Em uma pesquisa, qual é a finalidade de uma amostra?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual situação pode indicar um problema na coleta de dados?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Qual é a função da conclusão em um TCC?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Por que as referências bibliográficas são importantes em um TCC?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Em um projeto de desenvolvimento de sistemas, o que pode ser considerado um fator crítico de sucesso?', 'DIFICIL', 15, 15),
(@quiz_tcc3_id, 'Um projeto possui orçamento limitado, prazo curto e diversas funcionalidades solicitadas. Qual conceito do gerenciamento de projetos ajuda a analisar esse cenário?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- DESENVOLVIMENTO DO TCC | ALTERNATIVAS DAS QUESTOES 41 A 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 1190 | GABARITO C
(1190, 'Financeira', FALSE),
(1190, 'Técnica', FALSE),
(1190, 'Social', TRUE),
(1190, 'Econômica', FALSE),

-- QUESTAO 42 | ID 1191 | GABARITO B
(1191, 'Produções científicas', FALSE),
(1191, 'Metas e objetivos', TRUE),
(1191, 'Tabulação', FALSE),
(1191, 'Simbologia', FALSE),

-- QUESTAO 43 | ID 1192 | GABARITO C
(1192, 'Fluxograma', FALSE),
(1192, 'Organograma', FALSE),
(1192, 'Histograma', TRUE),
(1192, 'Cronograma', FALSE),

-- QUESTAO 44 | ID 1193 | GABARITO A
(1193, 'Fator crítico de sucesso', TRUE),
(1193, 'Pesquisa documental', FALSE),
(1193, 'Codificação', FALSE),
(1193, 'Terminologia', FALSE),

-- QUESTAO 45 | ID 1194 | GABARITO C
(1194, 'Coleta de dados', FALSE),
(1194, 'Formatação ABNT', FALSE),
(1194, 'Análise dos dados', TRUE),
(1194, 'Levantamento bibliográfico', FALSE),

-- QUESTAO 46 | ID 1195 | GABARITO A
(1195, 'Deve ser clara, específica e possível de investigar', TRUE),
(1195, 'Deve ser sempre respondida com "sim" ou "não"', FALSE),
(1195, 'Deve conter várias perguntas diferentes', FALSE),
(1195, 'Deve apresentar diretamente os resultados', FALSE),

-- QUESTAO 47 | ID 1196 | GABARITO A
(1196, 'O objetivo geral deve estar relacionado à busca de resposta para o problema', TRUE),
(1196, 'Não existe relação entre eles', FALSE),
(1196, 'O problema deve apresentar os resultados finais', FALSE),
(1196, 'O objetivo geral deve substituir o problema', FALSE),

-- QUESTAO 48 | ID 1197 | GABARITO A
(1197, 'O sistema pode não atender às necessidades dos usuários', TRUE),
(1197, 'O projeto sempre termina mais rápido', FALSE),
(1197, 'Os custos sempre diminuem', FALSE),
(1197, 'A qualidade sempre aumenta', FALSE),

-- QUESTAO 49 | ID 1198 | GABARITO A
(1198, 'Verificar se eles estão corretos, completos e atendem às necessidades do projeto', TRUE),
(1198, 'Escolher a capa do TCC', FALSE),
(1198, 'Definir a quantidade de páginas do trabalho', FALSE),
(1198, 'Substituir os testes do sistema', FALSE),

-- QUESTAO 50 | ID 1199 | GABARITO A
(1199, 'Para demonstrar como os conceitos estudados são aplicados no desenvolvimento da solução', TRUE),
(1199, 'Para aumentar o número de páginas sem necessidade', FALSE),
(1199, 'Para eliminar a metodologia', FALSE),
(1199, 'Para substituir os resultados', FALSE),

-- QUESTAO 51 | ID 1200 | GABARITO A
(1200, 'Avaliação da possibilidade de desenvolver o projeto utilizando tecnologias e recursos disponíveis', TRUE),
(1200, 'Avaliação exclusiva do retorno financeiro', FALSE),
(1200, 'Análise dos impactos ambientais', FALSE),
(1200, 'Avaliação da formatação do documento', FALSE),

-- QUESTAO 52 | ID 1201 | GABARITO A
(1201, 'Para verificar se os custos e recursos financeiros são compatíveis com o projeto', TRUE),
(1201, 'Para escolher a linguagem de programação exclusivamente', FALSE),
(1201, 'Para definir os objetivos específicos', FALSE),
(1201, 'Para criar o referencial teórico', FALSE),

-- QUESTAO 53 | ID 1202 | GABARITO A
(1202, 'Um evento que pode afetar negativamente os objetivos do projeto', TRUE),
(1202, 'Uma referência bibliográfica', FALSE),
(1202, 'Uma regra de formatação', FALSE),
(1202, 'Um resultado já confirmado', FALSE),

-- QUESTAO 54 | ID 1203 | GABARITO A
(1203, 'Identificar, avaliar e buscar reduzir possíveis problemas que afetem o projeto', TRUE),
(1203, 'Eliminar a necessidade de planejamento', FALSE),
(1203, 'Substituir os testes do software', FALSE),
(1203, 'Evitar qualquer alteração no projeto', FALSE),

-- QUESTAO 55 | ID 1204 | GABARITO A
(1204, 'Representar uma parte da população estudada para possibilitar a coleta e análise de dados', TRUE),
(1204, 'Substituir obrigatoriamente todos os dados existentes', FALSE),
(1204, 'Eliminar a necessidade de análise', FALSE),
(1204, 'Definir a metodologia automaticamente', FALSE),

-- QUESTAO 56 | ID 1205 | GABARITO A
(1205, 'Dados incompletos, inconsistentes ou obtidos de forma inadequada', TRUE),
(1205, 'Dados organizados e revisados', FALSE),
(1205, 'Questionários respondidos corretamente', FALSE),
(1205, 'Informações devidamente registradas', FALSE),

-- QUESTAO 57 | ID 1206 | GABARITO A
(1206, 'Retomar os principais resultados e verificar o alcance dos objetivos propostos', TRUE),
(1206, 'Apresentar novas informações sem relação com a pesquisa', FALSE),
(1206, 'Listar apenas as referências', FALSE),
(1206, 'Descrever somente os custos do projeto', FALSE),

-- QUESTAO 58 | ID 1207 | GABARITO A
(1207, 'Permitem identificar as fontes utilizadas e dão fundamentação ao trabalho', TRUE),
(1207, 'Servem apenas para aumentar o número de páginas', FALSE),
(1207, 'Substituem a metodologia', FALSE),
(1207, 'Apresentam somente os resultados da pesquisa', FALSE),

-- QUESTAO 59 | ID 1208 | GABARITO A
(1208, 'Uma condição essencial para que o projeto alcance seus objetivos', TRUE),
(1208, 'Uma informação sem relação com o projeto', FALSE),
(1208, 'Um erro de programação', FALSE),
(1208, 'Uma referência bibliográfica', FALSE),

-- QUESTAO 60 | ID 1209 | GABARITO A
(1209, 'Triângulo da Gestão de Projetos', TRUE),
(1209, 'Referencial teórico', FALSE),
(1209, 'Pesquisa bibliográfica', FALSE),
(1209, 'Definição técnica', FALSE);

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
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
