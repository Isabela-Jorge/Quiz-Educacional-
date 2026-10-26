-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento do TCC - Módulo 3
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
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
-- DTCC | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_dtcc_id, 'O que reúne os estudos e pesquisas já publicados sobre um tema?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Como são chamadas as publicações usadas para fundamentar uma pesquisa?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que apresenta o significado de termos técnicos e científicos?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual ferramenta representa visualmente as etapas de um processo?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual norma é utilizada na formatação de trabalhos acadêmicos no Brasil?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que é um Trabalho de Conclusão de Curso (TCC)?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual é a principal finalidade de uma introdução em um TCC?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que é o tema de uma pesquisa?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual elemento apresenta aquilo que o pesquisador pretende investigar?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Para que serve um cronograma em um projeto?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual elemento apresenta as fontes utilizadas no desenvolvimento do TCC?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que é uma hipótese?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual seção explica como a pesquisa será realizada?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que é uma pesquisa bibliográfica?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual é uma característica de uma fonte científica confiável?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual elemento geralmente aparece no início de um TCC?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que são objetivos em uma pesquisa?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual recurso pode ser utilizado para coletar informações de participantes?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'O que significa pesquisar?', 'FACIL', 5, 15),
(@quiz_dtcc_id, 'Qual parte do TCC apresenta uma síntese dos principais resultados e conclusões?', 'FACIL', 5, 15);

-- ============================================================
-- DTCC | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | Correta: B
(ID_Q1, 'Cronograma', FALSE),
(ID_Q1, 'Referencial teórico', TRUE),
(ID_Q1, 'Fluxograma', FALSE),
(ID_Q1, 'Histograma', FALSE),

-- Questão 02 | Correta: A
(ID_Q2, 'Produções científicas', TRUE),
(ID_Q2, 'Recursos financeiros', FALSE),
(ID_Q2, 'Metas do projeto', FALSE),
(ID_Q2, 'Requisitos técnicos', FALSE),

-- Questão 03 | Correta: C
(ID_Q3, 'Fluxograma', FALSE),
(ID_Q3, 'Cronograma', FALSE),
(ID_Q3, 'Definições técnicas', TRUE),
(ID_Q3, 'Tabulação', FALSE),

-- Questão 04 | Correta: B
(ID_Q4, 'Histograma', FALSE),
(ID_Q4, 'Fluxograma', TRUE),
(ID_Q4, 'Relatório', FALSE),
(ID_Q4, 'Questionário', FALSE),

-- Questão 05 | Correta: C
(ID_Q5, 'ISO', FALSE),
(ID_Q5, 'IEEE', FALSE),
(ID_Q5, 'ABNT', TRUE),
(ID_Q5, 'UML', FALSE),

-- Questão 06 | Correta: B
(ID_Q6, 'Um documento sem finalidade acadêmica', FALSE),
(ID_Q6, 'Um trabalho desenvolvido para demonstrar conhecimentos adquiridos no curso', TRUE),
(ID_Q6, 'Um relatório exclusivamente financeiro', FALSE),
(ID_Q6, 'Um manual de instalação de software', FALSE),

-- Questão 07 | Correta: A
(ID_Q7, 'Apresentar o tema e contextualizar o trabalho', TRUE),
(ID_Q7, 'Apresentar somente os resultados', FALSE),
(ID_Q7, 'Mostrar apenas as referências', FALSE),
(ID_Q7, 'Listar os erros do projeto', FALSE),

-- Questão 08 | Correta: B
(ID_Q8, 'O conjunto de resultados obtidos', FALSE),
(ID_Q8, 'O assunto principal que será estudado', TRUE),
(ID_Q8, 'A lista de referências', FALSE),
(ID_Q8, 'O cronograma do projeto', FALSE),

-- Questão 09 | Correta: A
(ID_Q9, 'Problema de pesquisa', TRUE),
(ID_Q9, 'Sumário', FALSE),
(ID_Q9, 'Capa', FALSE),
(ID_Q9, 'Referências', FALSE),

-- Questão 10 | Correta: A
(ID_Q10, 'Organizar as atividades ao longo do tempo', TRUE),
(ID_Q10, 'Apresentar somente os resultados', FALSE),
(ID_Q10, 'Definir a bibliografia', FALSE),
(ID_Q10, 'Representar a distribuição de frequências', FALSE),

-- Questão 11 | Correta: A
(ID_Q11, 'Referências', TRUE),
(ID_Q11, 'Introdução', FALSE),
(ID_Q11, 'Objetivos', FALSE),
(ID_Q11, 'Metodologia', FALSE),

-- Questão 12 | Correta: A
(ID_Q12, 'Uma possível resposta ou explicação para um problema de pesquisa', TRUE),
(ID_Q12, 'Uma lista de livros', FALSE),
(ID_Q12, 'Uma ferramenta gráfica', FALSE),
(ID_Q12, 'Um tipo de cronograma', FALSE),

-- Questão 13 | Correta: A
(ID_Q13, 'Metodologia', TRUE),
(ID_Q13, 'Conclusão', FALSE),
(ID_Q13, 'Capa', FALSE),
(ID_Q13, 'Referências', FALSE),

-- Questão 14 | Correta: A
(ID_Q14, 'Pesquisa baseada em livros, artigos e outras publicações', TRUE),
(ID_Q14, 'Pesquisa realizada apenas por entrevistas', FALSE),
(ID_Q14, 'Pesquisa realizada somente em laboratórios', FALSE),
(ID_Q14, 'Pesquisa baseada apenas em gráficos', FALSE),

-- Questão 15 | Correta: B
(ID_Q15, 'Possui informações sem autoria', FALSE),
(ID_Q15, 'Apresenta informações fundamentadas e verificáveis', TRUE),
(ID_Q15, 'Não possui referências', FALSE),
(ID_Q15, 'É sempre publicada em redes sociais', FALSE),

-- Questão 16 | Correta: A
(ID_Q16, 'Capa', TRUE),
(ID_Q16, 'Conclusão', FALSE),
(ID_Q16, 'Análise de dados', FALSE),
(ID_Q16, 'Apêndice', FALSE),

-- Questão 17 | Correta: A
(ID_Q17, 'Resultados que o trabalho pretende alcançar', TRUE),
(ID_Q17, 'Apenas as referências utilizadas', FALSE),
(ID_Q17, 'As dificuldades encontradas pelo pesquisador', FALSE),
(ID_Q17, 'Os gráficos da pesquisa', FALSE),

-- Questão 18 | Correta: A
(ID_Q18, 'Questionário', TRUE),
(ID_Q18, 'Histograma', FALSE),
(ID_Q18, 'Fluxograma', FALSE),
(ID_Q18, 'Cronograma', FALSE),

-- Questão 19 | Correta: A
(ID_Q19, 'Buscar informações de maneira organizada para responder a uma questão', TRUE),
(ID_Q19, 'Copiar informações da internet', FALSE),
(ID_Q19, 'Criar somente gráficos', FALSE),
(ID_Q19, 'Elaborar apenas um cronograma', FALSE),

-- Questão 20 | Correta: B
(ID_Q20, 'Introdução', FALSE),
(ID_Q20, 'Conclusão', TRUE),
(ID_Q20, 'Referencial teórico', FALSE),
(ID_Q20, 'Capa', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE DTCC
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
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;