-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Planejamento do TCC - Módulo 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina de Planejamento do TCC
SET @quiz_ptcc_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Planejamento do Trabalho de Conclusão de Curso'
        AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- PTCC | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_ptcc_id, 'Qual é o objetivo principal do planejamento de um TCC?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é o tema de um TCC?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual elemento expressa a questão que a pesquisa pretende responder?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Para que serve a justificativa de um projeto?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que caracteriza um objetivo geral?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual é a função dos objetivos específicos?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é um cronograma de projeto?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual é a finalidade de uma pesquisa bibliográfica?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que significa delimitar o tema?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual documento descreve o planejamento inicial do TCC?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Quem costuma acompanhar e orientar o desenvolvimento acadêmico do TCC?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual é a função de uma referência bibliográfica?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é uma metodologia de pesquisa?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é um requisito funcional de um sistema?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual exemplo representa um requisito não funcional?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Por que registrar as reuniões de levantamento de requisitos?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é um protótipo de interface?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Qual é a utilidade de um diagrama de casos de uso?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'O que é uma entrega ou marco do cronograma?', 'FACIL', 5, 15),
(@quiz_ptcc_id, 'Por que é importante definir responsabilidades na equipe?', 'FACIL', 5, 15);

-- ============================================================
-- PTCC | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | Correta: C
(ID_Q1, 'Garantir que não haverá alterações no projeto', FALSE),
(ID_Q1, 'Eliminar a necessidade de orientação', FALSE),
(ID_Q1, 'Organizar as etapas necessárias para desenvolver o trabalho', TRUE),
(ID_Q1, 'Substituir a pesquisa por opiniões pessoais', FALSE),

-- Questão 02 | Correta: D
(ID_Q2, 'A lista de referências consultadas', FALSE),
(ID_Q2, 'A conclusão definitiva da pesquisa', FALSE),
(ID_Q2, 'O calendário de apresentações', FALSE),
(ID_Q2, 'O assunto geral que será investigado', TRUE),

-- Questão 03 | Correta: A
(ID_Q3, 'Problema de pesquisa', TRUE),
(ID_Q3, 'Lista de figuras', FALSE),
(ID_Q3, 'Capa', FALSE),
(ID_Q3, 'Sumário', FALSE),

-- Questão 04 | Correta: B
(ID_Q4, 'Listar somente os integrantes da equipe', FALSE),
(ID_Q4, 'Explicar a relevância e os motivos da pesquisa', TRUE),
(ID_Q4, 'Apresentar os resultados já comprovados', FALSE),
(ID_Q4, 'Substituir os objetivos específicos', FALSE),

-- Questão 05 | Correta: C
(ID_Q5, 'Apresentar a bibliografia em ordem alfabética', FALSE),
(ID_Q5, 'Registrar todas as reuniões realizadas', FALSE),
(ID_Q5, 'Expressar o propósito central do trabalho', TRUE),
(ID_Q5, 'Descrever cada tarefa diária da equipe', FALSE),

-- Questão 06 | Correta: D
(ID_Q6, 'Repetir o título do trabalho', FALSE),
(ID_Q6, 'Informar apenas a data de entrega', FALSE),
(ID_Q6, 'Substituir a análise dos resultados', FALSE),
(ID_Q6, 'Detalhar etapas que contribuem para o objetivo geral', TRUE),

-- Questão 07 | Correta: A
(ID_Q7, 'Uma distribuição de atividades ao longo do tempo', TRUE),
(ID_Q7, 'Uma relação de custos sem datas', FALSE),
(ID_Q7, 'Uma lista de equipamentos defeituosos', FALSE),
(ID_Q7, 'Um resumo das conclusões', FALSE),

-- Questão 08 | Correta: B
(ID_Q8, 'Testar a interface diretamente com clientes', FALSE),
(ID_Q8, 'Consultar e analisar publicações pertinentes ao tema', TRUE),
(ID_Q8, 'Entrevistar exclusivamente usuários do sistema', FALSE),
(ID_Q8, 'Desenvolver o código-fonte sem planejamento', FALSE),

