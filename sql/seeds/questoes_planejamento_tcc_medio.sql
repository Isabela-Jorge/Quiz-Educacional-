
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
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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

-- ================================================================================
-- PLANEJAMENTO DO TRABALHO DE CONCLUSAO DE CURSO | QUESTOES 21 A 40 | NIVEL MEDIO
-- ================================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_tcc_id, 'Como um problema de pesquisa bem formulado contribui para o TCC?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual relação adequada deve existir entre objetivos e metodologia?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Uma equipe quer estudar todos os sistemas empresariais existentes. Qual é a melhor ação inicial?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Ao entrevistar um cliente para o TCC, qual prática favorece requisitos confiáveis?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual evidência é mais adequada para justificar um problema operacional?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual é a diferença entre escopo e cronograma?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Uma tarefa depende da aprovação dos requisitos. Como representá-la no planejamento?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Por que manter um registro de riscos durante o planejamento?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual situação indica uma hipótese de pesquisa, e não um fato comprovado?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Como distinguir fonte primária de fonte secundária em uma pesquisa de campo?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Por que a rastreabilidade de requisitos é útil?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Em um TCC de software, qual é o benefício de validar um protótipo com usuários?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual estratégia torna um objetivo específico mais verificável?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'O que caracteriza uma restrição de projeto?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Por que o planejamento deve prever momentos de revisão?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual é a função de um critério de aceitação?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Qual exemplo apresenta um indicador mensurável para o projeto?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Em pesquisa aplicada, o que se busca prioritariamente?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Como deve ser tratada uma alteração solicitada pelo cliente após a definição do escopo?', 'MEDIO', 10, 15),
(@quiz_tcc_id, 'Por que um TCC de desenvolvimento deve considerar aspectos éticos na coleta de dados?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- PLANEJAMENTO DO TCC | ALTERNATIVAS DAS QUESTOES 21 A 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 750 | GABARITO C
(750, 'Determina obrigatoriamente uma solução única', FALSE),
(750, 'Substitui a fundamentação teórica', FALSE),
(750, 'Orienta a investigação e ajuda a definir objetivos coerentes', TRUE),
(750, 'Elimina a necessidade de coletar evidências', FALSE),

-- QUESTAO 22 | ID 751 | GABARITO D
(751, 'A metodologia deve ser escolhida sem considerar os objetivos', FALSE),
(751, 'Os objetivos devem ser ocultados até a entrega', FALSE),
(751, 'A metodologia deve reproduzir integralmente o cronograma', FALSE),
(751, 'Os procedimentos escolhidos devem permitir alcançar os objetivos', TRUE),

-- QUESTAO 23 | ID 752 | GABARITO A
(752, 'Restringir o escopo a um problema e contexto definidos', TRUE),
(752, 'Manter todos os setores e tecnologias no projeto', FALSE),
(752, 'Iniciar a codificação antes de conhecer o cliente', FALSE),
(752, 'Eliminar o prazo de conclusão', FALSE),

-- QUESTAO 24 | ID 753 | GABARITO B
(753, 'Descartar divergências entre usuários', FALSE),
(753, 'Registrar respostas e confirmar o entendimento com o entrevistado', TRUE),
(753, 'Presumir que necessidades implícitas são fatos', FALSE),
(753, 'Fazer somente perguntas que confirmem a solução escolhida', FALSE),

-- QUESTAO 25 | ID 754 | GABARITO C
(754, 'A preferência pessoal pela linguagem escolhida', FALSE),
(754, 'A quantidade de cores da interface', FALSE),
(754, 'Registros e relatos verificáveis sobre o processo atual', TRUE),
(754, 'Uma opinião isolada sem contexto', FALSE),

-- QUESTAO 26 | ID 755 | GABARITO D
(755, 'Escopo informa datas; cronograma define permissões', FALSE),
(755, 'Ambos representam somente o orçamento', FALSE),
(755, 'Ambos são listas de referências', FALSE),
(755, 'Escopo define o que será entregue; cronograma indica quando', TRUE),

-- QUESTAO 27 | ID 756 | GABARITO A
(756, 'Registrar a dependência antes de programar a execução', TRUE),
(756, 'Ignorar a aprovação e marcar a tarefa como concluída', FALSE),
(756, 'Remover a tarefa do cronograma', FALSE),
(756, 'Trocar a aprovação por uma estimativa de custo', FALSE),

-- QUESTAO 28 | ID 757 | GABARITO B
(757, 'Transformar hipóteses em resultados', FALSE),
(757, 'Antecipar eventos que podem comprometer o projeto e planejar respostas', TRUE),
(757, 'Garantir que nenhum imprevisto ocorrerá', FALSE),
(757, 'Eliminar a participação do orientador', FALSE),

-- QUESTAO 29 | ID 758 | GABARITO C
(758, 'O formulário possui cinco campos', FALSE),
(758, 'O banco contém sete tabelas', FALSE),
(758, 'A centralização dos registros poderá reduzir retrabalho', TRUE),
(758, 'A entrevista foi realizada na terça-feira', FALSE),

-- QUESTAO 30 | ID 759 | GABARITO D
(759, 'A primária é sempre digital; a secundária é sempre impressa', FALSE),
(759, 'A primária dispensa autoria; a secundária exige software', FALSE),
(759, 'A primária contém apenas imagens; a secundária contém código', FALSE),
(759, 'A primária fornece dados obtidos diretamente; a secundária analisa dados já publicados', TRUE),

-- QUESTAO 31 | ID 760 | GABARITO A
(760, 'Permite relacionar necessidades, funcionalidades e testes', TRUE),
(760, 'Substitui o contato com o cliente', FALSE),
(760, 'Impede toda alteração de escopo', FALSE),
(760, 'Elimina o controle de versões', FALSE),

-- QUESTAO 32 | ID 761 | GABARITO B
(761, 'Substituir testes de integração', FALSE),
(761, 'Identificar problemas de entendimento antes de implementar tudo', TRUE),
(761, 'Garantir ausência de defeitos no produto final', FALSE),
(761, 'Dispensar os requisitos não funcionais', FALSE),

-- QUESTAO 33 | ID 762 | GABARITO C
(762, 'Descrever intenções sem qualquer critério', FALSE),
(762, 'Misturar vários objetivos incompatíveis', FALSE),
(762, 'Empregar verbo de ação e indicar um resultado observável', TRUE),
(762, 'Utilizar expressões vagas como melhorar tudo', FALSE),

-- QUESTAO 34 | ID 763 | GABARITO D
(763, 'Uma funcionalidade opcional já implementada', FALSE),
(763, 'Uma opinião sem relação com o trabalho', FALSE),
(763, 'Uma conclusão obtida após a entrega', FALSE),
(763, 'Uma condição que limita escolhas, como prazo ou orçamento', TRUE),

-- QUESTAO 35 | ID 764 | GABARITO A
(764, 'Para corrigir desvios com base em evidências de progresso', TRUE),
(764, 'Para alterar os objetivos diariamente sem justificativa', FALSE),
(764, 'Para evitar qualquer documentação', FALSE),
(764, 'Para garantir que todas as tarefas durem o mesmo tempo', FALSE),

-- QUESTAO 36 | ID 765 | GABARITO B
(765, 'Estabelecer o nome da equipe', FALSE),
(765, 'Definir condições observáveis para considerar uma entrega adequada', TRUE),
(765, 'Descrever exclusivamente a aparência da capa', FALSE),
(765, 'Registrar o histórico escolar dos autores', FALSE),

-- QUESTAO 37 | ID 766 | GABARITO C
(766, 'Interface muito moderna', FALSE),
(766, 'Sistema intuitivo para todos sem teste', FALSE),
(766, 'Percentual de requisitos validados pelo cliente', TRUE),
(766, 'Qualidade excelente sem definição', FALSE),

-- QUESTAO 38 | ID 767 | GABARITO D
(767, 'Eliminar a necessidade de métodos científicos', FALSE),
(767, 'Repetir conclusões sem investigar o contexto', FALSE),
(767, 'Priorizar apenas teorias sem relação com o problema', FALSE),
(767, 'Produzir conhecimento orientado à solução de um problema prático', TRUE),

-- QUESTAO 39 | ID 768 | GABARITO A
(768, 'Avaliar impacto em prazo, esforço e requisitos antes de aprovar', TRUE),
(768, 'Aceitar automaticamente sem registrar a mudança', FALSE),
(768, 'Ignorar a solicitação sem análise', FALSE),
(768, 'Excluir as decisões anteriores do histórico', FALSE),

-- QUESTAO 40 | ID 769 | GABARITO B
(769, 'Para substituir as medidas de segurança por anonimato informal', FALSE),
(769, 'Para proteger participantes e tratar informações de forma responsável', TRUE),
(769, 'Para permitir divulgação irrestrita de dados pessoais', FALSE),
(769, 'Para dispensar consentimento quando conveniente', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES MEDIAS
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
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
