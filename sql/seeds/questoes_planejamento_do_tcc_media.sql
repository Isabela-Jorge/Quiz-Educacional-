-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Planejamento do TCC - Módulo 2
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- PTCC | Questões 21 a 40 | Nível médio
-- ============================================================

INSERT INTO questao (
    quiz_id, 
    enunciado, 
    dificuldade, 
    pontos, 
    tempo_limite_segundos
) 
VALUES
(@quiz_ptcc_id, 'Como um problema de pesquisa bem formulado contribui para o TCC?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual relação adequada deve existir entre objetivos e metodologia?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Uma equipe quer estudar todos os sistemas empresariais existentes. Qual é a melhor ação inicial?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Ao entrevistar um cliente para o TCC, qual prática favorece requisitos confiáveis?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual evidência é mais adequada para justificar um problema operacional?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual é a diferença entre escopo e cronograma?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Uma tarefa depende da aprovação dos requisitos. Como representá-la no planejamento?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Por que manter um registro de riscos durante o planejamento?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual situação indica uma hipótese de pesquisa, e não um fato comprovado?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Como distinguir fonte primária de fonte secundária em uma pesquisa de campo?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Por que a rastreabilidade de requisitos é útil?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Em um TCC de software, qual é o benefício de validar um protótipo com usuários?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual estratégia torna um objetivo específico mais verificável?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'O que caracteriza uma restrição de projeto?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Por que o planejamento deve prever momentos de revisão?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual é a função de um critério de aceitação?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Qual exemplo apresenta um indicador mensurável para o projeto?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Em pesquisa aplicada, o que se busca prioritariamente?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Como deve ser tratada uma alteração solicitada pelo cliente após a definição do escopo?', 'MEDIO', 10, 15),
(@quiz_ptcc_id, 'Por que um TCC de desenvolvimento deve considerar aspectos éticos na coleta de dados?', 'MEDIO', 10, 15);

-- ============================================================
-- PTCC - ALTERNATIVAS DAS QUESTÕES 21 A 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | CORRETA: C
(ID_Q21, 'Determina obrigatoriamente uma solução única', FALSE),
(ID_Q21, 'Substitui a fundamentação teórica', FALSE),
(ID_Q21, 'Orienta a investigação e ajuda a definir objetivos coerentes', TRUE),
(ID_Q21, 'Elimina a necessidade de coletar evidências', FALSE),

-- Questão 22 | CORRETA: D
(ID_Q22, 'A metodologia deve ser escolhida sem considerar os objetivos', FALSE),
(ID_Q22, 'Os objetivos devem ser ocultados até a entrega', FALSE),
(ID_Q22, 'A metodologia deve reproduzir integralmente o cronograma', FALSE),
(ID_Q22, 'Os procedimentos escolhidos devem permitir alcançar os objetivos', TRUE),

-- Questão 23 | CORRETA: A
(ID_Q23, 'Restringir o escopo a um problema e contexto definidos', TRUE),
(ID_Q23, 'Manter todos os setores e tecnologias no projeto', FALSE),
(ID_Q23, 'Iniciar a codificação antes de conhecer o cliente', FALSE),
(ID_Q23, 'Eliminar o prazo de conclusão', FALSE),

-- Questão 24 | CORRETA: B
(ID_Q24, 'Descartar divergências entre usuários', FALSE),
(ID_Q24, 'Registrar respostas e confirmar o entendimento com o entrevistado', TRUE),
(ID_Q24, 'Presumir que necessidades implícitas são fatos', FALSE),
(ID_Q24, 'Fazer somente perguntas que confirmem a solução escolhida', FALSE),

-- Questão 25 | CORRETA: C
(ID_Q25, 'A preferência pessoal pela linguagem escolhida', FALSE),
(ID_Q25, 'A quantidade de cores da interface', FALSE),
(ID_Q25, 'Registros e relatos verificáveis sobre o processo atual', TRUE),
(ID_Q25, 'Uma opinião isolada sem contexto', FALSE),

-- Questão 26 | CORRETA: D
(ID_Q26, 'Escopo informa datas; cronograma define permissões', FALSE),
(ID_Q26, 'Ambos representam somente o orçamento', FALSE),
(ID_Q26, 'Ambos são listas de referências', FALSE),
(ID_Q26, 'Escopo define o que será entregue; cronograma indica quando', TRUE),

-- Questão 27 | CORRETA: A
(ID_Q27, 'Registrar a dependência antes de programar a execução', TRUE),
(ID_Q27, 'Ignorar a aprovação e marcar a tarefa como concluída', FALSE),
(ID_Q27, 'Remover a tarefa do cronograma', FALSE),
(ID_Q27, 'Trocar a aprovação por uma estimativa de custo', FALSE),

-- Questão 28 | CORRETA: B
(ID_Q28, 'Transformar hipóteses em resultados', FALSE),
(ID_Q28, 'Antecipar eventos que podem comprometer o projeto e planejar respostas', TRUE),
(ID_Q28, 'Garantir que nenhum imprevisto ocorrerá', FALSE),
(ID_Q28, 'Eliminar a participação do orientador', FALSE),

-- Questão 29 | CORRETA: C
(ID_Q29, 'O formulário possui cinco campos', FALSE),
(ID_Q29, 'O banco contém sete tabelas', FALSE),
(ID_Q29, 'A centralização dos registros poderá reduzir retrabalho', TRUE),
(ID_Q29, 'A entrevista foi realizada na terça-feira', FALSE),

-- Questão 30 | CORRETA: D
(ID_Q30, 'A primária é sempre digital; a secundária é sempre impressa', FALSE),
(ID_Q30, 'A primária dispensa autoria; a secundária exige software', FALSE),
(ID_Q30, 'A primária contém apenas imagens; a secundária contém código', FALSE),
(ID_Q30, 'A primária fornece dados obtidos diretamente; a secundária analisa dados já publicados', TRUE),

-- Questão 31 | CORRETA: A
(ID_Q31, 'Permite relacionar necessidades, funcionalidades e testes', TRUE),
(ID_Q31, 'Substitui o contato com o cliente', FALSE),
(ID_Q31, 'Impede toda alteração de escopo', FALSE),
(ID_Q31, 'Elimina o controle de versões', FALSE),

-- Questão 32 | CORRETA: B
(ID_Q32, 'Substituir testes de integração', FALSE),
(ID_Q32, 'Identificar problemas de entendimento antes de implementar tudo', TRUE),
(ID_Q32, 'Garantir ausência de defeitos no produto final', FALSE),
(ID_Q32, 'Dispensar os requisitos não funcionais', FALSE),

-- Questão 33 | CORRETA: C
(ID_Q33, 'Descrever intenções sem qualquer critério', FALSE),
(ID_Q33, 'Misturar vários objetivos incompatíveis', FALSE),
(ID_Q33, 'Empregar verbo de ação e indicar um resultado observável', TRUE),
(ID_Q33, 'Utilizar expressões vagas como melhorar tudo', FALSE),

-- Questão 34 | CORRETA: D
(ID_Q34, 'Uma funcionalidade opcional já implementada', FALSE),
(ID_Q34, 'Uma opinião sem relação com o trabalho', FALSE),
(ID_Q34, 'Uma conclusão obtida após a entrega', FALSE),
(ID_Q34, 'Uma condição que limita escolhas, como prazo ou orçamento', TRUE),

-- Questão 35 | CORRETA: A
(ID_Q35, 'Para corrigir desvios com base em evidências de progresso', TRUE),
(ID_Q35, 'Para alterar os objetivos diariamente sem justificativa', FALSE),
(ID_Q35, 'Para evitar qualquer documentação', FALSE),
(ID_Q35, 'Para garantir que todas as tarefas durem o mesmo tempo', FALSE),

-- Questão 36 | CORRETA: B
(ID_Q36, 'Estabelecer o nome da equipe', FALSE),
(ID_Q36, 'Definir condições observáveis para considerar uma entrega adequada', TRUE),
(ID_Q36, 'Descrever exclusivamente a aparência da capa', FALSE),
(ID_Q36, 'Registrar o histórico escolar dos autores', FALSE),

-- Questão 37 | CORRETA: C
(ID_Q37, 'Interface muito moderna', FALSE),
(ID_Q37, 'Sistema intuitivo para todos sem teste', FALSE),
(ID_Q37, 'Percentual de requisitos validados pelo cliente', TRUE),
(ID_Q37, 'Qualidade excelente sem definição', FALSE),

-- Questão 38 | CORRETA: D
(ID_Q38, 'Eliminar a necessidade de métodos científicos', FALSE),
(ID_Q38, 'Repetir conclusões sem investigar o contexto', FALSE),
(ID_Q38, 'Priorizar apenas teorias sem relação com o problema', FALSE),
(ID_Q38, 'Produzir conhecimento orientado à solução de um problema prático', TRUE),

-- Questão 39 | CORRETA: A
(ID_Q39, 'Avaliar impacto em prazo, esforço e requisitos antes de aprovar', TRUE),
(ID_Q39, 'Aceitar automaticamente sem registrar a mudança', FALSE),
(ID_Q39, 'Ignorar a solicitação sem análise', FALSE),
(ID_Q39, 'Excluir as decisões anteriores do histórico', FALSE),

-- Questão 40 | CORRETA: B
(ID_Q40, 'Para substituir as medidas de segurança por anonimato informal', FALSE),
(ID_Q40, 'Para proteger participantes e tratar informações de forma responsável', TRUE),
(ID_Q40, 'Para permitir divulgação irrestrita de dados pessoais', FALSE),
(ID_Q40, 'Para dispensar consentimento quando conveniente', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE PTCC
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;