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
-- DISCIPLINA: Planejamento do Trabalho de Conclusao de Curso - MODULO: 2
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

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

-- ===================================================================================
-- PLANEJAMENTO DO TRABALHO DE CONCLUSAO DE CURSO | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ===================================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc_id, 'Uma equipe tem seis semanas e funcionalidades demais. Qual abordagem reduz o risco de não entregar?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual é a principal limitação de usar apenas entrevistas com um gestor no levantamento de requisitos?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Em um projeto com dependências, o atraso de uma tarefa crítica tende a causar qual efeito?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Um objetivo diz: Desenvolver um sistema melhor. Qual revisão é metodologicamente superior?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Por que não se deve confundir correlação com causalidade em uma pesquisa?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual medida fortalece a validade de uma conclusão sobre necessidades dos usuários?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Ao selecionar uma solução tecnológica, qual critério é mais defensável academicamente?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Um cronograma apresenta tarefas com duração estimada, mas sem responsáveis. Qual risco isso cria?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual relação entre problema, objetivos e resultados torna o TCC coerente?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Uma pesquisa de campo coleta nomes e contatos dos participantes. Qual prática é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Como lidar com requisitos contraditórios informados por setores diferentes?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'O que torna um plano de testes coerente com o planejamento do TCC?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual evidência permite avaliar a eficácia de um sistema proposto para reduzir retrabalho?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Quando uma hipótese não é confirmada pelos dados, qual atitude científica é adequada?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Uma equipe quer usar um questionário com perguntas tendenciosas. Qual problema metodológico isso pode causar?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual é a vantagem de manter histórico de decisões de arquitetura no TCC?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Ao estimar esforço, por que considerar incertezas e dependências?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Qual abordagem é adequada quando o cliente pede uma funcionalidade fora do objetivo do TCC?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Como avaliar se um requisito não funcional de desempenho foi atendido?', 'DIFICIL', 15, 15),
(@quiz_tcc_id, 'Por que uma análise de limitações é importante na conclusão do TCC?', 'DIFICIL', 15, 15);

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ====================================================================================
-- PLANEJAMENTO DO TRABALHO DE CONCLUSÃO DE CURSO | ALTERNATIVAS DAS QUESTOES 41 A 60 
-- ====================================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 770 | GABARITO C
(770, 'Eliminar a fase de testes sem avaliação', FALSE),
(770, 'Prometer todas as funcionalidades sem estimativa', FALSE),
(770, 'Priorizar um conjunto mínimo de funcionalidades essenciais e validáveis', TRUE),
(770, 'Começar simultaneamente todas as funcionalidades', FALSE),

-- QUESTAO 42 | ID 771 | GABARITO D
(771, 'Entrevistas não podem gerar requisitos funcionais', FALSE),
(771, 'Um gestor nunca conhece processos internos', FALSE),
(771, 'A técnica dispensa validação posterior', FALSE),
(771, 'Outros perfis de usuários podem ter necessidades não identificadas', TRUE),

-- QUESTAO 43 | ID 772 | GABARITO A
(772, 'Pode atrasar a conclusão se não houver folga ou recuperação', TRUE),
(772, 'Reduz automaticamente o esforço das demais tarefas', FALSE),
(772, 'Melhora a qualidade do produto por definição', FALSE),
(772, 'Elimina a necessidade de atualizar o cronograma', FALSE),

-- QUESTAO 44 | ID 773 | GABARITO B
(773, 'Acrescentar mais adjetivos sem indicadores', FALSE),
(773, 'Especificar funcionalidades e critérios verificáveis de melhoria', TRUE),
(773, 'Trocar melhor por excelente sem definir métricas', FALSE),
(773, 'Remover o objetivo geral', FALSE),

-- QUESTAO 45 | ID 774 | GABARITO C
(774, 'A causalidade independe de qualquer evidência', FALSE),
(774, 'A correlação só existe em pesquisas qualitativas', FALSE),
(774, 'Duas variáveis associadas não demonstram, por si só, causa e efeito', TRUE),
(774, 'Toda correlação comprova uma causa única', FALSE),

-- QUESTAO 46 | ID 775 | GABARITO D
(775, 'Utilizar apenas a primeira resposta recebida', FALSE),
(775, 'Excluir dados que contradizem a hipótese', FALSE),
(775, 'Evitar registrar como os dados foram obtidos', FALSE),
(775, 'Triangular entrevistas, observações e documentos do processo', TRUE),

-- QUESTAO 47 | ID 776 | GABARITO A
(776, 'Comparar alternativas com requisitos, restrições e justificativas documentadas', TRUE),
(776, 'Escolher exclusivamente a ferramenta mais popular', FALSE),
(776, 'Adotar a primeira tecnologia conhecida sem análise', FALSE),
(776, 'Evitar apresentar os motivos da decisão', FALSE),

