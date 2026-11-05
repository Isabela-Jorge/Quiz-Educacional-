
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
-- DISCIPLINA: Projetos de Desenvolvimento de Sistemas
-- MODULO: 2
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Projetos de Desenvolvimento de Sistemas
SET @quiz_pds_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Projetos de Desenvolvimento de Sistemas'
      AND d.modulo = 2
    LIMIT 1
);

-- ===========================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | QUESTOES 41 A 60 | NIVEL DIFICIL
-- ===========================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pds_id, 'Uma equipe concluiu 18 de 24 pontos planejados na sprint. Qual foi a proporção concluída?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Um projeto possui caminho A→B→D com durações 2, 5 e 3 dias, e caminho A→C→D com 2, 4 e 3 dias. Qual é o caminho crítico?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Se uma mudança afeta a API consumida pelo front-end, qual estratégia reduz incompatibilidades?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma funcionalidade passou nos testes unitários, mas falhou na comunicação entre serviços. Qual teste é mais indicado?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Ao estimar tarefas com alta incerteza, qual abordagem é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma equipe percebe que tarefas chegam a teste apenas no último dia da sprint. Qual melhoria tende a reduzir esse gargalo?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Qual é a principal vantagem de relacionar cada requisito a casos de teste?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Se o custo de corrigir uma falha cresce após a implantação, qual prática ajuda a detectá-la mais cedo?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma equipe adota trunk-based development. Qual prática é coerente com esse modelo?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Qual é a função de um plano de rollback em uma implantação?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Em uma aplicação com dados pessoais, qual decisão deve ocorrer já no planejamento?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma dependência externa apresenta falhas frequentes. Qual ação é mais apropriada?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Quando duas equipes implementam a mesma funcionalidade sem saber, qual falha de gestão está mais evidente?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Como avaliar se uma melhoria de desempenho atingiu seu objetivo?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Qual situação caracteriza mudança de escopo não controlada?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma funcionalidade depende de autenticação e de uma API ainda não implementadas. O que deve orientar o planejamento?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Um requisito exige disponibilidade de 99,9% em 30 dias de 24 horas. Aproximadamente quanto tempo de indisponibilidade esse limite permite?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Em uma revisão de segurança, identificou-se uma biblioteca vulnerável usada em produção. Qual resposta é adequada?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Uma entrega tem critérios de aceitação satisfeitos, mas falha em uma verificação obrigatória de segurança. Ela está pronta?', 'DIFICIL', 15, 15),
(@quiz_pds_id, 'Qual prática permite auditar a origem de uma alteração entregue?', 'DIFICIL', 15, 15);

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
WHERE quiz_id = @quiz_pds_id
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- =============================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | ALTERNATIVAS DAS QUESTOES 41 A 60
-- =============================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 650 | GABARITO C
(650, '60%.', FALSE),
(650, '80%.', FALSE),
(650, '75%.', TRUE),
(650, '90%.', FALSE),

-- QUESTAO 42 | ID 651 | GABARITO A
(651, 'A→B→D, com 10 dias.', TRUE),
(651, 'A→C→D, com 9 dias.', FALSE),
(651, 'A→B→D, com 7 dias.', FALSE),
(651, 'Ambos, com 12 dias.', FALSE),

-- QUESTAO 43 | ID 652 | GABARITO B
(652, 'Alterar o endpoint sem avisar a equipe.', FALSE),
(652, 'Definir contrato de API, versionar mudanças e testar a integração.', TRUE),
(652, 'Excluir testes de contrato existentes.', FALSE),
(652, 'Publicar a alteração diretamente em produção.', FALSE),

-- QUESTAO 44 | ID 653 | GABARITO A
(653, 'Teste de integração.', TRUE),
(653, 'Teste de instalação de fontes.', FALSE),
(653, 'Teste de tipografia.', FALSE),
(653, 'Teste de contraste de cores.', FALSE),

-- QUESTAO 45 | ID 654 | GABARITO C
(654, 'Fixar uma data sem avaliar dependências.', FALSE),
(654, 'Ignorar riscos porque a equipe é experiente.', FALSE),
(654, 'Explicitar premissas, decompor trabalho e revisar estimativas com evidências.', TRUE),
(654, 'Somar sempre um dia a qualquer tarefa.', FALSE),

-- QUESTAO 46 | ID 655 | GABARITO C
(655, 'Aumentar indefinidamente as tarefas iniciadas.', FALSE),
(655, 'Suspender revisões até a entrega final.', FALSE),
(655, 'Limitar trabalho em andamento e integrar/testar continuamente.', TRUE),
(655, 'Remover os critérios de aceitação.', FALSE),

-- QUESTAO 47 | ID 656 | GABARITO B
(656, 'Garantir ausência de defeitos em produção.', FALSE),
(656, 'Identificar requisitos sem cobertura e avaliar impactos de mudanças.', TRUE),
(656, 'Substituir os testes por documentação.', FALSE),
(656, 'Eliminar a necessidade de ambientes de teste.', FALSE),

