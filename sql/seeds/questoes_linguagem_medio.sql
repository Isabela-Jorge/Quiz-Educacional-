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
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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

-- ==================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | QUESTOES 21 A 40 | NIVEL MEDIO
-- ==================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_linguagem_id, 'Qual reescrita elimina a ambiguidade de “O gerente avisou ao analista que seu relatório estava incompleto”, quando o relatório é do analista?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual conectivo expressa oposição entre duas ideias?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual conectivo introduz uma conclusão decorrente do que foi exposto?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual trecho é mais adequado para relatar um incidente técnico sem atribuir culpa antes da investigação?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Em um relatório, qual frase diferencia fato observado de hipótese?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual organização é mais adequada para um relatório técnico de diagnóstico?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual frase utiliza linguagem inclusiva e profissional ao orientar uma equipe?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Ao parafrasear uma ideia de outra fonte, qual procedimento é correto?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual frase apresenta concordância verbal adequada?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual alternativa emprega pontuação adequada para introduzir uma enumeração?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual é a melhor forma de comunicar um prazo com precisão?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual trecho mantém um tom adequado ao solicitar correção de um documento?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual estratégia torna uma apresentação técnica mais acessível a um público não especializado?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual frase separa corretamente uma recomendação de um resultado medido?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual é a função de uma referência bibliográfica?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual abordagem é apropriada ao resumir um artigo técnico?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual recurso melhora a coesão ao evitar repetição excessiva de um termo?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual frase expressa relação de causa de forma explícita?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Em uma reunião, qual pergunta favorece o esclarecimento de um requisito ambíguo?', 'MEDIO', 10, 15),
(@quiz_linguagem_id, 'Qual registro é mais útil para acompanhar uma tarefa atribuída em reunião?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- =====================================================================
-- LINGUAGEM, TRABALHO E TECNOLOGIA | ALTERNATIVAS DAS QUESTOES 21 A 40
-- =====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 1110 | GABARITO A
(1110, 'O gerente avisou ao analista que o relatório do analista estava incompleto.', TRUE),
(1110, 'O gerente avisou que o relatório dele estava incompleto.', FALSE),
(1110, 'O gerente avisou ao analista que seu relatório continuava incompleto.', FALSE),
(1110, 'O gerente, com seu relatório, avisou ao analista.', FALSE),

-- QUESTAO 22 | ID 1111 | GABARITO C
(1111, 'Portanto.', FALSE),
(1111, 'Porque.', FALSE),
(1111, 'Entretanto.', TRUE),
(1111, 'Além disso.', FALSE),

-- QUESTAO 23 | ID 1112 | GABARITO B
(1112, 'Contudo.', FALSE),
(1112, 'Portanto.', TRUE),
(1112, 'Embora.', FALSE),
(1112, 'Enquanto.', FALSE),

-- QUESTAO 24 | ID 1113 | GABARITO B
(1113, 'Com certeza a equipe de rede causou a falha.', FALSE),
(1113, 'O serviço ficou indisponível às 14h; a causa ainda está em análise.', TRUE),
(1113, 'O sistema parou por motivos absurdos.', FALSE),
(1113, 'O erro aconteceu porque alguém foi descuidado.', FALSE),

-- QUESTAO 25 | ID 1114 | GABARITO B
(1114, 'A hipótese foi comprovada apenas porque parece provável.', FALSE),
(1114, 'O log registrou cinco falhas; suspeita-se de instabilidade na conexão.', TRUE),
(1114, 'A conexão falhou, logo o fornecedor é culpado.', FALSE),
(1114, 'O servidor está ruim e isso é óbvio.', FALSE),

-- QUESTAO 26 | ID 1115 | GABARITO A
(1115, 'Contexto, procedimento, resultados e conclusão.', TRUE),
(1115, 'Conclusão, saudação, propaganda e assinatura.', FALSE),
(1115, 'Anexos, despedida, slogan e introdução.', FALSE),
(1115, 'Resultados, piadas, opiniões e título.', FALSE),

-- QUESTAO 27 | ID 1116 | GABARITO D
(1116, 'A equipe que não entender é incompetente.', FALSE),
(1116, 'Só os funcionários mais antigos precisam saber.', FALSE),
(1116, 'A orientação vale apenas para quem concordar.', FALSE),
(1116, 'Todas as pessoas da equipe devem receber as instruções.', TRUE),

-- QUESTAO 28 | ID 1117 | GABARITO C
(1117, 'Trocar poucas palavras e omitir a referência.', FALSE),
(1117, 'Atribuir a ideia a si mesmo.', FALSE),
(1117, 'Reformular com palavras próprias e indicar a fonte.', TRUE),
(1117, 'Copiar integralmente sem aspas nem crédito.', FALSE),

-- QUESTAO 29 | ID 1118 | GABARITO B
(1118, 'Os resultado da pesquisa foram apresentado ontem.', FALSE),
(1118, 'Os resultados da pesquisa foram apresentados ontem.', TRUE),
(1118, 'Os resultados da pesquisa foi apresentado ontem.', FALSE),
(1118, 'Os resultados da pesquisa foi apresentados ontem.', FALSE),

-- QUESTAO 30 | ID 1119 | GABARITO B
(1119, 'O relatório apresenta três tópicos; contexto, método e resultados.', FALSE),
(1119, 'O relatório apresenta três tópicos: contexto, método e resultados.', TRUE),
(1119, 'O relatório apresenta: três tópicos contexto método e resultados.', FALSE),
(1119, 'O relatório apresenta três tópicos? contexto, método e resultados.', FALSE),

-- QUESTAO 31 | ID 1120 | GABARITO C
(1120, 'Envie logo que possível.', FALSE),
(1120, 'Preciso disso em breve.', FALSE),
(1120, 'Envie a versão revisada até 16 de outubro, às 17h, horário de Brasília.', TRUE),
(1120, 'Mande em algum momento da semana.', FALSE),

-- QUESTAO 32 | ID 1121 | GABARITO B
(1121, 'Isso está horrível, refaça.', FALSE),
(1121, 'Poderia revisar os valores da tabela 2, por favor?', TRUE),
(1121, 'Não vou explicar; descubra sozinho.', FALSE),
(1121, 'Você errou tudo na tabela 2.', FALSE),

-- QUESTAO 33 | ID 1122 | GABARITO C
(1122, 'Aumentar a quantidade de jargões.', FALSE),
(1122, 'Excluir o objetivo da apresentação.', FALSE),
(1122, 'Explicar termos técnicos e usar exemplos pertinentes.', TRUE),
(1122, 'Usar apenas siglas sem defini-las.', FALSE),

-- QUESTAO 34 | ID 1123 | GABARITO B
(1123, 'A taxa de erro foi de 3%, provando negligência.', FALSE),
(1123, 'A taxa de erro foi de 3%; recomenda-se investigar os registros.', TRUE),
(1123, 'Investigar registros é o mesmo que medir 3%.', FALSE),
(1123, 'A recomendação é um dado coletado pelo sistema.', FALSE),

-- QUESTAO 35 | ID 1124 | GABARITO D
(1124, 'Substituir o desenvolvimento do texto.', FALSE),
(1124, 'Confirmar automaticamente a veracidade do conteúdo.', FALSE),
(1124, 'Indicar somente o número de páginas escritas.', FALSE),
(1124, 'Permitir a identificação da obra consultada.', TRUE),

-- QUESTAO 36 | ID 1125 | GABARITO C
(1125, 'Omitir resultados que contrariem a opinião pessoal.', FALSE),
(1125, 'Copiar apenas frases isoladas sem contexto.', FALSE),
(1125, 'Preservar as ideias principais sem distorcer o sentido.', TRUE),
(1125, 'Acrescentar conclusões que o autor não apresentou.', FALSE),

-- QUESTAO 37 | ID 1126 | GABARITO A
(1126, 'Usar referências pronominais claras e sinônimos adequados.', TRUE),
(1126, 'Trocar o assunto a cada frase.', FALSE),
(1126, 'Eliminar todos os conectivos.', FALSE),
(1126, 'Usar pronomes sem antecedente identificável.', FALSE),

-- QUESTAO 38 | ID 1127 | GABARITO B
(1127, 'O envio atrasou, por outro lado a conexão foi interrompida.', FALSE),
(1127, 'O envio atrasou porque a conexão foi interrompida.', TRUE),
(1127, 'O envio atrasou, entretanto a conexão foi interrompida.', FALSE),
(1127, 'O envio atrasou, além disso a conexão foi interrompida.', FALSE),

-- QUESTAO 39 | ID 1128 | GABARITO D
(1128, 'Podemos deixar esse detalhe para depois, sem registrar?', FALSE),
(1128, 'Todo mundo já entendeu, certo?', FALSE),
(1128, 'Não precisamos definir critérios, correto?', FALSE),
(1128, 'O que significa “resposta rápida” em segundos, neste projeto?', TRUE),

-- QUESTAO 40 | ID 1129 | GABARITO D
(1129, 'Uma impressão geral sem datas.', FALSE),
(1129, 'Apenas o primeiro nome do participante.', FALSE),
(1129, 'Somente o título da reunião.', FALSE),
(1129, 'Responsável, atividade, prazo e situação.', TRUE);

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
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