-- QUESTAO 48 | ID 777 | GABARITO B
(777, 'Garante execução paralela de todas as atividades', FALSE),
(777, 'Dificulta a atribuição de execução e o acompanhamento das entregas', TRUE),
(777, 'Impede matematicamente qualquer estimativa de prazo', FALSE),
(777, 'Elimina a necessidade de comunicação', FALSE),

-- QUESTAO 49 | ID 778 | GABARITO C
(778, 'O problema deve ser substituído pela conclusão sem registro', FALSE),
(778, 'Os objetivos devem ser escolhidos depois da avaliação final', FALSE),
(778, 'Os resultados devem ser analisados à luz do problema e dos objetivos estabelecidos', TRUE),
(778, 'Os resultados devem ignorar os objetivos após a implementação', FALSE),

-- QUESTAO 50 | ID 779 | GABARITO D
(779, 'Publicar todos os contatos para facilitar auditoria', FALSE),
(779, 'Compartilhar a planilha com qualquer interessado', FALSE),
(779, 'Manter dados indefinidamente sem justificativa', FALSE),
(779, 'Coletar apenas dados necessários e definir acesso e finalidade', TRUE),

-- QUESTAO 51 | ID 780 | GABARITO A
(780, 'Documentar o conflito e negociar uma decisão com as partes envolvidas', TRUE),
(780, 'Implementar ambos sem analisar incompatibilidades', FALSE),
(780, 'Escolher aleatoriamente uma das versões', FALSE),
(780, 'Ocultar o conflito na documentação', FALSE),

-- QUESTAO 52 | ID 781 | GABARITO B
(781, 'Definir casos de teste sem conhecer funcionalidades', FALSE),
(781, 'Relacionar cenários de teste aos requisitos e critérios de aceitação', TRUE),
(781, 'Testar apenas a tela inicial porque é mais visível', FALSE),
(781, 'Executar testes sem registrar resultados', FALSE),

-- QUESTAO 53 | ID 782 | GABARITO C
(782, 'Contar exclusivamente o número de arquivos criados', FALSE),
(782, 'Considerar a opinião dos desenvolvedores como prova suficiente', FALSE),
(782, 'Comparar indicadores definidos antes e depois da implantação, controlando limitações', TRUE),
(782, 'Relatar somente que a interface ficou bonita', FALSE),

-- QUESTAO 54 | ID 783 | GABARITO D
(783, 'Excluir as observações divergentes', FALSE),
(783, 'Alterar os dados para confirmar a hipótese', FALSE),
(783, 'Omitir a hipótese do relatório sem explicação', FALSE),
(783, 'Relatar o resultado e discutir suas possíveis explicações e limitações', TRUE),

-- QUESTAO 55 | ID 784 | GABARITO A
(784, 'Induzir respostas e comprometer a qualidade dos dados', TRUE),
(784, 'Aumentar necessariamente a representatividade da amostra', FALSE),
(784, 'Eliminar qualquer viés de seleção', FALSE),
(784, 'Transformar opiniões em medições objetivas', FALSE),

-- QUESTAO 56 | ID 785 | GABARITO B
(785, 'Eliminar a necessidade de diagramas e testes', FALSE),
(785, 'Permitir compreender alternativas, justificativas e consequências das escolhas', TRUE),
(785, 'Impedir qualquer evolução técnica futura', FALSE),
(785, 'Substituir o código-fonte do sistema', FALSE),

-- QUESTAO 57 | ID 786 | GABARITO C
(786, 'Porque dependências nunca afetam o caminho crítico', FALSE),
(786, 'Porque incertezas podem ser ignoradas após o planejamento', FALSE),
(786, 'Porque estimativas pontuais podem ocultar riscos relevantes para o prazo', TRUE),
(786, 'Porque toda tarefa tem duração fixa e conhecida', FALSE),

-- QUESTAO 58 | ID 787 | GABARITO D
(787, 'Implementá-la imediatamente, independentemente do prazo', FALSE),
(787, 'Excluir a funcionalidade do registro de solicitações', FALSE),
(787, 'Alterar o objetivo acadêmico sem consultar a equipe', FALSE),
(787, 'Registrar a demanda e avaliar sua prioridade e impacto no escopo', TRUE),

-- QUESTAO 59 | ID 788 | GABARITO A
(788, 'Executar medições sob condições definidas e compará-las ao limite especificado', TRUE),
(788, 'Perguntar apenas se o sistema parece rápido', FALSE),
(788, 'Verificar se o código contém comentários', FALSE),
(788, 'Contar quantas telas foram desenhadas', FALSE),

-- QUESTAO 60 | ID 789 | GABARITO B
(789, 'Comprova que todas as hipóteses foram confirmadas', FALSE),
(789, 'Delimita o alcance dos resultados e indica cuidados na interpretação', TRUE),
(789, 'Invalida automaticamente todo o trabalho', FALSE),
(789, 'Substitui a apresentação dos resultados', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES DIFICIEIS
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
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
