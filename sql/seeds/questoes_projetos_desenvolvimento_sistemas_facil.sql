
-- ===============================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ===============================================================

-- ===============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Projetos de Desenvolvimento de Sistemas - Módulo 2
-- DIFICULDADE: FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ===============================================================

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


-- ==========================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | QUESTOES 01 A 20 | NIVEL FACIL
-- ==========================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_pds_id, 'Qual é o objetivo principal do planejamento de um projeto de software?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que representa uma entrega em um projeto?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual ferramenta é usada para controlar versões de código?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Em um quadro Kanban, o que uma coluna geralmente representa?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que é um requisito funcional?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é a função de um cronograma?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que significa trabalhar de forma colaborativa em um projeto?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que é um protótipo de interface?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é a finalidade de uma reunião de acompanhamento?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que é um bug em um software?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual documento pode registrar o escopo de um projeto?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que caracteriza uma tarefa concluída?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é o propósito de um repositório remoto?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é a finalidade de um teste de software?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que significa prazo de entrega?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é a função de um responsável por tarefa?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que é uma história de usuário?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Qual é um exemplo de requisito não funcional?', 'FACIL', 5, 15),
(@quiz_pds_id, 'Por que documentar decisões técnicas?', 'FACIL', 5, 15),
(@quiz_pds_id, 'O que é uma dependência entre tarefas?', 'FACIL', 5, 15);

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
  AND dificuldade = 'FACIL'
ORDER BY id;


-- ============================================================================
-- PROJETOS DE DESENVOLVIMENTO DE SISTEMAS | ALTERNATIVAS DAS QUESTOES 01 A 20
-- ============================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 610 | GABARITO C
(610, 'Garantir que nenhuma mudança ocorra.', FALSE),
(610, 'Substituir o levantamento de requisitos.', FALSE),
(610, 'Definir atividades, recursos, prazos e objetivos do projeto.', TRUE),
(610, 'Eliminar a necessidade de testes.', FALSE),

-- QUESTAO 02 | ID 611 | GABARITO C
(611, 'Um erro encontrado no código.', FALSE),
(611, 'Uma reunião sem registro.', FALSE),
(611, 'Um resultado verificável produzido pelo trabalho.', TRUE),
(611, 'Uma senha de acesso ao repositório.', FALSE),

-- QUESTAO 03 | ID 612 | GABARITO A
(612, 'Git.', TRUE),
(612, 'Navegador web.', FALSE),
(612, 'Figma.', FALSE),
(612, 'Postman.', FALSE),

-- QUESTAO 04 | ID 613 | GABARITO C
(613, 'Uma permissão do sistema operacional.', FALSE),
(613, 'Um tipo de banco de dados.', FALSE),
(613, 'Uma etapa do fluxo de trabalho.', TRUE),
(613, 'Uma linguagem de programação.', FALSE),

-- QUESTAO 05 | ID 614 | GABARITO D
(614, 'A cor obrigatória do computador do desenvolvedor.', FALSE),
(614, 'O nome da pasta de instalação.', FALSE),
(614, 'O orçamento de marketing da empresa.', FALSE),
(614, 'Uma capacidade ou comportamento esperado do sistema.', TRUE),

-- QUESTAO 06 | ID 615 | GABARITO B
(615, 'Executar consultas SQL.', FALSE),
(615, 'Organizar atividades e seus períodos previstos.', TRUE),
(615, 'Desenhar automaticamente interfaces.', FALSE),
(615, 'Criptografar dados pessoais.', FALSE),

-- QUESTAO 07 | ID 616 | GABARITO A
(616, 'Compartilhar responsabilidades e coordenar contribuições.', TRUE),
(616, 'Evitar revisões entre colegas.', FALSE),
(616, 'Editar sempre o mesmo arquivo sem comunicação.', FALSE),
(616, 'Manter as decisões apenas com uma pessoa.', FALSE),

-- QUESTAO 08 | ID 617 | GABARITO C
(617, 'Um serviço de hospedagem.', FALSE),
(617, 'Um relatório de desempenho do servidor.', FALSE),
(617, 'Uma representação preliminar da interação com o sistema.', TRUE),
(617, 'Uma cópia de segurança do banco.', FALSE),

