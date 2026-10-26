-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Desenvolvimento do TCC - Módulo 3
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- =================================

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
-- DTCC | Questões 21 a 40 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_dtcc_id, 'Qual etapa organiza os dados em tabelas para facilitar a análise?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que consiste em atribuir códigos aos dados coletados?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual fase busca dar significado aos resultados obtidos?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual análise verifica se um projeto pode ser realizado com os recursos tecnológicos disponíveis?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'No gerenciamento de projetos, quais elementos compõem o Triângulo da Gestão de Projetos?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que é a metodologia de pesquisa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual pesquisa utiliza entrevistas, questionários ou observações para obter informações?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual é a função do objetivo geral de uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Para que servem os objetivos específicos?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que é uma variável em uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual ferramenta pode representar a sequência de atividades de um projeto?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que é levantamento bibliográfico?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual é a finalidade da análise de viabilidade econômica?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que caracteriza uma pesquisa qualitativa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que caracteriza uma pesquisa quantitativa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual é a função de um gráfico em uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que deve ser feito antes da análise dos dados coletados?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'Qual é a função de um requisito em um projeto de software?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que é um requisito funcional?', 'MEDIO', 10, 15),
(@quiz_dtcc_id, 'O que é um requisito não funcional?', 'MEDIO', 10, 15);

-- ============================================================
-- DTCC | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | Correta: C
(ID_Q21, 'Codificação', FALSE),
(ID_Q21, 'Seleção', FALSE),
(ID_Q21, 'Tabulação', TRUE),
(ID_Q21, 'Interpretação', FALSE),

-- Questão 22 | Correta: A
(ID_Q22, 'Codificação', TRUE),
(ID_Q22, 'Especificação', FALSE),
(ID_Q22, 'Interpretação', FALSE),
(ID_Q22, 'Compilação', FALSE),

-- Questão 23 | Correta: B
(ID_Q23, 'Seleção', FALSE),
(ID_Q23, 'Interpretação', TRUE),
(ID_Q23, 'Cronograma', FALSE),
(ID_Q23, 'Simbologia', FALSE),

-- Questão 24 | Correta: C
(ID_Q24, 'Social', FALSE),
(ID_Q24, 'Econômica', FALSE),
(ID_Q24, 'Técnica', TRUE),
(ID_Q24, 'Ambiental', FALSE),

-- Questão 25 | Correta: A
(ID_Q25, 'Escopo, custo e tempo', TRUE),
(ID_Q25, 'Objetivo, hipótese e método', FALSE),
(ID_Q25, 'Qualidade, relatório e gráfico', FALSE),
(ID_Q25, 'Recurso, produção e análise', FALSE),

-- Questão 26 | Correta: A
(ID_Q26, 'O conjunto de métodos e procedimentos utilizados na pesquisa', TRUE),
(ID_Q26, 'A lista de resultados finais', FALSE),
(ID_Q26, 'A capa do trabalho', FALSE),
(ID_Q26, 'A lista de palavras-chave', FALSE),

-- Questão 27 | Correta: A
(ID_Q27, 'Pesquisa de campo', TRUE),
(ID_Q27, 'Pesquisa bibliográfica', FALSE),
(ID_Q27, 'Pesquisa documental exclusivamente', FALSE),
(ID_Q27, 'Pesquisa histórica exclusivamente', FALSE),

-- Questão 28 | Correta: A
(ID_Q28, 'Apresentar a finalidade principal do estudo', TRUE),
(ID_Q28, 'Apresentar todas as referências', FALSE),
(ID_Q28, 'Descrever apenas os custos', FALSE),
(ID_Q28, 'Mostrar somente os gráficos', FALSE),

-- Questão 29 | Correta: A
(ID_Q29, 'Detalhar ações necessárias para alcançar o objetivo geral', TRUE),
(ID_Q29, 'Substituir a conclusão', FALSE),
(ID_Q29, 'Apresentar somente os resultados financeiros', FALSE),
(ID_Q29, 'Formatar o documento', FALSE),

