-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento do TCC - Módulo 3
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Desenvolvimento do TCC
SET @quiz_dtcc_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento do Trabalho de Conclusão de Curso (TCC)'
        AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- DTCC | Questões 41 a 60 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_dtcc_id, 'Qual análise avalia os impactos de um projeto na sociedade?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'O que define os resultados que um projeto pretende alcançar?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual ferramenta gráfica é utilizada para representar a distribuição de frequências de dados?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual fator está diretamente relacionado ao cumprimento dos resultados esperados do projeto?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual etapa ocorre após a organização dos dados e tem como objetivo explicar os resultados obtidos?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'O que caracteriza uma boa pergunta de pesquisa?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual é a relação entre problema de pesquisa e objetivo geral?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Em um projeto de software, o que pode acontecer quando os requisitos não são definidos corretamente?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual é a principal finalidade de validar os requisitos de um sistema?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Em um TCC de desenvolvimento de sistemas, por que é importante relacionar a teoria à prática?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'O que é uma análise de viabilidade técnica?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Por que a análise de viabilidade econômica é importante em um projeto de software?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'O que pode ser considerado um risco em um projeto de desenvolvimento de sistemas?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual é a importância da gestão de riscos em um projeto?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Em uma pesquisa, qual é a finalidade de uma amostra?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual situação pode indicar um problema na coleta de dados?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Qual é a função da conclusão em um TCC?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Por que as referências bibliográficas são importantes em um TCC?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Em um projeto de desenvolvimento de sistemas, o que pode ser considerado um fator crítico de sucesso?', 'DIFICIL', 15, 15),
(@quiz_dtcc_id, 'Um projeto possui orçamento limitado, prazo curto e diversas funcionalidades solicitadas. Qual conceito do gerenciamento de projetos ajuda a analisar esse cenário?', 'DIFICIL', 15, 15);

-- ============================================================
-- DTCC | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
VALUES
-- Questão 41 | Correta: C
(ID_Q41, 'Financeira', FALSE),
(ID_Q41, 'Técnica', FALSE),
(ID_Q41, 'Social', TRUE),
(ID_Q41, 'Econômica', FALSE),

-- Questão 42 | Correta: B
(ID_Q42, 'Produções científicas', FALSE),
(ID_Q42, 'Metas e objetivos', TRUE),
(ID_Q42, 'Tabulação', FALSE),
(ID_Q42, 'Simbologia', FALSE),

-- Questão 43 | Correta: C
(ID_Q43, 'Fluxograma', FALSE),
(ID_Q43, 'Organograma', FALSE),
(ID_Q43, 'Histograma', TRUE),
(ID_Q43, 'Cronograma', FALSE),

-- Questão 44 | Correta: A
(ID_Q44, 'Fator crítico de sucesso', TRUE),
(ID_Q44, 'Pesquisa documental', FALSE),
(ID_Q44, 'Codificação', FALSE),
(ID_Q44, 'Terminologia', FALSE),

-- Questão 45 | Correta: C
(ID_Q45, 'Coleta de dados', FALSE),
(ID_Q45, 'Formatação ABNT', FALSE),
(ID_Q45, 'Análise dos dados', TRUE),
(ID_Q45, 'Levantamento bibliográfico', FALSE),

-- Questão 46 | Correta: A
(ID_Q46, 'Deve ser clara, específica e possível de investigar', TRUE),
(ID_Q46, 'Deve ser sempre respondida com "sim" ou "não"', FALSE),
(ID_Q46, 'Deve conter várias perguntas diferentes', FALSE),
(ID_Q46, 'Deve apresentar diretamente os resultados', FALSE),

-- Questão 47 | Correta: A
(ID_Q47, 'O objetivo geral deve estar relacionado à busca de resposta para o problema', TRUE),
(ID_Q47, 'Não existe relação entre eles', FALSE),
(ID_Q47, 'O problema deve apresentar os resultados finais', FALSE),
(ID_Q47, 'O objetivo geral deve substituir o problema', FALSE),

-- Questão 48 | Correta: A
(ID_Q48, 'O sistema pode não atender às necessidades dos usuários', TRUE),
(ID_Q48, 'O projeto sempre termina mais rápido', FALSE),
(ID_Q48, 'Os custos sempre diminuem', FALSE),
(ID_Q48, 'A qualidade sempre aumenta', FALSE),

