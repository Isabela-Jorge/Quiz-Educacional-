-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Análise e Projeto de Sistemas - Módulo 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
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
-- APS | Questões 01 a 20 | Nível fácil
-- ============================================================

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
-- APS | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | Correta: C
(ID_Q1, 'Instalar equipamentos sem planejamento', FALSE),
(ID_Q1, 'Escolher apenas as cores das telas', FALSE),
(ID_Q1, 'Compreender necessidades e definir requisitos da solução', TRUE),
(ID_Q1, 'Substituir testes por reuniões', FALSE),

-- Questão 02 | Correta: C
(ID_Q2, 'Uma característica exclusiva do servidor físico', FALSE),
(ID_Q2, 'Uma estimativa de custo sem relação com funcionalidades', FALSE),
(ID_Q2, 'Uma capacidade ou comportamento que o sistema deve oferecer', TRUE),
(ID_Q2, 'Uma regra sobre a cor da parede da empresa', FALSE),

-- Questão 03 | Correta D
(ID_Q3, 'O usuário deve poder cadastrar clientes', FALSE),
(ID_Q3, 'O aluno deve consultar suas notas', FALSE),
(ID_Q3, 'O administrador deve excluir um pedido', FALSE),
(ID_Q3, 'O sistema deve responder às consultas em até dois segundos', TRUE),

-- Questão 04 | Correta B
(ID_Q4, 'Somente quem escreve o código-fonte', FALSE),
(ID_Q4, 'Pessoa ou organização afetada pelo sistema ou capaz de influenciá-lo', TRUE),
(ID_Q4, 'Exclusivamente o gerente de infraestrutura', FALSE),
(ID_Q4, 'Apenas o fornecedor de computadores', FALSE),

-- Questão 05 | Correta C
(ID_Q5, 'Compilar o código do sistema', FALSE),
(ID_Q5, 'Executar testes automatizados no banco', FALSE),
(ID_Q5, 'Coletar informações diretamente com pessoas envolvidas no processo', TRUE),
(ID_Q5, 'Publicar a aplicação em produção', FALSE),

-- Questão 06 | Correta D
(ID_Q6, 'Um arquivo de configuração do navegador', FALSE),
(ID_Q6, 'Uma cópia integral do código-fonte', FALSE),
(ID_Q6, 'Uma lista de marcas de computadores', FALSE),
(ID_Q6, 'Uma interação entre um ator e o sistema para alcançar um objetivo', TRUE),

-- Questão 07 | Correta C
(ID_Q7, 'Uma tabela do banco de dados', FALSE),
(ID_Q7, 'Uma classe abstrata do código', FALSE),
(ID_Q7, 'Um papel externo que interage com o sistema', TRUE),
(ID_Q7, 'Obrigatoriamente um funcionário humano', FALSE),

-- Questão 08 | Correta C
(ID_Q8, 'Diagrama de implantação', FALSE),
(ID_Q8, 'Diagrama de sequência', FALSE),
(ID_Q8, 'Diagrama de classes', TRUE),
(ID_Q8, 'Diagrama de atividades', FALSE),

-- Questão 09 | Correta D
(ID_Q9, 'Criar automaticamente o banco de dados', FALSE),
(ID_Q9, 'Garantir ausência de qualquer defeito', FALSE),
(ID_Q9, 'Substituir toda a documentação de requisitos', FALSE),
(ID_Q9, 'Permitir visualizar e discutir uma proposta de interação antes da implementação completa', TRUE),

-- Questão 10 | Correta A
(ID_Q10, 'Uma restrição ou política que orienta operações do domínio', TRUE),
(ID_Q10, 'Um atalho de teclado do desenvolvedor', FALSE),
(ID_Q10, 'Uma preferência pessoal sobre o editor de código', FALSE),
(ID_Q10, 'Um componente obrigatório do hardware', FALSE),

-- Questão 11 | Correta C
(ID_Q11, 'Executar apenas o instalador do sistema', FALSE),
(ID_Q11, 'Escolher a linguagem sem consultar ninguém', FALSE),
(ID_Q11, 'Confirmar que os requisitos refletem suas necessidades e expectativas', TRUE),
(ID_Q11, 'Apagar requisitos antigos sem análise', FALSE),

-- Questão 12 | Correta C
(ID_Q12, 'Diagrama de implantação', FALSE),
(ID_Q12, 'Diagrama de componentes', FALSE),
(ID_Q12, 'Diagrama de atividades', TRUE),
(ID_Q12, 'Diagrama de pacotes', FALSE),

-- Questão 13 | Correta D
(ID_Q13, 'Velocidade da conexão à internet', FALSE),
(ID_Q13, 'Quantidade de linhas de código já escritas', FALSE),
(ID_Q13, 'Lista exclusiva de senhas de acesso', FALSE),
(ID_Q13, 'Delimitação do que será e do que não será entregue', TRUE),

-- Questão 14 | Correta C
(ID_Q14, 'Descrever somente preferências pessoais', FALSE),
(ID_Q14, 'Utilizar expressões vagas como ''bem rápido''', FALSE),
(ID_Q14, 'Definir uma condição observável e mensurável', TRUE),
(ID_Q14, 'Evitar qualquer critério de aceitação', FALSE),

-- Questão 15 | Correta D
(ID_Q15, 'Uma cópia obrigatória do banco de dados', FALSE),
(ID_Q15, 'Uma mudança de linguagem de programação', FALSE),
(ID_Q15, 'Um arquivo de log do servidor', FALSE),
(ID_Q15, 'Um caminho diferente do fluxo principal sob determinada condição', TRUE),

-- Questão 16 | Correta C
(ID_Q16, 'Listar somente os custos de licenciamento', FALSE),
(ID_Q16, 'Representar apenas a disposição física de servidores', FALSE),
(ID_Q16, 'Mostrar a troca de mensagens entre participantes ao longo do tempo', TRUE),
(ID_Q16, 'Definir cores e fontes da interface', FALSE),

-- Questão 17 | Correta C
(ID_Q17, 'Uma decisão sobre o logotipo da empresa', FALSE),
(ID_Q17, 'Um prazo de reunião da equipe', FALSE),
(ID_Q17, 'Uma condição que protege informações e operações do sistema', TRUE),
(ID_Q17, 'Uma funcionalidade exclusiva de emissão de relatórios', FALSE),

-- Questão 18 | Correta D
(ID_Q18, 'Somente a execução de consultas SQL', FALSE),
(ID_Q18, 'Exclusivamente a montagem de computadores', FALSE),
(ID_Q18, 'Uma lista de bibliotecas de programação', FALSE),
(ID_Q18, 'Conjunto de atividades relacionadas que produz um resultado para a organização', TRUE),

-- Questão 19 | Correta D
(ID_Q19, 'Substituir todos os testes de aceitação', FALSE),
(ID_Q19, 'Dispensar comunicação entre participantes', FALSE),
(ID_Q19, 'Garantir que nenhuma mudança ocorrerá', FALSE),
(ID_Q19, 'Registrar o comportamento esperado e apoiar entendimento, implementação e testes', TRUE),

-- Questão 20 | Correta D
(ID_Q20, 'Organizar arquivos somente por tamanho', FALSE),
(ID_Q20, 'Eliminar todos os requisitos não funcionais', FALSE),
(ID_Q20, 'Ordenar desenvolvedores por idade', FALSE),
(ID_Q20, 'Definir sua ordem de importância ou implementação segundo critérios do projeto', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCEIS DE APS
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
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;