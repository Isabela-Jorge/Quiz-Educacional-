-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Análise e Projeto de Sistemas - Módulo 2
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz automaticamente
SET @quiz_aps_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Análise e Projeto de Sistemas'
      AND d.modulo = 2
    LIMIT 1
);

-- Conferir a identificação
SELECT @quiz_aps_id AS quiz_id;

-- ==================================================================
-- Análise e Projeto de Sistemas | QUESTÕES 41 A 60 | NÍVEL DIFÍCIL
-- ==================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_aps_id, 'Um requisito diz: ''Apenas professores podem publicar questões''. Qual teste verifica diretamente essa regra?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Em um sistema de pedidos, uma solicitação é cancelável somente antes do faturamento. Como modelar a regra?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Uma associação UML entre Pedido e ItemPedido tem multiplicidade 1 no lado Pedido e 1..* no lado ItemPedido. O que ela indica?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Qual medida ajuda a evitar que um requisito de segurança seja esquecido durante a implementação?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'O que deve ser feito quando um requisito aprovado muda durante o projeto?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Qual é a diferença entre uma regra de negócio e uma decisão de interface?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Um fluxo alternativo de login prevê senha inválida. Qual resultado é adequado ao cenário?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Por que um diagrama de sequência pode revelar falhas de projeto?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Qual é a consequência de um requisito sem origem identificável em um projeto complexo?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Ao modelar um sistema com perfis de acesso, qual abordagem é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Um sistema precisa registrar o histórico de alterações de dados críticos. Que tipo de requisito está em destaque?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Uma especificação diz ''O sistema deve suportar muitos usuários''. Qual refinamento é mais verificável?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Qual problema surge ao usar «include» para representar uma etapa opcional?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Uma equipe possui requisitos R1, R2 e R3. R2 depende de R1 e R3 depende de R2. Qual ordem respeita as dependências?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Durante uma entrevista, duas áreas descrevem o mesmo termo com significados diferentes. Qual medida é mais eficaz?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Uma funcionalidade foi implementada, mas falha em um critério de aceitação aprovado. Qual conclusão é apropriada?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Em um sistema de agendamentos, duas pessoas tentam reservar o mesmo horário. O que a análise deve especificar?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Qual é o risco de derivar casos de teste apenas do fluxo principal de um caso de uso?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Um requisito de privacidade determina excluir dados após um prazo, salvo obrigação legal de retenção. O que precisa ser esclarecido na análise?', 'DIFICIL', 15, 15),
(@quiz_aps_id, 'Uma equipe propõe automatizar um processo sem conhecer suas exceções. Qual é o risco principal?', 'DIFICIL', 15, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 8
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ===================================================================
-- ANÁLISE E PROJETO DE SISTEMAS | ALTERNATIVAS DAS QUESTÕES 41 a 60
-- ===================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTÃO 41 | ID 530 | GABARITO B
(530, 'Testar a cor do botão de publicação', FALSE),
(530, 'Tentar publicar como aluno e como professor e comparar as permissões', TRUE),
(530, 'Verificar somente o tamanho do banco de dados', FALSE),
(530, 'Medir apenas o tempo de carregamento da página inicial', FALSE),

-- QUESTÃO 42 | ID 531 | GABARITO A
(531, 'Definir estados do pedido e permitir a transição de cancelamento apenas nos estados anteriores ao faturamento', TRUE),
(531, 'Usar apenas uma mensagem visual sem validação de regra', FALSE),
(531, 'Apagar a informação de faturamento ao cancelar', FALSE),
(531, 'Permitir cancelamento em qualquer estado sem registro', FALSE),

-- QUESTÃO 43 | ID 532 | GABARITO C
(532, 'Todo pedido pode existir apenas sem itens', FALSE),
(532, 'Cada pedido pertence a vários itens sem vínculo', FALSE),
(532, 'Cada item pertence a um pedido, e cada pedido possui um ou mais itens', TRUE),
(532, 'Cada item pertence obrigatoriamente a vários pedidos', FALSE),

-- QUESTÃO 44 | ID 533 | GABARITO C
(533, 'Removê-lo da especificação para reduzir o escopo', FALSE),
(533, 'Considerá-lo atendido sem evidência', FALSE),
(533, 'Vinculá-lo a casos de teste e responsáveis por meio da rastreabilidade', TRUE),
(533, 'Registrá-lo somente em conversa informal', FALSE),

-- QUESTÃO 45 | ID 534 | GABARITO C
(534, 'Modificar o código sem informar a equipe', FALSE),
(534, 'Alterar somente o título do documento', FALSE),
(534, 'Avaliar impacto, registrar decisão e atualizar artefatos e testes relacionados', TRUE),
(534, 'Ignorar testes existentes', FALSE),

-- QUESTÃO 46 | ID 535 | GABARITO D
(535, 'Nenhuma pode ser documentada antes da codificação', FALSE),
(535, 'Ambas são sempre escolhas de cores', FALSE),
(535, 'A regra só existe no banco e a interface só existe no servidor', FALSE),
(535, 'A regra define uma política do domínio; a interface define como a pessoa interage com a solução', TRUE),

-- QUESTÃO 47 | ID 536 | GABARITO D
(536, 'Autenticar o usuário mesmo com senha incorreta', FALSE),
(536, 'Exibir a senha armazenada na mensagem de erro', FALSE),
(536, 'Remover o cadastro automaticamente após uma falha', FALSE),
(536, 'Manter a sessão não autenticada e informar falha sem expor a senha cadastrada', TRUE),

-- QUESTÃO 48 | ID 537 | GABARITO A
(537, 'Porque evidencia ordem de chamadas, dependências e respostas entre participantes', TRUE),
(537, 'Porque garante desempenho sem medições', FALSE),
(537, 'Porque elimina a necessidade de testar integrações', FALSE),
(537, 'Porque representa apenas o layout das telas', FALSE),

-- QUESTÃO 49 | ID 538 | GABARITO D
(538, 'Ele passa automaticamente a ser não funcional', FALSE),
(538, 'Ele não pode ser escrito em linguagem natural', FALSE),
(538, 'Ele se torna um requisito de hardware', FALSE),
(538, 'Fica mais difícil justificar sua necessidade e avaliar alterações', TRUE),

-- QUESTÃO 50 | ID 539 | GABARITO C
(539, 'Deixar permissões implícitas no nome das telas', FALSE),
(539, 'Validar acesso somente por ocultação de botões', FALSE),
(539, 'Definir permissões por papel e especificar operações autorizadas para cada perfil', TRUE),
(539, 'Conceder a todos os perfis as mesmas permissões', FALSE),

-- QUESTÃO 51 | ID 540 | GABARITO A
(540, 'Auditabilidade e rastreabilidade das operações', TRUE),
(540, 'Somente aparência visual', FALSE),
(540, 'Apenas velocidade de digitação', FALSE),
(540, 'Exclusivamente compatibilidade de navegador', FALSE),

-- QUESTÃO 52 | ID 541 | GABARITO C
(541, 'Funcionar rapidamente sem critérios de medição', FALSE),
(541, 'Suportar uma quantidade excelente de usuários', FALSE),
(541, 'Suportar 500 usuários simultâneos com 95% das operações concluídas em até 3 segundos no ambiente de teste definido', TRUE),
(541, 'Ter desempenho satisfatório em qualquer situação', FALSE),

-- QUESTÃO 53 | ID 542 | GABARITO C
(542, 'O diagrama deixa de admitir atores externos', FALSE),
(542, 'A relação passa a representar herança de classes', FALSE),
(542, 'A relação comunica incorretamente que o comportamento incluído é sempre executado', TRUE),
(542, 'O sistema é obrigado a usar orientação a objetos', FALSE),

-- QUESTÃO 54 | ID 543 | GABARITO B
(543, 'R3, R2, R1', FALSE),
(543, 'R1, R2, R3', TRUE),
(543, 'R2, R3, R1', FALSE),
(543, 'R3, R1, R2', FALSE),

-- QUESTÃO 55 | ID 544 | GABARITO B
(544, 'Evitar documentar o termo', FALSE),
(544, 'Construir um glossário acordado e validar exemplos de uso do termo', TRUE),
(544, 'Escolher a definição da primeira pessoa entrevistada', FALSE),
(544, 'Criar duas funcionalidades sem verificar o conflito', FALSE),

-- QUESTÃO 56 | ID 545 | GABARITO B
(545, 'A falha prova que todos os outros requisitos são inválidos', FALSE),
(545, 'A funcionalidade ainda não atende integralmente ao requisito validado', TRUE),
(545, 'A funcionalidade está concluída porque o código compila', FALSE),
(545, 'O critério deve ser ignorado sem negociação', FALSE),

-- QUESTÃO 57 | ID 546 | GABARITO C
(546, 'A exclusão automática de todos os agendamentos', FALSE),
(546, 'Uma mensagem genérica sem tratar a concorrência', FALSE),
(546, 'Uma regra de negócio para impedir ou resolver reservas conflitantes', TRUE),
(546, 'Somente a cor do calendário', FALSE),

-- QUESTÃO 58 | ID 547 | GABARITO A
(547, 'Deixar de verificar exceções, erros e fluxos alternativos relevantes', TRUE),
(547, 'Eliminar todas as ambiguidades de requisitos', FALSE),
(547, 'Aumentar obrigatoriamente a cobertura de erros', FALSE),
(547, 'Garantir que as regras de negócio estejam completas', FALSE),

-- QUESTÃO 59 | ID 548 | GABARITO C
(548, 'Somente o nome do servidor', FALSE),
(548, 'Exclusivamente a linguagem da interface', FALSE),
(548, 'Prazos, categorias de dados, exceções legais e comportamento de exclusão', TRUE),
(548, 'Apenas a cor do botão de exclusão', FALSE),

-- QUESTÃO 60 | ID 549 | GABARITO C
(549, 'Reduzir necessariamente a quantidade de requisitos', FALSE),
(549, 'Impedir a existência de qualquer integração', FALSE),
(549, 'Reproduzir ou ampliar falhas do processo por regras incompletas', TRUE),
(549, 'Eliminar automaticamente todos os erros humanos', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS
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
WHERE q.quiz_id = 8
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
