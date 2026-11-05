
-- ============================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente este INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Projetos de Desenvolvimento de Sistemas
-- MODULO: 2
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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

-- ========================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | QUESTOES 21 A 40 | NIVEL MEDIO
-- ========================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pds_id, 'Qual é a diferença principal entre backlog do produto e backlog da sprint?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Quando uma equipe utiliza branches por funcionalidade, qual é o benefício principal?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual prática reduz o risco de integrar código defeituoso?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'O que é um critério de aceitação?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Como uma matriz de riscos contribui para o projeto?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Em Scrum, qual é a finalidade da retrospectiva?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'O que caracteriza um MVP?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Por que usar convenções de commits?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual é a função de uma pipeline de integração contínua?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Quando o cliente solicita uma nova funcionalidade, qual é a primeira medida adequada?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Como diferenciar esforço de duração em uma estimativa?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'O que é rastreabilidade de requisitos?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual é a utilidade de uma Definition of Done?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual é uma consequência comum de requisitos ambíguos?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Em um planejamento incremental, como o produto evolui?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'O que é débito técnico?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual medida ajuda a evitar conflitos recorrentes entre integrantes?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Para que serve uma matriz RACI?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Como priorizar um defeito crítico que impede o login?', 'MEDIO', 10, 15),
(@quiz_pds_id, 'Qual é o benefício de validar protótipos com usuários antes da implementação?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- =============================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | ALTERNATIVAS DAS QUESTOES 21 A 40
-- =============================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 630 | GABARITO D
(630, 'Ambos são listas de erros exclusivamente.', FALSE),
(630, 'O primeiro registra testes; o segundo substitui requisitos.', FALSE),
(630, 'O primeiro guarda senhas; o segundo guarda códigos-fonte.', FALSE),
(630, 'O primeiro reúne demandas do produto; o segundo seleciona trabalho para a sprint.', TRUE),

-- QUESTAO 22 | ID 631 | GABARITO B
(631, 'Permitir commits sem histórico.', FALSE),
(631, 'Isolar alterações antes de integrá-las ao código compartilhado.', TRUE),
(631, 'Eliminar conflitos de mesclagem em todos os casos.', FALSE),
(631, 'Evitar qualquer necessidade de revisão.', FALSE),

-- QUESTAO 23 | ID 632 | GABARITO D
(632, 'Apagar o histórico após cada entrega.', FALSE),
(632, 'Desabilitar validações no repositório.', FALSE),
(632, 'Mesclar mudanças diretamente sem verificação.', FALSE),
(632, 'Revisão de pull request acompanhada de testes.', TRUE),

-- QUESTAO 24 | ID 633 | GABARITO A
(633, 'Condição verificável para considerar uma funcionalidade atendida.', TRUE),
(633, 'Estimativa informal de salário.', FALSE),
(633, 'Nome escolhido para uma branch.', FALSE),
(633, 'Ferramenta que gera diagramas.', FALSE),

-- QUESTAO 25 | ID 634 | GABARITO D
(634, 'Substitui a implementação do produto.', FALSE),
(634, 'Determina automaticamente a linguagem ideal.', FALSE),
(634, 'Garante que nenhum risco ocorrerá.', FALSE),
(634, 'Ajuda a avaliar probabilidade, impacto e respostas aos riscos.', TRUE),

-- QUESTAO 26 | ID 635 | GABARITO D
(635, 'Publicar a versão final sem testes.', FALSE),
(635, 'Definir exclusivamente a arquitetura do banco.', FALSE),
(635, 'Apresentar somente novas funcionalidades ao cliente.', FALSE),
(635, 'Inspecionar a forma de trabalho e propor melhorias.', TRUE),

-- QUESTAO 27 | ID 636 | GABARITO B
(636, 'Um software que não exige manutenção.', FALSE),
(636, 'Uma versão mínima capaz de validar hipóteses com usuários.', TRUE),
(636, 'Uma interface sem regras de negócio.', FALSE),
(636, 'Um produto com todas as funcionalidades previstas.', FALSE),

-- QUESTAO 28 | ID 637 | GABARITO D
(637, 'Garantir desempenho máximo da aplicação.', FALSE),
(637, 'Impedir que o código seja executado.', FALSE),
(637, 'Eliminar a necessidade de branches.', FALSE),
(637, 'Facilitar a compreensão do histórico e das alterações.', TRUE),

-- QUESTAO 29 | ID 638 | GABARITO A
(638, 'Automatizar verificações como build e testes após alterações.', TRUE),
(638, 'Garantir que requisitos nunca mudem.', FALSE),
(638, 'Substituir a definição do escopo.', FALSE),
(638, 'Dispensar controle de versões.', FALSE),

-- QUESTAO 30 | ID 639 | GABARITO A
(639, 'Analisar impacto, prioridade e compatibilidade com o escopo.', TRUE),
(639, 'Alterar o cronograma sem comunicar a equipe.', FALSE),
(639, 'Implementar imediatamente sem registro.', FALSE),
(639, 'Excluir uma entrega existente sem consulta.', FALSE),

-- QUESTAO 31 | ID 640 | GABARITO B
(640, 'Esforço é sempre igual ao prazo contratual.', FALSE),
(640, 'Esforço mede trabalho necessário; duração mede tempo decorrido.', TRUE),
(640, 'Duração indica exclusivamente custo financeiro.', FALSE),
(640, 'Ambos são sempre medidos em linhas de código.', FALSE),

-- QUESTAO 32 | ID 641 | GABARITO A
(641, 'Capacidade de relacionar requisitos a entregas, código e testes.', TRUE),
(641, 'Processo de remover versões antigas.', FALSE),
(641, 'Forma de distribuir senhas.', FALSE),
(641, 'Método de compressão de imagens.', FALSE),

-- QUESTAO 33 | ID 642 | GABARITO C
(642, 'Definir somente o nome comercial do produto.', FALSE),
(642, 'Determinar o salário dos desenvolvedores.', FALSE),
(642, 'Estabelecer critérios compartilhados para considerar trabalho concluído.', TRUE),
(642, 'Substituir o backlog por mensagens.', FALSE),

-- QUESTAO 34 | ID 643 | GABARITO A
(643, 'Implementações divergentes e retrabalho.', TRUE),
(643, 'Eliminação de defeitos.', FALSE),
(643, 'Redução garantida do custo do projeto.', FALSE),
(643, 'Melhoria automática do desempenho.', FALSE),

-- QUESTAO 35 | ID 644 | GABARITO B
(644, 'Somente por uma entrega única ao final.', FALSE),
(644, 'Por entregas sucessivas que adicionam valor e permitem feedback.', TRUE),
(644, 'Sem validação com interessados.', FALSE),
(644, 'Sem necessidade de priorizar requisitos.', FALSE),

-- QUESTAO 36 | ID 645 | GABARITO B
(645, 'Valor de uma licença de software.', FALSE),
(645, 'Custo futuro decorrente de decisões técnicas que exigirão correção ou melhoria.', TRUE),
(645, 'Pagamento devido ao provedor de nuvem.', FALSE),
(645, 'Estimativa de receita do produto.', FALSE),

-- QUESTAO 37 | ID 646 | GABARITO B
(646, 'Permitir alterações simultâneas sem comunicação.', FALSE),
(646, 'Definir responsabilidades, interfaces e acordos de integração.', TRUE),
(646, 'Desabilitar notificações do projeto.', FALSE),
(646, 'Centralizar todas as tarefas sem registro.', FALSE),

-- QUESTAO 38 | ID 647 | GABARITO A
(647, 'Esclarecer quem executa, responde, consulta e é informado.', TRUE),
(647, 'Substituir um sistema de versionamento.', FALSE),
(647, 'Classificar tabelas por tamanho.', FALSE),
(647, 'Registrar tempos de resposta de APIs.', FALSE),

-- QUESTAO 39 | ID 648 | GABARITO D
(648, 'Adiar automaticamente para a última entrega.', FALSE),
(648, 'Remover os testes de autenticação.', FALSE),
(648, 'Ignorar o defeito se a interface estiver pronta.', FALSE),
(648, 'Avaliar impacto e urgência e ajustar o backlog conforme o risco.', TRUE),

-- QUESTAO 40 | ID 649 | GABARITO A
(649, 'Identificar problemas de usabilidade e expectativas antecipadamente.', TRUE),
(649, 'Evitar qualquer mudança futura de requisitos.', FALSE),
(649, 'Eliminar toda necessidade de documentação.', FALSE),
(649, 'Garantir que o código nunca terá falhas.', FALSE);

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

WHERE q.quiz_id = 25
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