-- Questão 30 | Correta: A
(ID_Q30, 'Uma característica que pode assumir diferentes valores', TRUE),
(ID_Q30, 'Uma referência bibliográfica', FALSE),
(ID_Q30, 'Um tipo de gráfico', FALSE),
(ID_Q30, 'Uma parte da capa', FALSE),

-- Questão 31 | Correta: A
(ID_Q31, 'Fluxograma', TRUE),
(ID_Q31, 'Bibliografia', FALSE),
(ID_Q31, 'Questionário', FALSE),
(ID_Q31, 'Referencial teórico', FALSE),

-- Questão 32 | Correta: A
(ID_Q32, 'Busca e seleção de materiais relacionados ao tema pesquisado', TRUE),
(ID_Q32, 'Criação de um banco de dados', FALSE),
(ID_Q32, 'Desenvolvimento de um aplicativo', FALSE),
(ID_Q32, 'Criação de um cronograma financeiro', FALSE),

-- Questão 33 | Correta: A
(ID_Q33, 'Verificar se o projeto é financeiramente possível', TRUE),
(ID_Q33, 'Avaliar apenas os impactos sociais', FALSE),
(ID_Q33, 'Escolher a fonte bibliográfica', FALSE),
(ID_Q33, 'Definir a capa do TCC', FALSE),

-- Questão 34 | Correta: A
(ID_Q34, 'Busca compreender características, opiniões e significados', TRUE),
(ID_Q34, 'Trabalha somente com cálculos matemáticos', FALSE),
(ID_Q34, 'Utiliza exclusivamente porcentagens', FALSE),
(ID_Q34, 'Não utiliza coleta de dados', FALSE),

-- Questão 35 | Correta: A[cite: 86]
(ID_Q35, 'Trabalha principalmente com dados mensuráveis e números', TRUE),
(ID_Q35, 'Trabalha apenas com opiniões', FALSE),
(ID_Q35, 'Não utiliza tabelas', FALSE),
(ID_Q35, 'Não permite análise estatística', FALSE),

-- Questão 36 | Correta: A[cite: 86]
(ID_Q36, 'Facilitar a visualização e compreensão dos dados', TRUE),
(ID_Q36, 'Substituir obrigatoriamente a metodologia', FALSE),
(ID_Q36, 'Apresentar apenas referências', FALSE),
(ID_Q36, 'Definir os objetivos', FALSE),

-- Questão 37 | Correta: A[cite: 86]
(ID_Q37, 'Organizar e preparar os dados', TRUE),
(ID_Q37, 'Apagar os dados', FALSE),
(ID_Q37, 'Ignorar informações incompletas sem avaliação', FALSE),
(ID_Q37, 'Elaborar somente a capa', FALSE),

-- Questão 38 | Correta: A[cite: 86]
(ID_Q38, 'Descrever uma necessidade ou condição que o sistema deve atender', TRUE),
(ID_Q38, 'Definir somente a aparência da capa', FALSE),
(ID_Q38, 'Apresentar as referências do TCC', FALSE),
(ID_Q38, 'Organizar o cronograma acadêmico', FALSE),

-- Questão 39 | Correta: A[cite: 86]
(ID_Q39, 'Uma função ou comportamento que o sistema deve executar', TRUE),
(ID_Q39, 'Uma regra de formatação do TCC', FALSE),
(ID_Q39, 'Um requisito relacionado somente ao custo', FALSE),
(ID_Q39, 'Uma referência bibliográfica', FALSE),

-- Questão 40 | Correta: A[cite: 86]
(ID_Q40, 'Uma característica relacionada à qualidade, desempenho, segurança ou usabilidade do sistema', TRUE),
(ID_Q40, 'Uma função obrigatoriamente executada pelo usuário', FALSE),
(ID_Q40, 'Um objetivo específico da pesquisa', FALSE),
(ID_Q40, 'Uma fonte científica', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE DTCC
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;