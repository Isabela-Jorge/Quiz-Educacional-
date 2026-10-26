-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Análise e Projeto de Sistemas - Módulo 2
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================


USE quiz_ds_db;

-- Identificar o quiz da disciplina de Análise e Projeto de Sistemas do módulo 2
SET @quiz_aps_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome LIKE 'Análise e Projeto de Sistemas'
        AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- APS | Questões 01 a 20 | Nível difícil
-- ============================================================

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
-- APS - ALTERNATIVAS DAS QUESTÕES 41 A 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | Correta: B
(ID_Q41, 'Testar a cor do botão de publicação', FALSE),
(ID_Q41, 'Tentar publicar como aluno e como professor e comparar as permissões', TRUE),
(ID_Q41, 'Verificar somente o tamanho do banco de dados', FALSE),
(ID_Q41, 'Medir apenas o tempo de carregamento da página inicial', FALSE),

-- Questão 42 | Correta: A
(ID_Q42, 'Definir estados do pedido e permitir a transição de cancelamento apenas nos estados anteriores ao faturamento', TRUE),
(ID_Q42, 'Usar apenas uma mensagem visual sem validação de regra', FALSE),
(ID_Q42, 'Apagar a informação de faturamento ao cancelar', FALSE),
(ID_Q42, 'Permitir cancelamento em qualquer estado sem registro', FALSE),

-- Questão 43 | Correta: C
(ID_Q43, 'Todo pedido pode existir apenas sem itens', FALSE),
(ID_Q43, 'Cada pedido pertence a vários itens sem vínculo', FALSE),
(ID_Q43, 'Cada item pertence a um pedido, e cada pedido possui um ou mais itens', TRUE),
(ID_Q43, 'Cada item pertence obrigatoriamente a vários pedidos', FALSE),

-- Questão 44 | Correta: C
(ID_Q44, 'Removê-lo da especificação para reduzir o escopo', FALSE),
(ID_Q44, 'Considerá-lo atendido sem evidência', FALSE),
(ID_Q44, 'Vinculá-lo a casos de teste e responsáveis por meio da rastreabilidade', TRUE),
(ID_Q44, 'Registrá-lo somente em conversa informal', FALSE),

-- Questão 45 | Correta: C
(ID_Q45, 'Modificar o código sem informar a equipe', FALSE),
(ID_Q45, 'Alterar somente o título do documento', FALSE),
(ID_Q45, 'Avaliar impacto, registrar decisão e atualizar artefatos e testes relacionados', TRUE),
(ID_Q45, 'Ignorar testes existentes', FALSE),

-- Questão 46 | Correta: D
(ID_Q46, 'Nenhuma pode ser documentada antes da codificação', FALSE),
(ID_Q46, 'Ambas são sempre escolhas de cores', FALSE),
(ID_Q46, 'A regra só existe no banco e a interface só existe no servidor', FALSE),
(ID_Q46, 'A regra define uma política do domínio; a interface define como a pessoa interage com a solução', TRUE),

-- Questão 47 | Correta: D
(ID_Q47, 'Autenticar o usuário mesmo com senha incorreta', FALSE),
(ID_Q47, 'Exibir a senha armazenada na mensagem de erro', FALSE),
(ID_Q47, 'Remover o cadastro automaticamente após uma falha', FALSE),
(ID_Q47, 'Manter a sessão não autenticada e informar falha sem expor a senha cadastrada', TRUE),

-- Questão 48 | Correta: A
(ID_Q48, 'Porque evidencia ordem de chamadas, dependências e respostas entre participantes', TRUE),
(ID_Q48, 'Porque garante desempenho sem medições', FALSE),
(ID_Q48, 'Porque elimina a necessidade de testar integrações', FALSE),
(ID_Q48, 'Porque representa apenas o layout das telas', FALSE),

-- Questão 49 | Correta: D
(ID_Q49, 'Ele passa automaticamente a ser não funcional', FALSE),
(ID_Q49, 'Ele não pode ser escrito em linguagem natural', FALSE),
(ID_Q49, 'Ele se torna um requisito de hardware', FALSE),
(ID_Q49, 'Fica mais difícil justificar sua necessidade e avaliar alterações', TRUE),

