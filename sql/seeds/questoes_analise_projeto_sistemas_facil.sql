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
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar automaticamente o quiz da disciplina
SET @quiz_aps_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Análise e Projeto de Sistemas'
      AND d.modulo = 2
    LIMIT 1
);

-- ===============================================================
-- Análise e Projeto de Sistemas | QUESTÕES 01 A 20 | NÍVEL FÁCIL
-- ===============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_aps_id, 'Qual é o objetivo principal da análise de sistemas?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que é um requisito funcional?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual exemplo representa um requisito não funcional?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Quem é uma parte interessada (stakeholder) em um projeto?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Para que serve uma entrevista no levantamento de requisitos?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que representa um caso de uso?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Na UML, o que representa um ator em um diagrama de casos de uso?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual diagrama UML é usado para representar classes e suas relações estruturais?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual é a finalidade de um protótipo de interface?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que é uma regra de negócio?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que significa validar requisitos com o cliente?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual artefato descreve passos de uma atividade e suas decisões?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que é escopo de um projeto de software?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual característica torna um requisito mais verificável?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que é um fluxo alternativo em um caso de uso?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Qual é a função de um diagrama de sequência?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que é um requisito de segurança?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que caracteriza um processo de negócio?', 'FACIL', 5, 15),
(@quiz_aps_id, 'Para que serve a documentação de requisitos?', 'FACIL', 5, 15),
(@quiz_aps_id, 'O que significa priorizar requisitos?', 'FACIL', 5, 15);

-- ============================================================
-- CONSULTAR IDs DAS QUESTÕES FÁCEIS
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 8
  AND dificuldade = 'FACIL'
ORDER BY id;

-- =================================================================
-- ANÁLISE E PROJETO DE SISTEMAS | ALTERNATIVAS DAS QUESTÕES 01 a 20
-- =================================================================

INSERT INTO alternativa (
    questao_id, 
    texto_alternativa, 
    is_correta
)
VALUES
-- QUESTÃO 01 - ID 490 | Gabarito: C
(490, 'Instalar equipamentos sem planejamento', FALSE),
(490, 'Escolher apenas as cores das telas', FALSE),
(490, 'Compreender necessidades e definir requisitos da solução', TRUE),
(490, 'Substituir testes por reuniões', FALSE),

-- QUESTÃO 02 - ID 491 | Gabarito: C
(491, 'Uma característica exclusiva do servidor físico', FALSE),
(491, 'Uma estimativa de custo sem relação com funcionalidades', FALSE),
(491, 'Uma capacidade ou comportamento que o sistema deve oferecer', TRUE),
(491, 'Uma regra sobre a cor da parede da empresa', FALSE),

-- QUESTÃO 03 - ID 492 | Gabarito: D
(492, 'O usuário deve poder cadastrar clientes', FALSE),
(492, 'O aluno deve consultar suas notas', FALSE),
(492, 'O administrador deve excluir um pedido', FALSE),
(492, 'O sistema deve responder às consultas em até dois segundos', TRUE),

-- QUESTÃO 04 - ID 493 | Gabarito: B
(493, 'Somente quem escreve o código-fonte', FALSE),
(493, 'Pessoa ou organização afetada pelo sistema ou capaz de influenciá-lo', TRUE),
(493, 'Exclusivamente o gerente de infraestrutura', FALSE),
(493, 'Apenas o fornecedor de computadores', FALSE),

-- QUESTÃO 05 - ID 494 | Gabarito: C
(494, 'Compilar o código do sistema', FALSE),
(494, 'Executar testes automatizados no banco', FALSE),
(494, 'Coletar informações diretamente com pessoas envolvidas no processo', TRUE),
(494, 'Publicar a aplicação em produção', FALSE),

-- QUESTÃO 06 - ID 495 | Gabarito: D
(495, 'Um arquivo de configuração do navegador', FALSE),
(495, 'Uma cópia integral do código-fonte', FALSE),
(495, 'Uma lista de marcas de computadores', FALSE),
(495, 'Uma interação entre um ator e o sistema para alcançar um objetivo', TRUE),

-- QUESTÃO 07 - ID 496 | Gabarito: C
(496, 'Uma tabela do banco de dados', FALSE),
(496, 'Uma classe abstrata do código', FALSE),
(496, 'Um papel externo que interage com o sistema', TRUE),
(496, 'Obrigatoriamente um funcionário humano', FALSE),

-- QUESTÃO 08 - ID 497 | Gabarito: C
(497, 'Diagrama de implantação', FALSE),
(497, 'Diagrama de sequência', FALSE),
(497, 'Diagrama de classes', TRUE),
(497, 'Diagrama de atividades', FALSE),

