-- ======================================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ======================================================================

-- ======================================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Planejamento do Trabalho de Conclusao de Curso - MODULO: 2
-- DIFICULDADE: FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- =======================================================================

USE quiz_ds_db;

-- Identificar o quiz de Planejamento do TCC
SET @quiz_tcc_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.id = 23
      AND d.modulo = 2
    LIMIT 1
);

-- ================================================================================
-- PLANEJAMENTO DO TRABALHO DE CONCLUSAO DE CURSO | QUESTOES 01 A 20 | NIVEL FACIL
-- ================================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc_id, 'Qual é o objetivo principal do planejamento de um TCC?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é o tema de um TCC?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual elemento expressa a questão que a pesquisa pretende responder?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Para que serve a justificativa de um projeto?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que caracteriza um objetivo geral?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual é a função dos objetivos específicos?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é um cronograma de projeto?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual é a finalidade de uma pesquisa bibliográfica?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que significa delimitar o tema?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual documento descreve o planejamento inicial do TCC?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Quem costuma acompanhar e orientar o desenvolvimento acadêmico do TCC?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual é a função de uma referência bibliográfica?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é uma metodologia de pesquisa?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é um requisito funcional de um sistema?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual exemplo representa um requisito não funcional?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Por que registrar as reuniões de levantamento de requisitos?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é um protótipo de interface?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Qual é a utilidade de um diagrama de casos de uso?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'O que é uma entrega ou marco do cronograma?', 'FACIL', 5, 15),
(@quiz_tcc_id, 'Por que é importante definir responsabilidades na equipe?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_tcc_id
  AND dificuldade = 'FACIL'
ORDER BY id;


-- ====================================================================================
-- PLANEJAMENTO DO TRABALHO DE CONCLUSÃO DE CURSO | ALTERNATIVAS DAS QUESTOES 01 A 20
-- ====================================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 730 | GABARITO C
(730, 'Garantir que não haverá alterações no projeto', FALSE),
(730, 'Eliminar a necessidade de orientação', FALSE),
(730, 'Organizar as etapas necessárias para desenvolver o trabalho', TRUE),
(730, 'Substituir a pesquisa por opiniões pessoais', FALSE),

-- QUESTAO 02 | ID 731 | GABARITO D
(731, 'A lista de referências consultadas', FALSE),
(731, 'A conclusão definitiva da pesquisa', FALSE),
(731, 'O calendário de apresentações', FALSE),
(731, 'O assunto geral que será investigado', TRUE),

-- QUESTAO 03 | ID 732 | GABARITO A
(732, 'Problema de pesquisa', TRUE),
(732, 'Lista de figuras', FALSE),
(732, 'Capa', FALSE),
(732, 'Sumário', FALSE),

-- QUESTAO 04 | ID 733 | GABARITO B
(733, 'Listar somente os integrantes da equipe', FALSE),
(733, 'Explicar a relevância e os motivos da pesquisa', TRUE),
(733, 'Apresentar os resultados já comprovados', FALSE),
(733, 'Substituir os objetivos específicos', FALSE),

-- QUESTAO 05 | ID 734 | GABARITO C
(734, 'Apresentar a bibliografia em ordem alfabética', FALSE),
(734, 'Registrar todas as reuniões realizadas', FALSE),
(734, 'Expressar o propósito central do trabalho', TRUE),
(734, 'Descrever cada tarefa diária da equipe', FALSE),

-- QUESTAO 06 | ID 735 | GABARITO D
(735, 'Repetir o título do trabalho', FALSE),
(735, 'Informar apenas a data de entrega', FALSE),
(735, 'Substituir a análise dos resultados', FALSE),
(735, 'Detalhar etapas que contribuem para o objetivo geral', TRUE),

-- QUESTAO 07 | ID 736 | GABARITO A
(736, 'Uma distribuição de atividades ao longo do tempo', TRUE),
(736, 'Uma relação de custos sem datas', FALSE),
(736, 'Uma lista de equipamentos defeituosos', FALSE),
(736, 'Um resumo das conclusões', FALSE),

-- QUESTAO 08 | ID 737 | GABARITO B
(737, 'Testar a interface diretamente com clientes', FALSE),
(737, 'Consultar e analisar publicações pertinentes ao tema', TRUE),
(737, 'Entrevistar exclusivamente usuários do sistema', FALSE),
(737, 'Desenvolver o código-fonte sem planejamento', FALSE),

-- QUESTAO 09 | ID 738 | GABARITO C
(738, 'Retirar todas as restrições do projeto', FALSE),
(738, 'Decidir antecipadamente os resultados', FALSE),
(738, 'Definir um recorte viável e específico do assunto', TRUE),
(738, 'Escolher um tema cada vez mais abrangente', FALSE),

-- QUESTAO 10 | ID 739 | GABARITO D
(739, 'Manual de instalação do sistema', FALSE),
(739, 'Termo de encerramento do projeto', FALSE),
(739, 'Relatório de testes finais', FALSE),
(739, 'Pré-projeto de pesquisa', TRUE),

-- QUESTAO 11 | ID 740 | GABARITO A
(740, 'Professor orientador', TRUE),
(740, 'Somente o fornecedor de equipamentos', FALSE),
(740, 'Exclusivamente o usuário final', FALSE),
(740, 'Apenas o responsável financeiro', FALSE),

-- QUESTAO 12 | ID 741 | GABARITO B
(741, 'Registrar senhas do projeto', FALSE),
(741, 'Identificar as fontes utilizadas no trabalho', TRUE),
(741, 'Substituir a autoria do texto', FALSE),
(741, 'Garantir que toda fonte esteja correta', FALSE),

-- QUESTAO 13 | ID 742 | GABARITO C
(742, 'Somente a lista de anexos', FALSE),
(742, 'O resultado final do software', FALSE),
(742, 'Conjunto de procedimentos para conduzir a investigação', TRUE),
(742, 'Apenas a escolha da fonte tipográfica', FALSE),

-- QUESTAO 14 | ID 743 | GABARITO D
(743, 'Uma estimativa de preço do servidor', FALSE),
(743, 'Uma regra de formatação do relatório', FALSE),
(743, 'Um prazo para apresentação oral', FALSE),
(743, 'Uma funcionalidade que o sistema deve oferecer', TRUE),

-- QUESTAO 15 | ID 744 | GABARITO A
(744, 'O sistema deve responder às consultas em até dois segundos', TRUE),
(744, 'O aluno pode cadastrar uma pergunta', FALSE),
(744, 'O professor pode criar um quiz', FALSE),
(744, 'O usuário pode recuperar sua senha', FALSE),

-- QUESTAO 16 | ID 745 | GABARITO B
(745, 'Para substituir o desenvolvimento do sistema', FALSE),
(745, 'Para preservar decisões e pendências discutidas', TRUE),
(745, 'Para dispensar validações posteriores', FALSE),
(745, 'Para impedir qualquer mudança no projeto', FALSE),

-- QUESTAO 17 | ID 746 | GABARITO C
(746, 'Um relatório de despesas da equipe', FALSE),
(746, 'Uma cópia integral do código de produção', FALSE),
(746, 'Uma representação preliminar das telas e interações', TRUE),
(746, 'Um banco de dados obrigatoriamente concluído', FALSE),

-- QUESTAO 18 | ID 747 | GABARITO D
(747, 'Mostrar a temperatura do servidor', FALSE),
(747, 'Calcular o consumo de memória RAM', FALSE),
(747, 'Descrever exclusivamente o esquema de cores', FALSE),
(747, 'Representar interações entre atores e funcionalidades', TRUE),

-- QUESTAO 19 | ID 748 | GABARITO A
(748, 'Um ponto relevante de conclusão ou verificação', TRUE),
(748, 'Uma alteração aleatória sem registro', FALSE),
(748, 'Uma tarefa que nunca termina', FALSE),
(748, 'Uma despesa não planejada', FALSE),

-- QUESTAO 20 | ID 749 | GABARITO B
(749, 'Para garantir que todos façam a mesma tarefa', FALSE),
(749, 'Para deixar claro quem conduz cada atividade', TRUE),
(749, 'Para impedir a comunicação entre integrantes', FALSE),
(749, 'Para eliminar a necessidade de testes', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS
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

WHERE q.quiz_id = 18
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;