-- Questão 49 | Correta: A
(ID_Q49, 'Verificar se eles estão corretos, completos e atendem às necessidades do projeto', TRUE),
(ID_Q49, 'Escolher a capa do TCC', FALSE),
(ID_Q49, 'Definir a quantidade de páginas do trabalho', FALSE),
(ID_Q49, 'Substituir os testes do sistema', FALSE),

-- Questão 50 | Correta: A
(ID_Q50, 'Para demonstrar como os conceitos estudados são aplicados no desenvolvimento da solução', TRUE),
(ID_Q50, 'Para aumentar o número de páginas sem necessidade', FALSE),
(ID_Q50, 'Para eliminar a metodologia', FALSE),
(ID_Q50, 'Para substituir os resultados', FALSE),

-- Questão 51 | Correta: A
(ID_Q51, 'Avaliação da possibilidade de desenvolver o projeto utilizando tecnologias e recursos disponíveis', TRUE),
(ID_Q51, 'Avaliação exclusiva do retorno financeiro', FALSE),
(ID_Q51, 'Análise dos impactos ambientais', FALSE),
(ID_Q51, 'Avaliação da formatação do documento', FALSE),

-- Questão 52 | Correta: A
(ID_Q52, 'Para verificar se os custos e recursos financeiros são compatíveis com o projeto', TRUE),
(ID_Q52, 'Para escolher a linguagem de programação exclusivamente', FALSE),
(ID_Q52, 'Para definir os objetivos específicos', FALSE),
(ID_Q52, 'Para criar o referencial teórico', FALSE),

-- Questão 53 | Correta: A
(ID_Q53, 'Um evento que pode afetar negativamente os objetivos do projeto', TRUE),
(ID_Q53, 'Uma referência bibliográfica', FALSE),
(ID_Q53, 'Uma regra de formatação', FALSE),
(ID_Q53, 'Um resultado já confirmado', FALSE),

-- Questão 54 | Correta: A
(ID_Q54, 'Identificar, avaliar e buscar reduzir possíveis problemas que afetem o projeto', TRUE),
(ID_Q54, 'Eliminar a necessidade de planejamento', FALSE),
(ID_Q54, 'Substituir os testes do software', FALSE),
(ID_Q54, 'Evitar qualquer alteração no projeto', FALSE),

-- Questão 55 | Correta: A
(ID_Q55, 'Representar uma parte da população estudada para possibilitar a coleta e análise de dados', TRUE),
(ID_Q55, 'Substituir obrigatoriamente todos os dados existentes', FALSE),
(ID_Q55, 'Eliminar a necessidade de análise', FALSE),
(ID_Q55, 'Definir a metodologia automaticamente', FALSE),

-- Questão 56 | Correta: A
(ID_Q56, 'Dados incompletos, inconsistentes ou obtidos de forma inadequada', TRUE),
(ID_Q56, 'Dados organizados e revisados', FALSE),
(ID_Q56, 'Questionários respondidos corretamente', FALSE),
(ID_Q56, 'Informações devidamente registradas', FALSE),

-- Questão 57 | Correta: A
(ID_Q57, 'Retomar os principais resultados e verificar o alcance dos objetivos propostos', TRUE),
(ID_Q57, 'Apresentar novas informações sem relação com a pesquisa', FALSE),
(ID_Q57, 'Listar apenas as referências', FALSE),
(ID_Q57, 'Descrever somente os custos do projeto', FALSE),

-- Questão 58 | Correta: A
(ID_Q58, 'Permitem identificar as fontes utilizadas e dão fundamentação ao trabalho', TRUE),
(ID_Q58, 'Servem apenas para aumentar o número de páginas', FALSE),
(ID_Q58, 'Substituem a metodologia', FALSE),
(ID_Q58, 'Apresentam somente os resultados da pesquisa', FALSE),

-- Questão 59 | Correta: A
(ID_Q59, 'Uma condição essencial para que o projeto alcance seus objetivos', TRUE),
(ID_Q59, 'Uma informação sem relação com o projeto', FALSE),
(ID_Q59, 'Um erro de programação', FALSE),
(ID_Q59, 'Uma referência bibliográfica', FALSE),

-- Questão 60 | Correta: A
(ID_Q60, 'Triângulo da Gestão de Projetos', TRUE),
(ID_Q60, 'Referencial teórico', FALSE),
(ID_Q60, 'Pesquisa bibliográfica', FALSE),
(ID_Q60, 'Definição técnica', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE DTCC
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
WHERE q.quiz_id = @quiz_dtcc_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;