-- QUESTAO 48 | ID 657 | GABARITO C
(657, 'Eliminar validação de requisitos.', FALSE),
(657, 'Executar testes somente após a entrega ao cliente.', FALSE),
(657, 'Revisões e testes desde as etapas iniciais do desenvolvimento.', TRUE),
(657, 'Evitar feedback durante a implementação.', FALSE),

-- QUESTAO 49 | ID 658 | GABARITO C
(658, 'Eliminar a execução de testes no merge.', FALSE),
(658, 'Manter branches isoladas por muitos meses sem integração.', FALSE),
(658, 'Integrar alterações pequenas e frequentes à linha principal com verificações automatizadas.', TRUE),
(658, 'Criar uma branch principal diferente por desenvolvedor.', FALSE),

-- QUESTAO 50 | ID 659 | GABARITO A
(659, 'Definir como retornar a um estado estável se a publicação falhar.', TRUE),
(659, 'Substituir o backup dos dados.', FALSE),
(659, 'Garantir que nunca haverá incidentes.', FALSE),
(659, 'Eliminar a necessidade de monitoramento.', FALSE),

-- QUESTAO 51 | ID 660 | GABARITO D
(660, 'Armazenar senhas em texto simples.', FALSE),
(660, 'Publicar registros reais no repositório.', FALSE),
(660, 'Coletar todos os dados disponíveis por precaução.', FALSE),
(660, 'Definir finalidade, minimização, controle de acesso e proteção dos dados.', TRUE),

-- QUESTAO 52 | ID 661 | GABARITO D
(661, 'Assumir disponibilidade permanente.', FALSE),
(661, 'Ignorar o impacto nos requisitos.', FALSE),
(661, 'Remover o problema do relatório de riscos.', FALSE),
(661, 'Registrar o risco e planejar tratamento, como contingência e monitoramento.', TRUE),

-- QUESTAO 53 | ID 662 | GABARITO A
(662, 'Ausência de visibilidade e coordenação do trabalho.', TRUE),
(662, 'Excesso de critérios de aceitação.', FALSE),
(662, 'Uso obrigatório de banco relacional.', FALSE),
(662, 'Existência de testes automatizados.', FALSE),

-- QUESTAO 54 | ID 663 | GABARITO B
(663, 'Observar somente a aparência da interface.', FALSE),
(663, 'Comparar métricas medidas antes e depois sob condições equivalentes.', TRUE),
(663, 'Verificar quantos commits foram realizados.', FALSE),
(663, 'Contar apenas linhas de código alteradas.', FALSE),

-- QUESTAO 55 | ID 664 | GABARITO D
(664, 'Registrar uma decisão em ata.', FALSE),
(664, 'Atualizar uma dependência conforme procedimento aprovado.', FALSE),
(664, 'Corrigir um defeito previsto no plano.', FALSE),
(664, 'Adicionar funcionalidades sem análise de impacto ou aprovação pertinente.', TRUE),

-- QUESTAO 56 | ID 665 | GABARITO B
(665, 'Ignorar a API até o teste de aceitação.', FALSE),
(665, 'Mapear dependências e sequenciar entregas ou definir contratos e simulações.', TRUE),
(665, 'Iniciar a publicação final imediatamente.', FALSE),
(665, 'Eliminar a autenticação para cumprir o prazo.', FALSE),

-- QUESTAO 57 | ID 666 | GABARITO B
(666, '7,2 horas.', FALSE),
(666, '43,2 minutos.', TRUE),
(666, '72 minutos.', FALSE),
(666, '4,32 minutos.', FALSE),

-- QUESTAO 58 | ID 667 | GABARITO B
(667, 'Remover os testes de segurança da pipeline.', FALSE),
(667, 'Avaliar exposição e criticidade, corrigir ou mitigar e validar a atualização.', TRUE),
(667, 'Aguardar indefinidamente sem registrar o risco.', FALSE),
(667, 'Desabilitar logs para ocultar alertas.', FALSE),

-- QUESTAO 59 | ID 668 | GABARITO C
(668, 'Sim; falhas de segurança são sempre irrelevantes.', FALSE),
(668, 'Sim; critérios funcionais dispensam segurança.', FALSE),
(668, 'Não; o critério de conclusão deve incluir a verificação de segurança exigida.', TRUE),
(668, 'Sim; basta a aprovação de um desenvolvedor.', FALSE),

-- QUESTAO 60 | ID 669 | GABARITO D
(669, 'Apagar branches e commits antes da implantação.', FALSE),
(669, 'Renomear arquivos sem registrar mudanças.', FALSE),
(669, 'Compartilhar o código apenas por mensagens privadas.', FALSE),
(669, 'Relacionar issue, pull request, revisão, commit e versão publicada.', TRUE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES DIFICIES
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

WHERE q.quiz_id = 25
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
