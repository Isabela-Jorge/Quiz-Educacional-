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
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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
-- DESENVOLVIMENTO DO TCC | QUESTOES 21 A 40 | NIVEL MEDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc3_id, 'Qual etapa organiza os dados em tabelas para facilitar a análise?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que consiste em atribuir códigos aos dados coletados?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual fase busca dar significado aos resultados obtidos?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual análise verifica se um projeto pode ser realizado com os recursos tecnológicos disponíveis?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'No gerenciamento de projetos, quais elementos compõem o Triângulo da Gestão de Projetos?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que é a metodologia de pesquisa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual pesquisa utiliza entrevistas, questionários ou observações para obter informações?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual é a função do objetivo geral de uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Para que servem os objetivos específicos?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que é uma variável em uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual ferramenta pode representar a sequência de atividades de um projeto?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que é levantamento bibliográfico?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual é a finalidade da análise de viabilidade econômica?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que caracteriza uma pesquisa qualitativa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que caracteriza uma pesquisa quantitativa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual é a função de um gráfico em uma pesquisa?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que deve ser feito antes da análise dos dados coletados?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'Qual é a função de um requisito em um projeto de software?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que é um requisito funcional?', 'MEDIO', 10, 15),
(@quiz_tcc3_id, 'O que é um requisito não funcional?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- DESENVOLVIMENTO DO TCC | ALTERNATIVAS DAS QUESTOES 21 A 40 
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 1170 | GABARITO C
(1170, 'Codificação', FALSE),
(1170, 'Seleção', FALSE),
(1170, 'Tabulação', TRUE),
(1170, 'Interpretação', FALSE),

-- QUESTAO 22 | ID 1171 | GABARITO A
(1171, 'Codificação', TRUE),
(1171, 'Especificação', FALSE),
(1171, 'Interpretação', FALSE),
(1171, 'Compilação', FALSE),

-- QUESTAO 23 | ID 1172 | GABARITO B
(1172, 'Seleção', FALSE),
(1172, 'Interpretação', TRUE),
(1172, 'Cronograma', FALSE),
(1172, 'Simbologia', FALSE),

-- QUESTAO 24 | ID 1173 | GABARITO C
(1173, 'Social', FALSE),
(1173, 'Econômica', FALSE),
(1173, 'Técnica', TRUE),
(1173, 'Ambiental', FALSE),

-- QUESTAO 25 | ID 1174 | GABARITO A
(1174, 'Escopo, custo e tempo', TRUE),
(1174, 'Objetivo, hipótese e método', FALSE),
(1174, 'Qualidade, relatório e gráfico', FALSE),
(1174, 'Recurso, produção e análise', FALSE),

-- QUESTAO 26 | ID 1175 | GABARITO A
(1175, 'O conjunto de métodos e procedimentos utilizados na pesquisa', TRUE),
(1175, 'A lista de resultados finais', FALSE),
(1175, 'A capa do trabalho', FALSE),
(1175, 'A lista de palavras-chave', FALSE),

-- QUESTAO 27 | ID 1176 | GABARITO A
(1176, 'Pesquisa de campo', TRUE),
(1176, 'Pesquisa bibliográfica', FALSE),
(1176, 'Pesquisa documental exclusivamente', FALSE),
(1176, 'Pesquisa histórica exclusivamente', FALSE),

-- QUESTAO 28 | ID 1177 | GABARITO A
(1177, 'Apresentar a finalidade principal do estudo', TRUE),
(1177, 'Apresentar todas as referências', FALSE),
(1177, 'Descrever apenas os custos', FALSE),
(1177, 'Mostrar somente os gráficos', FALSE),

-- QUESTAO 29 | ID 1178 | GABARITO A
(1178, 'Detalhar ações necessárias para alcançar o objetivo geral', TRUE),
(1178, 'Substituir a conclusão', FALSE),
(1178, 'Apresentar somente os resultados financeiros', FALSE),
(1178, 'Formatar o documento', FALSE),

-- QUESTAO 30 | ID 1179 | GABARITO A
(1179, 'Uma característica que pode assumir diferentes valores', TRUE),
(1179, 'Uma referência bibliográfica', FALSE),
(1179, 'Um tipo de gráfico', FALSE),
(1179, 'Uma parte da capa', FALSE),

-- QUESTAO 31 | ID 1180 | GABARITO A
(1180, 'Fluxograma', TRUE),
(1180, 'Bibliografia', FALSE),
(1180, 'Questionário', FALSE),
(1180, 'Referencial teórico', FALSE),

-- QUESTAO 32 | ID 1181 | GABARITO A
(1181, 'Busca e seleção de materiais relacionados ao tema pesquisado', TRUE),
(1181, 'Criação de um banco de dados', FALSE),
(1181, 'Desenvolvimento de um aplicativo', FALSE),
(1181, 'Criação de um cronograma financeiro', FALSE),

-- QUESTAO 33 | ID 1182 | GABARITO A
(1182, 'Verificar se o projeto é financeiramente possível', TRUE),
(1182, 'Avaliar apenas os impactos sociais', FALSE),
(1182, 'Escolher a fonte bibliográfica', FALSE),
(1182, 'Definir a capa do TCC', FALSE),

-- QUESTAO 34 | ID 1183 | GABARITO A
(1183, 'Busca compreender características, opiniões e significados', TRUE),
(1183, 'Trabalha somente com cálculos matemáticos', FALSE),
(1183, 'Utiliza exclusivamente porcentagens', FALSE),
(1183, 'Não utiliza coleta de dados', FALSE),

-- QUESTAO 35 | ID 1184 | GABARITO A
(1184, 'Trabalha principalmente com dados mensuráveis e números', TRUE),
(1184, 'Trabalha apenas com opiniões', FALSE),
(1184, 'Não utiliza tabelas', FALSE),
(1184, 'Não permite análise estatística', FALSE),

-- QUESTAO 36 | ID 1185 | GABARITO A
(1185, 'Facilitar a visualização e compreensão dos dados', TRUE),
(1185, 'Substituir obrigatoriamente a metodologia', FALSE),
(1185, 'Apresentar apenas referências', FALSE),
(1185, 'Definir os objetivos', FALSE),

-- QUESTAO 37 | ID 1186 | GABARITO A
(1186, 'Organizar e preparar os dados', TRUE),
(1186, 'Apagar os dados', FALSE),
(1186, 'Ignorar informações incompletas sem avaliação', FALSE),
(1186, 'Elaborar somente a capa', FALSE),

-- QUESTAO 38 | ID 1187 | GABARITO A
(1187, 'Descrever uma necessidade ou condição que o sistema deve atender', TRUE),
(1187, 'Definir somente a aparência da capa', FALSE),
(1187, 'Apresentar as referências do TCC', FALSE),
(1187, 'Organizar o cronograma acadêmico', FALSE),

-- QUESTAO 39 | ID 1188 | GABARITO A
(1188, 'Uma função ou comportamento que o sistema deve executar', TRUE),
(1188, 'Uma regra de formatação do TCC', FALSE),
(1188, 'Um requisito relacionado somente ao custo', FALSE),
(1188, 'Uma referência bibliográfica', FALSE),

-- QUESTAO 40 | ID 1189 | GABARITO A
(1189, 'Uma característica relacionada à qualidade, desempenho, segurança ou usabilidade do sistema', TRUE),
(1189, 'Uma função obrigatoriamente executada pelo usuário', FALSE),
(1189, 'Um objetivo específico da pesquisa', FALSE),
(1189, 'Uma fonte científica', FALSE);

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
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
