-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Análise e Projeto de Sistemas - Módulo 2
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- APS | Questões 01 a 20 | Nível médio
-- ============================================================


INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_aps_id, 'Em um sistema de biblioteca, ''emprestar livro'' é classificado como quê?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual formulação é mais adequada para um requisito de desempenho?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em UML, quando usar a relação «include» entre casos de uso?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em UML, o que indica «extend» entre casos de uso?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é a finalidade de uma matriz de rastreabilidade?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual técnica ajuda a descobrir exceções em um processo de atendimento?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em um diagrama de classes, o que representa a multiplicidade 1..*?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual diferença há entre verificação e validação de requisitos?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é o benefício de definir critérios de aceitação para uma história de usuário?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Uma restrição que obriga o uso de um SGBD específico é classificada como quê?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é a finalidade do diagrama de estados da UML?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é a melhor ação ao encontrar dois requisitos contraditórios?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em uma história de usuário, para que serve o trecho ''para que...''?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é a principal utilidade de um diagrama de contexto?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'O que representa uma pré-condição em um caso de uso?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Como a análise de impacto auxilia no controle de mudanças?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em UML, qual relação expressa que uma classe especializada herda características de outra?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual evidência é mais adequada para validar um protótipo de cadastro?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual alternativa descreve corretamente um requisito de disponibilidade?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual prática reduz ambiguidades no levantamento de requisitos?', 'MEDIO', 10, 15);

-- ============================================================
-- APS - ALTERNATIVAS DAS QUESTÕES 21 A 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | Correta: C
(ID_Q21, 'Requisito de disponibilidade', FALSE),
(ID_Q21, 'Restrição de hardware', FALSE),
(ID_Q21, 'Requisito funcional', TRUE),
(ID_Q21, 'Métrica de desempenho', FALSE),

-- Questão 22 | Correta: C
(ID_Q22, 'O sistema deve ser muito veloz', FALSE),
(ID_Q22, 'O sistema precisa ser moderno', FALSE),
(ID_Q22, '95% das consultas devem responder em até 2 segundos sob a carga definida', TRUE),
(ID_Q22, 'As consultas devem parecer rápidas', FALSE),

-- Questão 23 | Correta: B
(ID_Q23, 'Quando dois atores têm nomes parecidos', FALSE),
(ID_Q23, 'Quando um caso de uso incorpora obrigatoriamente o comportamento de outro', TRUE),
(ID_Q23, 'Quando um caso de uso pode ocorrer apenas excepcionalmente', FALSE),
(ID_Q23, 'Quando duas classes compartilham o mesmo atributo', FALSE),

-- Questão 24 | Correta: A
(ID_Q24, 'Comportamento adicional inserido sob condições específicas em um ponto de extensão', TRUE),
(ID_Q24, 'Comunicação física entre dois servidores', FALSE),
(ID_Q24, 'Execução obrigatória e incondicional de outro caso de uso', FALSE),
(ID_Q24, 'Herança entre tabelas de banco de dados', FALSE),

-- Questão 25 | Correta: D
(ID_Q25, 'Converter diagramas em hardware', FALSE),
(ID_Q25, 'Substituir o controle de versões do código', FALSE),
(ID_Q25, 'Gerar interfaces sem validação', FALSE),
(ID_Q25, 'Relacionar requisitos às suas origens e aos artefatos que os atendem', TRUE),

-- Questão 26 | Correta: D
(ID_Q26, 'Considerar apenas o caminho de sucesso', FALSE),
(ID_Q26, 'Eliminar perguntas sobre regras de negócio', FALSE),
(ID_Q26, 'Entrevistar somente a equipe de infraestrutura', FALSE),
(ID_Q26, 'Analisar cenários alternativos e situações de erro com os envolvidos', TRUE),

-- Questão 27 | Correta: A
(ID_Q27, 'Uma ou mais instâncias relacionadas', TRUE),
(ID_Q27, 'No máximo uma instância', FALSE),
(ID_Q27, 'Exatamente zero instâncias', FALSE),
(ID_Q27, 'Qualquer quantidade, inclusive zero', FALSE),

-- Questão 28 | Correta: C
(ID_Q28, 'São termos obrigatoriamente idênticos em todos os contextos', FALSE),
(ID_Q28, 'Verificação ocorre apenas após implantação; validação apenas na codificação', FALSE),
(ID_Q28, 'Verificação avalia qualidade e consistência da especificação; validação avalia aderência às necessidades', TRUE),
(ID_Q28, 'Verificação mede somente custo; validação mede somente prazo', FALSE),