-- QUESTÃO 09 - ID 498 | Gabarito: D
(498, 'Criar automaticamente o banco de dados', FALSE),
(498, 'Garantir ausência de qualquer defeito', FALSE),
(498, 'Substituir toda a documentação de requisitos', FALSE),
(498, 'Permitir visualizar e discutir uma proposta de interação antes da implementação completa', TRUE),

-- QUESTÃO 10 - ID 499 | Gabarito: A
(499, 'Uma restrição ou política que orienta operações do domínio', TRUE),
(499, 'Um atalho de teclado do desenvolvedor', FALSE),
(499, 'Uma preferência pessoal sobre o editor de código', FALSE),
(499, 'Um componente obrigatório do hardware', FALSE),

-- QUESTÃO 11 - ID 500 | Gabarito: C
(500, 'Executar apenas o instalador do sistema', FALSE),
(500, 'Escolher a linguagem sem consultar ninguém', FALSE),
(500, 'Confirmar que os requisitos refletem suas necessidades e expectativas', TRUE),
(500, 'Apagar requisitos antigos sem análise', FALSE),

-- QUESTÃO 12 - ID 501 | Gabarito: C
(501, 'Diagrama de implantação', FALSE),
(501, 'Diagrama de componentes', FALSE),
(501, 'Diagrama de atividades', TRUE),
(501, 'Diagrama de pacotes', FALSE),

-- QUESTÃO 13 - ID 502 | Gabarito: D
(502, 'Velocidade da conexão à internet', FALSE),
(502, 'Quantidade de linhas de código já escritas', FALSE),
(502, 'Lista exclusiva de senhas de acesso', FALSE),
(502, 'Delimitação do que será e do que não será entregue', TRUE),

-- QUESTÃO 14 - ID 503 | Gabarito: C
(503, 'Descrever somente preferências pessoais', FALSE),
(503, 'Utilizar expressões vagas como bem rápido', FALSE),
(503, 'Definir uma condição observável e mensurável', TRUE),
(503, 'Evitar qualquer critério de aceitação', FALSE),

-- QUESTÃO 15 - ID 504 | Gabarito: D
(504, 'Uma cópia obrigatória do banco de dados', FALSE),
(504, 'Uma mudança de linguagem de programação', FALSE),
(504, 'Um arquivo de log do servidor', FALSE),
(504, 'Um caminho diferente do fluxo principal sob determinada condição', TRUE),

-- QUESTÃO 16 - ID 505 | Gabarito: C
(505, 'Listar somente os custos de licenciamento', FALSE),
(505, 'Representar apenas a disposição física de servidores', FALSE),
(505, 'Mostrar a troca de mensagens entre participantes ao longo do tempo', TRUE),
(505, 'Definir cores e fontes da interface', FALSE),

-- QUESTÃO 17 - ID 506 | Gabarito: C
(506, 'Uma decisão sobre o logotipo da empresa', FALSE),
(506, 'Um prazo de reunião da equipe', FALSE),
(506, 'Uma condição que protege informações e operações do sistema', TRUE),
(506, 'Uma funcionalidade exclusiva de emissão de relatórios', FALSE),

-- QUESTÃO 18 - ID 507 | Gabarito: D
(507, 'Somente a execução de consultas SQL', FALSE),
(507, 'Exclusivamente a montagem de computadores', FALSE),
(507, 'Uma lista de bibliotecas de programação', FALSE),
(507, 'Conjunto de atividades relacionadas que produz um resultado para a organização', TRUE),

-- QUESTÃO 19 - ID 508 | Gabarito: D
(508, 'Substituir todos os testes de aceitação', FALSE),
(508, 'Dispensar comunicação entre participantes', FALSE),
(508, 'Garantir que nenhuma mudança ocorrerá', FALSE),
(508, 'Registrar o comportamento esperado e apoiar entendimento, implementação e testes', TRUE),

-- QUESTÃO 20 - ID 509 | Gabarito: D
(509, 'Organizar arquivos somente por tamanho', FALSE),
(509, 'Eliminar todos os requisitos não funcionais', FALSE),
(509, 'Ordenar desenvolvedores por idade', FALSE),
(509, 'Definir sua ordem de importância ou implementação segundo critérios do projeto', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS
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
        ELSE 'ERRO'
    END AS validacao
FROM questao q
LEFT JOIN alternativa a
    ON a.questao_id = q.id
WHERE q.quiz_id = 8
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