-- Questão 09 | Correta: C
(ID_Q9, 'Retirar todas as restrições do projeto', FALSE),
(ID_Q9, 'Decidir antecipadamente os resultados', FALSE),
(ID_Q9, 'Definir um recorte viável e específico do assunto', TRUE),
(ID_Q9, 'Escolher um tema cada vez mais abrangente', FALSE),

-- Questão 10 | Correta: D
(ID_Q10, 'Manual de instalação do sistema', FALSE),
(ID_Q10, 'Termo de encerramento do projeto', FALSE),
(ID_Q10, 'Relatório de testes finais', FALSE),
(ID_Q10, 'Pré-projeto de pesquisa', TRUE),

-- Questão 11 | Correta: A
(ID_Q11, 'Professor orientador', TRUE),
(ID_Q11, 'Somente o fornecedor de equipamentos', FALSE),
(ID_Q11, 'Exclusivamente o usuário final', FALSE),
(ID_Q11, 'Apenas o responsável financeiro', FALSE),

-- Questão 12 | Correta: B
(ID_Q12, 'Registrar senhas do projeto', FALSE),
(ID_Q12, 'Identificar as fontes utilizadas no trabalho', TRUE),
(ID_Q12, 'Substituir a autoria do texto', FALSE),
(ID_Q12, 'Garantir que toda fonte esteja correta', FALSE),

-- Questão 13 | Correta: C
(ID_Q13, 'Somente a lista de anexos', FALSE),
(ID_Q13, 'O resultado final do software', FALSE),
(ID_Q13, 'Conjunto de procedimentos para conduzir a investigação', TRUE),
(ID_Q13, 'Apenas a escolha da fonte tipográfica', FALSE),

-- Questão 14 | Correta: D
(ID_Q14, 'Uma estimativa de preço do servidor', FALSE),
(ID_Q14, 'Uma regra de formatação do relatório', FALSE),
(ID_Q14, 'Um prazo para apresentação oral', FALSE),
(ID_Q14, 'Uma funcionalidade que o sistema deve oferecer', TRUE),

-- Questão 15 | Correta: A
(ID_Q15, 'O sistema deve responder às consultas em até dois segundos', TRUE),
(ID_Q15, 'O aluno pode cadastrar uma pergunta', FALSE),
(ID_Q15, 'O professor pode criar um quiz', FALSE),
(ID_Q15, 'O usuário pode recuperar sua senha', FALSE),

-- Questão 16 | Correta: B
(ID_Q16, 'Para substituir o desenvolvimento do sistema', FALSE),
(ID_Q16, 'Para preservar decisões e pendências discutidas', TRUE),
(ID_Q16, 'Para dispensar validações posteriores', FALSE),
(ID_Q16, 'Para impedir qualquer mudança no projeto', FALSE),

-- Questão 17 | Correta: C
(ID_Q17, 'Um relatório de despesas da equipe', FALSE),
(ID_Q17, 'Uma cópia integral do código de produção', FALSE),
(ID_Q17, 'Uma representação preliminar das telas e interações', TRUE),
(ID_Q17, 'Um banco de dados obrigatoriamente concluído', FALSE),

-- Questão 18 | Correta: D
(ID_Q18, 'Mostrar a temperatura do servidor', FALSE),
(ID_Q18, 'Calcular o consumo de memória RAM', FALSE),
(ID_Q18, 'Descrever exclusivamente o esquema de cores', FALSE),
(ID_Q18, 'Representar interações entre atores e funcionalidades', TRUE),

-- Questão 19 | Correta: A
(ID_Q19, 'Um ponto relevante de conclusão ou verificação', TRUE),
(ID_Q19, 'Uma alteração aleatória sem registro', FALSE),
(ID_Q19, 'Uma tarefa que nunca termina', FALSE),
(ID_Q19, 'Uma despesa não planejada', FALSE),

-- Questão 20 | Correta: B
(ID_Q20, 'Para garantir que todos façam a mesma tarefa', FALSE),
(ID_Q20, 'Para deixar claro quem conduz cada atividade', TRUE),
(ID_Q20, 'Para impedir a comunicação entre integrantes', FALSE),
(ID_Q20, 'Para eliminar a necessidade de testes', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE PTCC
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
WHERE q.quiz_id = @quiz_ptcc_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