-- QUESTAO 09 | ID 618 | GABARITO B
(618, 'Excluir tarefas ainda não iniciadas.', FALSE),
(618, 'Verificar progresso, impedimentos e próximos passos.', TRUE),
(618, 'Alterar senhas de todos os usuários.', FALSE),
(618, 'Substituir todos os testes automatizados.', FALSE),

-- QUESTAO 10 | ID 619 | GABARITO C
(619, 'Um modelo de contrato.', FALSE),
(619, 'Uma funcionalidade obrigatória do cliente.', FALSE),
(619, 'Um defeito que provoca comportamento incorreto.', TRUE),
(619, 'Um tipo de licença de hardware.', FALSE),

-- QUESTAO 11 | ID 620 | GABARITO B
(620, 'Histórico do navegador.', FALSE),
(620, 'Documento de requisitos e delimitação de entregas.', TRUE),
(620, 'Lista de fontes instaladas.', FALSE),
(620, 'Arquivo de cache do sistema.', FALSE),

-- QUESTAO 12 | ID 621 | GABARITO C
(621, 'Ter sido mencionada em uma conversa.', FALSE),
(621, 'Ter sido atribuída a alguém.', FALSE),
(621, 'Atender aos critérios de conclusão definidos pela equipe.', TRUE),
(621, 'Estar marcada como urgente.', FALSE),

-- QUESTAO 13 | ID 622 | GABARITO C
(622, 'Dispensar autenticação de usuários.', FALSE),
(622, 'Criar requisitos automaticamente.', FALSE),
(622, 'Compartilhar e armazenar versões do projeto entre colaboradores.', TRUE),
(622, 'Substituir o ambiente de execução.', FALSE),

-- QUESTAO 14 | ID 623 | GABARITO B
(623, 'Escolher o nome do produto.', FALSE),
(623, 'Verificar comportamentos e identificar falhas.', TRUE),
(623, 'Definir salários da equipe.', FALSE),
(623, 'Garantir ausência absoluta de defeitos.', FALSE),

-- QUESTAO 15 | ID 624 | GABARITO C
(624, 'Quantidade de linhas de código.', FALSE),
(624, 'Número de usuários simultâneos.', FALSE),
(624, 'Data ou período acordado para concluir uma entrega.', TRUE),
(624, 'Versão do compilador.', FALSE),

-- QUESTAO 16 | ID 625 | GABARITO B
(625, 'Impedir que colegas consultem a tarefa.', FALSE),
(625, 'Acompanhar e executar ou coordenar sua realização.', TRUE),
(625, 'Aprovar sozinho qualquer mudança de escopo.', FALSE),
(625, 'Eliminar o registro de progresso.', FALSE),

-- QUESTAO 17 | ID 626 | GABARITO A
(626, 'Descrição breve de uma necessidade sob a perspectiva do usuário.', TRUE),
(626, 'Um registro de acesso ao servidor.', FALSE),
(626, 'Uma sequência de comandos SQL.', FALSE),
(626, 'Uma lista de bibliotecas instaladas.', FALSE),

-- QUESTAO 18 | ID 627 | GABARITO D
(627, 'O administrador pode excluir uma conta.', FALSE),
(627, 'O usuário pode cadastrar um produto.', FALSE),
(627, 'O aluno pode responder a um quiz.', FALSE),
(627, 'O sistema deve responder em até dois segundos sob condições definidas.', TRUE),

-- QUESTAO 19 | ID 628 | GABARITO B
(628, 'Impedir futuras revisões.', FALSE),
(628, 'Facilitar entendimento, manutenção e rastreabilidade.', TRUE),
(628, 'Eliminar a necessidade de comunicação.', FALSE),
(628, 'Substituir a implementação do sistema.', FALSE),

-- QUESTAO 20 | ID 629 | GABARITO B
(629, 'Uma variável declarada em código.', FALSE),
(629, 'Uma relação em que uma atividade depende de outra.', TRUE),
(629, 'Uma conexão obrigatória com a internet.', FALSE),
(629, 'Uma cópia duplicada de um arquivo.', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES FACEIS
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
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
