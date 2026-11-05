-- ====================================================================
-- IMPORTANTE:
-- Os IDs das questoes serao consultados apos a insercao.
-- As alternativas serao cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Nao execute novamente o INSERT caso as questoes
-- ja estejam cadastradas, para evitar duplicacoes.
-- ====================================================================

-- ====================================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Linguagem, Trabalho e Tecnologia - Modulo 3
-- DIFICULDADE: NIVEL FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ====================================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_linguagem_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Linguagem, Trabalho e Tecnologia'
      AND d.modulo = 3
    LIMIT 1
);

-- ===================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | QUESTOES 01 A 20 | NIVEL FACIL
-- ===================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_linguagem_id, 'Qual é a finalidade principal de um texto instrucional?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Em um e-mail profissional, qual assunto é mais informativo?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual elemento apresenta a ideia central de um parágrafo argumentativo?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é a função de um título em um relatório?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'O que caracteriza a linguagem formal em um contexto profissional?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual documento registra decisões e encaminhamentos de uma reunião?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Em um texto, qual é a função do ponto de interrogação?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'O que é o destinatário de uma mensagem?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é o objetivo de revisar um texto antes do envio?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual alternativa apresenta uma saudação adequada a um e-mail formal?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'O que é uma fonte de informação em uma pesquisa?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual recurso organiza informações em linhas e colunas?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Em uma apresentação oral, qual prática facilita a compreensão?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é a função de uma conclusão em um texto argumentativo?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual documento costuma apresentar formação e experiência profissional?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é a finalidade de uma legenda em um gráfico?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'O que é uma sigla?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é a função de um parágrafo?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é o objetivo de uma comunicação objetiva?', 'FACIL', 5, 15),
(@quiz_linguagem_id, 'Qual é a finalidade de citar uma fonte em um trabalho?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_linguagem_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ======================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | ALTERNATIVAS DAS QUESTOES 01 A 20
-- ======================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 1090 | GABARITO B
(1090, 'Descrever emoções pessoais.', FALSE),
(1090, 'Orientar a execução de uma tarefa.', TRUE),
(1090, 'Narrar uma história fictícia.', FALSE),
(1090, 'Defender uma opinião política.', FALSE),

-- QUESTAO 02 | ID 1091 | GABARITO A
(1091, 'Solicitação de revisão do relatório mensal', TRUE),
(1091, 'Uma coisa', FALSE),
(1091, 'Oi', FALSE),
(1091, 'Importante!!!', FALSE),

-- QUESTAO 03 | ID 1092 | GABARITO C
(1092, 'A numeração das páginas.', FALSE),
(1092, 'A assinatura do remetente.', FALSE),
(1092, 'A frase que expressa a tese ou argumento principal.', TRUE),
(1092, 'A data de impressão.', FALSE),

-- QUESTAO 04 | ID 1093 | GABARITO B
(1093, 'Apresentar a senha do sistema.', FALSE),
(1093, 'Indicar claramente o tema do documento.', TRUE),
(1093, 'Substituir todas as conclusões.', FALSE),
(1093, 'Eliminar a necessidade de referências.', FALSE),

-- QUESTAO 05 | ID 1094 | GABARITO A
(1094, 'Adequação à norma-padrão e à situação comunicativa.', TRUE),
(1094, 'Ausência de pontuação.', FALSE),
(1094, 'Emprego constante de abreviações informais.', FALSE),
(1094, 'Uso obrigatório de gírias.', FALSE),

-- QUESTAO 06 | ID 1095 | GABARITO D
(1095, 'Convite.', FALSE),
(1095, 'Currículo.', FALSE),
(1095, 'Cartaz publicitário.', FALSE),
(1095, 'Ata.', TRUE),

-- QUESTAO 07 | ID 1096 | GABARITO D
(1096, 'Encerrar sempre uma ordem.', FALSE),
(1096, 'Indicar uma lista de itens.', FALSE),
(1096, 'Introduzir uma citação longa.', FALSE),
(1096, 'Marcar uma pergunta direta.', TRUE),

-- QUESTAO 08 | ID 1097 | GABARITO C
(1097, 'O arquivo anexado.', FALSE),
(1097, 'O aplicativo usado para escrevê-la.', FALSE),
(1097, 'A pessoa ou grupo a quem ela se dirige.', TRUE),
(1097, 'A data em que foi enviada.', FALSE),

-- QUESTAO 09 | ID 1098 | GABARITO D
(1098, 'Substituir fatos por opiniões.', FALSE),
(1098, 'Aumentar o tamanho sem necessidade.', FALSE),
(1098, 'Eliminar todas as informações técnicas.', FALSE),
(1098, 'Corrigir problemas de clareza, ortografia e coerência.', TRUE),

-- QUESTAO 10 | ID 1099 | GABARITO D
(1099, 'E aí, galera!', FALSE),
(1099, 'Fala, pessoal!!!', FALSE),
(1099, 'Salve, turma!', FALSE),
(1099, 'Prezada equipe,', TRUE),

-- QUESTAO 11 | ID 1100 | GABARITO B
(1100, 'O nome da pasta do computador.', FALSE),
(1100, 'A origem dos dados ou das ideias consultadas.', TRUE),
(1100, 'A cor usada no documento.', FALSE),
(1100, 'O tamanho da letra no editor.', FALSE),

-- QUESTAO 12 | ID 1101 | GABARITO B
(1101, 'Rodapé.', FALSE),
(1101, 'Tabela.', TRUE),
(1101, 'Epígrafe.', FALSE),
(1101, 'Saudação.', FALSE),

-- QUESTAO 13 | ID 1102 | GABARITO A
(1102, 'Organizar as ideias em sequência lógica.', TRUE),
(1102, 'Ler muito rapidamente.', FALSE),
(1102, 'Mudar de assunto sem transição.', FALSE),
(1102, 'Usar termos desconhecidos sem explicar.', FALSE),

-- QUESTAO 14 | ID 1103 | GABARITO B
(1103, 'Substituir todos os exemplos por imagens.', FALSE),
(1103, 'Retomar a discussão e sintetizar o posicionamento.', TRUE),
(1103, 'Apagar a tese apresentada.', FALSE),
(1103, 'Introduzir um tema sem relação.', FALSE),

-- QUESTAO 15 | ID 1104 | GABARITO B
(1104, 'Manual de instalação.', FALSE),
(1104, 'Currículo.', TRUE),
(1104, 'Nota fiscal.', FALSE),
(1104, 'Ata de reunião.', FALSE),

-- QUESTAO 16 | ID 1105 | GABARITO B
(1105, 'Substituir o título do trabalho.', FALSE),
(1105, 'Identificar o significado de elementos visuais.', TRUE),
(1105, 'Alterar os dados medidos.', FALSE),
(1105, 'Esconder a origem dos números.', FALSE),

-- QUESTAO 17 | ID 1106 | GABARITO D
(1106, 'Um erro obrigatório de ortografia.', FALSE),
(1106, 'Uma palavra usada apenas em poesia.', FALSE),
(1106, 'Uma frase sem verbo.', FALSE),
(1106, 'Forma abreviada composta, em geral, por letras iniciais.', TRUE),

-- QUESTAO 18 | ID 1107 | GABARITO A
(1107, 'Agrupar ideias relacionadas em uma unidade textual.', TRUE),
(1107, 'Impedir a divisão do texto.', FALSE),
(1107, 'Eliminar sinais de pontuação.', FALSE),
(1107, 'Substituir todas as frases por tópicos.', FALSE),

-- QUESTAO 19 | ID 1108 | GABARITO B
(1108, 'Omitir os dados essenciais.', FALSE),
(1108, 'Transmitir a informação com clareza e sem excessos.', TRUE),
(1108, 'Usar frases deliberadamente vagas.', FALSE),
(1108, 'Repetir a mesma ideia sem necessidade.', FALSE),

-- QUESTAO 20 | ID 1109 | GABARITO C
(1109, 'Garantir que todo conteúdo esteja correto.', FALSE),
(1109, 'Dispensar a leitura do material.', FALSE),
(1109, 'Identificar a origem de informações utilizadas.', TRUE),
(1109, 'Ocultar o autor da informação.', FALSE);

-- ============================================================
-- VALIDACAO DAS QUESTOES
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

WHERE q.quiz_id = 17
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