-- Questão 50 | Correta: C
(ID_Q50, 'Deixar permissões implícitas no nome das telas', FALSE),
(ID_Q50, 'Validar acesso somente por ocultação de botões', FALSE),
(ID_Q50, 'Definir permissões por papel e especificar operações autorizadas para cada perfil', TRUE),
(ID_Q50, 'Conceder a todos os perfis as mesmas permissões', FALSE),

-- Questão 51 | Correta: A
(ID_Q51, 'Auditabilidade e rastreabilidade das operações', TRUE),
(ID_Q51, 'Somente aparência visual', FALSE),
(ID_Q51, 'Apenas velocidade de digitação', FALSE),
(ID_Q51, 'Exclusivamente compatibilidade de navegador', FALSE),

-- Questão 52 | Correta: C
(ID_Q52, 'Funcionar rapidamente sem critérios de medição', FALSE),
(ID_Q52, 'Suportar uma quantidade excelente de usuários', FALSE),
(ID_Q52, 'Suportar 500 usuários simultâneos com 95% das operações concluídas em até 3 segundos no ambiente de teste definido', TRUE),
(ID_Q52, 'Ter desempenho satisfatório em qualquer situação', FALSE),

-- Questão 53 | Correta: C
(ID_Q53, 'O diagrama deixa de admitir atores externos', FALSE),
(ID_Q53, 'A relação passa a representar herança de classes', FALSE),
(ID_Q53, 'A relação comunica incorretamente que o comportamento incluído é sempre executado', TRUE),
(ID_Q53, 'O sistema é obrigado a usar orientação a objetos', FALSE),

-- Questão 54 | Correta: B
(ID_Q54, 'R3, R2, R1', FALSE),
(ID_Q54, 'R1, R2, R3', TRUE),
(ID_Q54, 'R2, R3, R1', FALSE),
(ID_Q54, 'R3, R1, R2', FALSE),

-- Questão 55 | Correta: B
(ID_Q55, 'Evitar documentar o termo', FALSE),
(ID_Q55, 'Construir um glossário acordado e validar exemplos de uso do termo', TRUE),
(ID_Q55, 'Escolher a definição da primeira pessoa entrevistada', FALSE),
(ID_Q55, 'Criar duas funcionalidades sem verificar o conflito', FALSE),

-- Questão 56 | Correta: B
(ID_Q56, 'A falha prova que todos os outros requisitos são inválidos', FALSE),
(ID_Q56, 'A funcionalidade ainda não atende integralmente ao requisito validado', TRUE),
(ID_Q56, 'A funcionalidade está concluída porque o código compila', FALSE),
(ID_Q56, 'O critério deve ser ignorado sem negociação', FALSE),

-- Questão 57 | Correta: C
(ID_Q57, 'A exclusão automática de todos os agendamentos', FALSE),
(ID_Q57, 'Uma mensagem genérica sem tratar a concorrência', FALSE),
(ID_Q57, 'Uma regra de negócio para impedir ou resolver reservas conflitantes', TRUE),
(ID_Q57, 'Somente a cor do calendário', FALSE),

-- Questão 58 | Correta: A
(ID_Q58, 'Deixar de verificar exceções, erros e fluxos alternativos relevantes', TRUE),
(ID_Q58, 'Eliminar todas as ambiguidades de requisitos', FALSE),
(ID_Q58, 'Aumentar obrigatoriamente a cobertura de erros', FALSE),
(ID_Q58, 'Garantir que as regras de negócio estejam completas', FALSE),

-- Questão 59 | Correta: C
(ID_Q59, 'Somente o nome do servidor', FALSE),
(ID_Q59, 'Exclusivamente a linguagem da interface', FALSE),
(ID_Q59, 'Prazos, categorias de dados, exceções legais e comportamento de exclusão', TRUE),
(ID_Q59, 'Apenas a cor do botão de exclusão', FALSE),

-- Questão 60 | Correta: C
(ID_Q60, 'Reduzir necessariamente a quantidade de requisitos', FALSE),
(ID_Q60, 'Impedir a existência de qualquer integração', FALSE),
(ID_Q60, 'Reproduzir ou ampliar falhas do processo por regras incompletas', TRUE),
(ID_Q60, 'Eliminar automaticamente todos os erros humanos', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE APS
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
WHERE q.quiz_id = @quiz_aps_id
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
