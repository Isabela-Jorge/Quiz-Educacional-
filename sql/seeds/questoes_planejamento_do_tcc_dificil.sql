-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Planejamento do TCC - Módulo 2
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- PTCC | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_ptcc_id, 'Uma equipe tem seis semanas e funcionalidades demais. Qual abordagem reduz o risco de não entregar?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual é a principal limitação de usar apenas entrevistas com um gestor no levantamento de requisitos?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Em um projeto com dependências, o atraso de uma tarefa crítica tende a causar qual efeito?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Um objetivo diz: ''Desenvolver um sistema melhor''. Qual revisão é metodologicamente superior?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Por que não se deve confundir correlação com causalidade em uma pesquisa?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual medida fortalece a validade de uma conclusão sobre necessidades dos usuários?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Ao selecionar uma solução tecnológica, qual critério é mais defensável academicamente?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Um cronograma apresenta tarefas com duração estimada, mas sem responsáveis. Qual risco isso cria?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual relação entre problema, objetivos e resultados torna o TCC coerente?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Uma pesquisa de campo coleta nomes e contatos dos participantes. Qual prática é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Como lidar com requisitos contraditórios informados por setores diferentes?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'O que torna um plano de testes coerente com o planejamento do TCC?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual evidência permite avaliar a eficácia de um sistema proposto para reduzir retrabalho?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Quando uma hipótese não é confirmada pelos dados, qual atitude científica é adequada?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Uma equipe quer usar um questionário com perguntas tendenciosas. Qual problema metodológico isso pode causar?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual é a vantagem de manter histórico de decisões de arquitetura no TCC?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Ao estimar esforço, por que considerar incertezas e dependências?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Qual abordagem é adequada quando o cliente pede uma funcionalidade fora do objetivo do TCC?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Como avaliar se um requisito não funcional de desempenho foi atendido?', 'DIFICIL', 15, 15),
(@quiz_ptcc_id, 'Por que uma análise de limitações é importante na conclusão do TCC?', 'DIFICIL', 15, 15);

-- ============================================================
-- PTCC - ALTERNATIVAS DAS QUESTÕES 41 A 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | Gabarito: C
(ID_Q41, 'Eliminar a fase de testes sem avaliação', FALSE),
(ID_Q41, 'Prometer todas as funcionalidades sem estimativa', FALSE),
(ID_Q41, 'Priorizar um conjunto mínimo de funcionalidades essenciais e validáveis', TRUE),
(ID_Q41, 'Começar simultaneamente todas as funcionalidades', FALSE),

-- Questão 42 | Gabarito: D
(ID_Q42, 'Entrevistas não podem gerar requisitos funcionais', FALSE),
(ID_Q42, 'Um gestor nunca conhece processos internos', FALSE),
(ID_Q42, 'A técnica dispensa validação posterior', FALSE),
(ID_Q42, 'Outros perfis de usuários podem ter necessidades não identificadas', TRUE),

-- Questão 43 | Gabarito: A
(ID_Q43, 'Pode atrasar a conclusão se não houver folga ou recuperação', TRUE),
(ID_Q43, 'Reduz automaticamente o esforço das demais tarefas', FALSE),
(ID_Q43, 'Melhora a qualidade do produto por definição', FALSE),
(ID_Q43, 'Elimina a necessidade de atualizar o cronograma', FALSE),

-- Questão 44 | Gabarito: B
(ID_Q44, 'Acrescentar mais adjetivos sem indicadores', FALSE),
(ID_Q44, 'Especificar funcionalidades e critérios verificáveis de melhoria', TRUE),
(ID_Q44, 'Trocar ''melhor'' por ''excelente'' sem definir métricas', FALSE),
(ID_Q44, 'Remover o objetivo geral', FALSE),

-- Questão 45 | Gabarito: C
(ID_Q45, 'A causalidade independe de qualquer evidência', FALSE),
(ID_Q45, 'A correlação só existe em pesquisas qualitativas', FALSE),
(ID_Q45, 'Duas variáveis associadas não demonstram, por si só, causa e efeito', TRUE),
(ID_Q45, 'Toda correlação comprova uma causa única', FALSE),

-- Questão 46 | Gabarito: D
(ID_Q46, 'Utilizar apenas a primeira resposta recebida', FALSE),
(ID_Q46, 'Excluir dados que contradizem a hipótese', FALSE),
(ID_Q46, 'Evitar registrar como os dados foram obtidos', FALSE),
(ID_Q46, 'Triangular entrevistas, observações e documentos do processo', TRUE),

-- Questão 47 | Gabarito: A
(ID_Q47, 'Comparar alternativas com requisitos, restrições e justificativas documentadas', TRUE),
(ID_Q47, 'Escolher exclusivamente a ferramenta mais popular', FALSE),
(ID_Q47, 'Adotar a primeira tecnologia conhecida sem análise', FALSE),
(ID_Q47, 'Evitar apresentar os motivos da decisão', FALSE),

