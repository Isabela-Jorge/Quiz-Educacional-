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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
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
-- Análise e Projeto de Sistemas | QUESTÕES 21 A 40 | NÍVEL MÉDIO
-- ===============================================================

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
(@quiz_aps_id, 'Em uma história de usuário, para que serve o trecho ''para que...'' ?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual é a principal utilidade de um diagrama de contexto?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'O que representa uma pré-condição em um caso de uso?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Como a análise de impacto auxilia no controle de mudanças?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Em UML, qual relação expressa que uma classe especializada herda características de outra?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual evidência é mais adequada para validar um protótipo de cadastro?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual alternativa descreve corretamente um requisito de disponibilidade?', 'MEDIO', 10, 15),
(@quiz_aps_id, 'Qual prática reduz ambiguidades no levantamento de requisitos?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- =================================================================
-- ANÁLISE E PROJETO DE SISTEMAS | ALTERNATIVAS DAS QUESTÕES 21 a 40
-- =================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTÃO 21 | ID 510 | GABARITO C
(510, 'Requisito de disponibilidade', FALSE),
(510, 'Restrição de hardware', FALSE),
(510, 'Requisito funcional', TRUE),
(510, 'Métrica de desempenho', FALSE),

-- QUESTÃO 22 | ID 511 | GABARITO C
(511, 'O sistema deve ser muito veloz', FALSE),
(511, 'O sistema precisa ser moderno', FALSE),
(511, '95% das consultas devem responder em até 2 segundos sob a carga definida', TRUE),
(511, 'As consultas devem parecer rápidas', FALSE),

-- QUESTÃO 23 | ID 512 | GABARITO B
(512, 'Quando dois atores têm nomes parecidos', FALSE),
(512, 'Quando um caso de uso incorpora obrigatoriamente o comportamento de outro', TRUE),
(512, 'Quando um caso de uso pode ocorrer apenas excepcionalmente', FALSE),
(512, 'Quando duas classes compartilham o mesmo atributo', FALSE),

-- QUESTÃO 24 | ID 513 | GABARITO A
(513, 'Comportamento adicional inserido sob condições específicas em um ponto de extensão', TRUE),
(513, 'Comunicação física entre dois servidores', FALSE),
(513, 'Execução obrigatória e incondicional de outro caso de uso', FALSE),
(513, 'Herança entre tabelas de banco de dados', FALSE),

-- QUESTÃO 25 | ID 514 | GABARITO D
(514, 'Converter diagramas em hardware', FALSE),
(514, 'Substituir o controle de versões do código', FALSE),
(514, 'Gerar interfaces sem validação', FALSE),
(514, 'Relacionar requisitos às suas origens e aos artefatos que os atendem', TRUE),

-- QUESTÃO 26 | ID 515 | GABARITO D
(515, 'Considerar apenas o caminho de sucesso', FALSE),
(515, 'Eliminar perguntas sobre regras de negócio', FALSE),
(515, 'Entrevistar somente a equipe de infraestrutura', FALSE),
(515, 'Analisar cenários alternativos e situações de erro com os envolvidos', TRUE),

-- QUESTÃO 27 | ID 516 | GABARITO A
(516, 'Uma ou mais instâncias relacionadas', TRUE),
(516, 'No máximo uma instância', FALSE),
(516, 'Exatamente zero instâncias', FALSE),
(516, 'Qualquer quantidade, inclusive zero', FALSE),

-- QUESTÃO 28 | ID 517 | GABARITO C
(517, 'São termos obrigatoriamente idênticos em todos os contextos', FALSE),
(517, 'Verificação ocorre apenas após implantação; validação apenas na codificação', FALSE),
(517, 'Verificação avalia qualidade e consistência da especificação; validação avalia aderência às necessidades', TRUE),
(517, 'Verificação mede somente custo; validação mede somente prazo', FALSE),

-- QUESTÃO 29 | ID 518 | GABARITO D
(518, 'Substituir a necessidade de compreender o usuário', FALSE),
(518, 'Eliminar a necessidade de testar comportamentos', FALSE),
(518, 'Impedir toda alteração futura no produto', FALSE),
(518, 'Estabelecer condições objetivas para considerar a funcionalidade atendida', TRUE),

-- QUESTÃO 30 | ID 519 | GABARITO B
(519, 'Fluxo alternativo do usuário', FALSE),
(519, 'Restrição de projeto ou tecnologia', TRUE),
(519, 'Ator principal do sistema', FALSE),
(519, 'Caso de uso independente', FALSE),

-- QUESTÃO 31 | ID 520 | GABARITO C
(520, 'Calcular automaticamente custos do projeto', FALSE),
(520, 'Representar a disposição dos botões na interface', FALSE),
(520, 'Modelar estados de um objeto e transições causadas por eventos', TRUE),
(520, 'Descrever somente a estrutura física de rede', FALSE),

-- QUESTÃO 32 | ID 521 | GABARITO B
(521, 'Implementar os dois sem análise', FALSE),
(521, 'Registrar o conflito e negociá-lo com as partes interessadas antes de consolidar a especificação', TRUE),
(521, 'Excluir ambos sem comunicar ninguém', FALSE),
(521, 'Escolher aleatoriamente um deles', FALSE),

-- QUESTÃO 33 | ID 522 | GABARITO C
(522, 'Definir obrigatoriamente a linguagem de programação', FALSE),
(522, 'Informar apenas o endereço do servidor', FALSE),
(522, 'Explicitar o benefício ou objetivo de negócio desejado', TRUE),
(522, 'Listar o número de linhas de código', FALSE),

-- QUESTÃO 34 | ID 523 | GABARITO D
(523, 'Exibir a estrutura de diretórios do projeto', FALSE),
(523, 'Substituir o levantamento de requisitos', FALSE),
(523, 'Detalhar cada método privado de uma classe', FALSE),
(523, 'Delimitar o sistema e mostrar suas interações com entidades externas', TRUE),

-- QUESTÃO 35 | ID 524 | GABARITO D
(524, 'Um erro de compilação do código', FALSE),
(524, 'Um requisito que nunca pode ser testado', FALSE),
(524, 'Uma resposta exibida somente após concluir o cenário', FALSE),
(524, 'Uma situação que deve ser verdadeira antes de iniciar o cenário', TRUE),

-- QUESTÃO 36 | ID 525 | GABARITO B
(525, 'Dispensa aprovação de mudanças relevantes', FALSE),
(525, 'Identifica requisitos, componentes e testes potencialmente afetados pela alteração', TRUE),
(525, 'Garante que toda mudança seja gratuita', FALSE),
(525, 'Impede o surgimento de novas necessidades', FALSE),

-- QUESTÃO 37 | ID 526 | GABARITO B
(526, 'Agregação simples', FALSE),
(526, 'Generalização', TRUE),
(526, 'Associação unidirecional obrigatória', FALSE),
(526, 'Dependência de implantação', FALSE),

-- QUESTÃO 38 | ID 527 | GABARITO C
(527, 'Apenas a opinião do programador responsável', FALSE),
(527, 'A velocidade do computador usado na apresentação', FALSE),
(527, 'Observação de usuários representativos executando tarefas e relatando dificuldades', TRUE),
(527, 'Somente a quantidade de arquivos HTML', FALSE),

-- QUESTÃO 39 | ID 528 | GABARITO B
(528, 'O usuário deve alterar sua senha', FALSE),
(528, 'O serviço deve permanecer operacional por pelo menos 99,9% do período mensal definido', TRUE),
(528, 'O sistema deve cadastrar novos usuários', FALSE),
(528, 'O gestor deve exportar um relatório', FALSE),

-- QUESTÃO 40 | ID 529 | GABARITO B
(529, 'Evitar revisar termos com o cliente', FALSE),
(529, 'Usar exemplos concretos, glossário e critérios de aceitação', TRUE),
(529, 'Misturar regras de negócio com opiniões pessoais', FALSE),
(529, 'Adotar palavras vagas sem definições', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