-- Questão 29 | Correta: D
(ID_Q29, 'Substituir a necessidade de compreender o usuário', FALSE),
(ID_Q29, 'Eliminar a necessidade de testar comportamentos', FALSE),
(ID_Q29, 'Impedir toda alteração futura no produto', FALSE),
(ID_Q29, 'Estabelecer condições objetivas para considerar a funcionalidade atendida', TRUE),

-- Questão 30 | Correta: B
(ID_Q30, 'Fluxo alternativo do usuário', FALSE),
(ID_Q30, 'Restrição de projeto ou tecnologia', TRUE),
(ID_Q30, 'Ator principal do sistema', FALSE),
(ID_Q30, 'Caso de uso independente', FALSE),

-- Questão 31 | Correta: C
(ID_Q31, 'Calcular automaticamente custos do projeto', FALSE),
(ID_Q31, 'Representar a disposição dos botões na interface', FALSE),
(ID_Q31, 'Modelar estados de um objeto e transições causadas por eventos', TRUE),
(ID_Q31, 'Descrever somente a estrutura física de rede', FALSE),

-- Questão 32 | Correta: B
(ID_Q32, 'Implementar os dois sem análise', FALSE),
(ID_Q32, 'Registrar o conflito e negociá-lo com as partes interessadas antes de consolidar a especificação', TRUE),
(ID_Q32, 'Excluir ambos sem comunicar ninguém', FALSE),
(ID_Q32, 'Escolher aleatoriamente um deles', FALSE),

-- Questão 33 | Correta: C
(ID_Q33, 'Definir obrigatoriamente a linguagem de programação', FALSE),
(ID_Q33, 'Informar apenas o endereço do servidor', FALSE),
(ID_Q33, 'Explicitar o benefício ou objetivo de negócio desejado', TRUE),
(ID_Q33, 'Listar o número de linhas de código', FALSE),

-- Questão 34 | Correta: D
(ID_Q34, 'Exibir a estrutura de diretórios do projeto', FALSE),
(ID_Q34, 'Substituir o levantamento de requisitos', FALSE),
(ID_Q34, 'Detalhar cada método privado de uma classe', FALSE),
(ID_Q34, 'Delimitar o sistema e mostrar suas interações com entidades externas', TRUE),

-- Questão 35 | Correta: D
(ID_Q35, 'Um erro de compilação do código', FALSE),
(ID_Q35, 'Um requisito que nunca pode ser testado', FALSE),
(ID_Q35, 'Uma resposta exibida somente após concluir o cenário', FALSE),
(ID_Q35, 'Uma situação que deve ser verdadeira antes de iniciar o cenário', TRUE),

-- Questão 36 | Correta: B
(ID_Q36, 'Dispensa aprovação de mudanças relevantes', FALSE),
(ID_Q36, 'Identifica requisitos, componentes e testes potencialmente afetados pela alteração', TRUE),
(ID_Q36, 'Garante que toda mudança seja gratuita', FALSE),
(ID_Q36, 'Impede o surgimento de novas necessidades', FALSE),

-- Questão 37 | Correta: B
(ID_Q37, 'Agregação simples', FALSE),
(ID_Q37, 'Generalização', TRUE),
(ID_Q37, 'Associação unidirecional obrigatória', FALSE),
(ID_Q37, 'Dependência de implantação', FALSE),

-- Questão 38 | Correta: C
(ID_Q38, 'Apenas a opinião do programador responsável', FALSE),
(ID_Q38, 'A velocidade do computador usado na apresentação', FALSE),
(ID_Q38, 'Observação de usuários representativos executando tarefas e relatando dificuldades', TRUE),
(ID_Q38, 'Somente a quantidade de arquivos HTML', FALSE),

-- Questão 39 | Correta: B
(ID_Q39, 'O usuário deve alterar sua senha', FALSE),
(ID_Q39, 'O serviço deve permanecer operacional por pelo menos 99,9% do período mensal definido', TRUE),
(ID_Q39, 'O sistema deve cadastrar novos usuários', FALSE),
(ID_Q39, 'O gestor deve exportar um relatório', FALSE),

-- Questão 40 | Correta: B
(ID_Q40, 'Evitar revisar termos com o cliente', FALSE),
(ID_Q40, 'Usar exemplos concretos, glossário e critérios de aceitação', TRUE),
(ID_Q40, 'Misturar regras de negócio com opiniões pessoais', FALSE),
(ID_Q40, 'Adotar palavras vagas sem definições', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE APS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