-- Questão 48 | Gabarito: B
(ID_Q48, 'Garante execução paralela de todas as atividades', FALSE),
(ID_Q48, 'Dificulta a atribuição de execução e o acompanhamento das entregas', TRUE),
(ID_Q48, 'Impede matematicamente qualquer estimativa de prazo', FALSE),
(ID_Q48, 'Elimina a necessidade de comunicação', FALSE),

-- Questão 49 | Gabarito: C
(ID_Q49, 'O problema deve ser substituído pela conclusão sem registro', FALSE),
(ID_Q49, 'Os objetivos devem ser escolhidos depois da avaliação final', FALSE),
(ID_Q49, 'Os resultados devem ser analisados à luz do problema e dos objetivos estabelecidos', TRUE),
(ID_Q49, 'Os resultados devem ignorar os objetivos após a implementação', FALSE),

-- Questão 50 | Gabarito: D
(ID_Q50, 'Publicar todos os contatos para facilitar auditoria', FALSE),
(ID_Q50, 'Compartilhar a planilha com qualquer interessado', FALSE),
(ID_Q50, 'Manter dados indefinidamente sem justificativa', FALSE),
(ID_Q50, 'Coletar apenas dados necessários e definir acesso e finalidade', TRUE),

-- Questão 51 | Gabarito: A
(ID_Q51, 'Documentar o conflito e negociar uma decisão com as partes envolvidas', TRUE),
(ID_Q51, 'Implementar ambos sem analisar incompatibilidades', FALSE),
(ID_Q51, 'Escolher aleatoriamente uma das versões', FALSE),
(ID_Q51, 'Ocultar o conflito na documentação', FALSE),

-- Questão 52 | Gabarito: B
(ID_Q52, 'Definir casos de teste sem conhecer funcionalidades', FALSE),
(ID_Q52, 'Relacionar cenários de teste aos requisitos e critérios de aceitação', TRUE),
(ID_Q52, 'Testar apenas a tela inicial porque é mais visível', FALSE),
(ID_Q52, 'Executar testes sem registrar resultados', FALSE),

-- Questão 53 | Gabarito: C
(ID_Q53, 'Contar exclusivamente o número de arquivos criados', FALSE),
(ID_Q53, 'Considerar a opinião dos desenvolvedores como prova suficiente', FALSE),
(ID_Q53, 'Comparar indicadores definidos antes e depois da implantação, controlando limitações', TRUE),
(ID_Q53, 'Relatar somente que a interface ficou bonita', FALSE),

-- Questão 54 | Gabarito: D
(ID_Q54, 'Excluir as observações divergentes', FALSE),
(ID_Q54, 'Alterar os dados para confirmar a hipótese', FALSE),
(ID_Q54, 'Omitir a hipótese do relatório sem explicação', FALSE),
(ID_Q54, 'Relatar o resultado e discutir suas possíveis explicações e limitações', TRUE),

-- Questão 55 | Gabarito: A
(ID_Q55, 'Induzir respostas e comprometer a qualidade dos dados', TRUE),
(ID_Q55, 'Aumentar necessariamente a representatividade da amostra', FALSE),
(ID_Q55, 'Eliminar qualquer viés de seleção', FALSE),
(ID_Q55, 'Transformar opiniões em medições objetivas', FALSE),

-- Questão 56 | Gabarito: B
(ID_Q56, 'Eliminar a necessidade de diagramas e testes', FALSE),
(ID_Q56, 'Permitir compreender alternativas, justificativas e consequências das escolhas', TRUE),
(ID_Q56, 'Impedir qualquer evolução técnica futura', FALSE),
(ID_Q56, 'Substituir o código-fonte do sistema', FALSE),

-- Questão 57 | Gabarito: C
(ID_Q57, 'Porque dependências nunca afetam o caminho crítico', FALSE),
(ID_Q57, 'Porque incertezas podem ser ignoradas após o planejamento', FALSE),
(ID_Q57, 'Porque estimativas pontuais podem ocultar riscos relevantes para o prazo', TRUE),
(ID_Q57, 'Porque toda tarefa tem duração fixa e conhecida', FALSE),

-- Questão 58 | Gabarito: D
(ID_Q58, 'Implementá-la imediatamente, independentemente do prazo', FALSE),
(ID_Q58, 'Excluir a funcionalidade do registro de solicitações', FALSE),
(ID_Q58, 'Alterar o objetivo acadêmico sem consultar a equipe', FALSE),
(ID_Q58, 'Registrar a demanda e avaliar sua prioridade e impacto no escopo', TRUE),

-- Questão 59 | Gabarito: A
(ID_Q59, 'Executar medições sob condições definidas e compará-las ao limite especificado', TRUE),
(ID_Q59, 'Perguntar apenas se o sistema parece rápido', FALSE),
(ID_Q59, 'Verificar se o código contém comentários', FALSE),
(ID_Q59, 'Contar quantas telas foram desenhadas', FALSE),

-- Questão 60 | Gabarito: B
(ID_Q60, 'Comprova que todas as hipóteses foram confirmadas', FALSE),
(ID_Q60, 'Delimita o alcance dos resultados e indica cuidados na interpretação', TRUE),
(ID_Q60, 'Invalida automaticamente todo o trabalho', FALSE),
(ID_Q60, 'Substitui a apresentação dos resultados', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE PTCC
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;