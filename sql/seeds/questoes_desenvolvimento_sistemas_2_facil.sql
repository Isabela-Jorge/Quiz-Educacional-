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
-- DISCIPLINA: Desenvolvimento de Sistemas II - Modulo 3
-- DIFICULDADE: FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II'
      AND d.modulo = 3
    LIMIT 1
);

-- ================================================================
-- Desenvolvimento de Sistemas II | QUESTOES 01 A 20 | NIVEL FÁCIL
-- ================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds2_id, 'Qual é a finalidade principal de uma API?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP é normalmente utilizado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP costuma ser usado para criar um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual formato é amplamente utilizado na troca de dados em APIs REST?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que indica o código HTTP 200?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que indica o código HTTP 404?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Em uma API, o que é um endpoint?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual é a função de um banco de dados em uma aplicação?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual ferramenta pode ser utilizada para testar requisições HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual cabeçalho HTTP informa o tipo de conteúdo enviado?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que representa o corpo de uma requisição HTTP?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual código HTTP normalmente indica que um recurso foi criado?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual método HTTP normalmente solicita a exclusão de um recurso?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa CRUD?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que é uma chave primária em uma tabela relacional?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Qual é a finalidade da autenticação?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que significa API RESTful?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'Para que serve a documentação de uma API?', 'FACIL', 5, 15),
(@quiz_ds2_id, 'O que é persistência de dados?', 'FACIL', 5, 15);

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
WHERE quiz_id = @quiz_ds2_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ====================================================================
-- Desenvolvimento de Sistemas II | Alternativas das questões  01 a 20
-- ====================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 01 | ID 850 | CORRETA: D
(850, 'Substituir o sistema operacional.', FALSE),
(850, 'Eliminar a necessidade de redes.', FALSE),
(850, 'Criar somente interfaces gráficas.', FALSE),
(850, 'Permitir a comunicação entre sistemas por meio de interfaces definidas.', TRUE),

-- QUESTAO 02 | ID 851 | CORRETA: C
(851, 'High Transfer Text Program.', FALSE),
(851, 'Hyperlink Technical Process.', FALSE),
(851, 'Hypertext Transfer Protocol.', TRUE),
(851, 'Host Transfer Terminal Protocol.', FALSE),

-- QUESTAO 03 | ID 852 | CORRETA: B
(852, 'POST.', FALSE),
(852, 'GET.', TRUE),
(852, 'PATCH.', FALSE),
(852, 'DELETE.', FALSE),

-- QUESTAO 04 | ID 853 | CORRETA: B
(853, 'GET.', FALSE),
(853, 'POST.', TRUE),
(853, 'HEAD.', FALSE),
(853, 'OPTIONS.', FALSE),

-- QUESTAO 05 | ID 854 | CORRETA: A
(854, 'JSON.', TRUE),
(854, 'PNG.', FALSE),
(854, 'MP3.', FALSE),
(854, 'PDF.', FALSE),

-- QUESTAO 06 | ID 855 | CORRETA: D
(855, 'O recurso não foi encontrado.', FALSE),
(855, 'O servidor não conseguiu processar a solicitação.', FALSE),
(855, 'A autenticação é obrigatória.', FALSE),
(855, 'A requisição foi processada com sucesso.', TRUE),

-- QUESTAO 07 | ID 856 | CORRETA: C
(856, 'O recurso foi criado.', FALSE),
(856, 'A requisição foi bem-sucedida.', FALSE),
(856, 'O recurso solicitado não foi encontrado.', TRUE),
(856, 'O servidor está redirecionando a solicitação.', FALSE),

-- QUESTAO 08 | ID 857 | CORRETA: C
(857, 'Um arquivo de imagem obrigatório.', FALSE),
(857, 'Um tipo de memória RAM.', FALSE),
(857, 'Um endereço que disponibiliza uma operação ou recurso.', TRUE),
(857, 'Um programa antivírus.', FALSE),

-- QUESTAO 09 | ID 858 | CORRETA: B
(858, 'Substituir todas as regras de negócio.', FALSE),
(858, 'Armazenar e permitir consultar dados de forma organizada.', TRUE),
(858, 'Executar somente páginas HTML.', FALSE),
(858, 'Garantir acesso à internet sem rede.', FALSE),

-- QUESTAO 10 | ID 859 | CORRETA: A
(859, 'Postman.', TRUE),
(859, 'Paint.', FALSE),
(859, 'Calculadora.', FALSE),
(859, 'Bloco de Notas, sem extensões.', FALSE),

-- QUESTAO 11 | ID 860 | CORRETA: D
(860, 'User-Agent.', FALSE),
(860, 'Accept-Language.', FALSE),
(860, 'Cache-Control.', FALSE),
(860, 'Content-Type.', TRUE),

-- QUESTAO 12 | ID 861 | CORRETA: D
(861, 'O endereço IP físico do computador.', FALSE),
(861, 'A senha do servidor obrigatoriamente.', FALSE),
(861, 'A porta USB utilizada.', FALSE),
(861, 'Os dados enviados na mensagem, quando existentes.', TRUE),

-- QUESTAO 13 | ID 862 | CORRETA: C
(862, '301 Moved Permanently.', FALSE),
(862, '404 Not Found.', FALSE),
(862, '201 Created.', TRUE),
(862, '500 Internal Server Error.', FALSE),

-- QUESTAO 14 | ID 863 | CORRETA: B
(863, 'GET.', FALSE),
(863, 'DELETE.', TRUE),
(863, 'TRACE.', FALSE),
(863, 'HEAD.', FALSE),

-- QUESTAO 15 | ID 864 | CORRETA: A
(864, 'Criar, ler, atualizar e excluir dados.', TRUE),
(864, 'Copiar, reiniciar, utilizar e depurar.', FALSE),
(864, 'Conectar, renderizar, unificar e distribuir.', FALSE),
(864, 'Compilar, registrar, atualizar e desenhar.', FALSE),

-- QUESTAO 16 | ID 865 | CORRETA: A
(865, 'Um atributo ou conjunto de atributos que identifica cada registro.', TRUE),
(865, 'Uma senha de acesso ao sistema.', FALSE),
(865, 'Um campo obrigatoriamente textual.', FALSE),
(865, 'Um endereço de uma API externa.', FALSE),

-- QUESTAO 17 | ID 866 | CORRETA: D
(866, 'Determinar apenas as cores da interface.', FALSE),
(866, 'Comprimir arquivos de imagem.', FALSE),
(866, 'Ordenar resultados de uma consulta SQL.', FALSE),
(866, 'Verificar a identidade de quem solicita acesso.', TRUE),

-- QUESTAO 18 | ID 867 | CORRETA: C
(867, 'Uma API que obrigatoriamente utiliza XML.', FALSE),
(867, 'Uma API que funciona somente em redes locais.', FALSE),
(867, 'Uma API projetada segundo restrições arquiteturais REST.', TRUE),
(867, 'Uma API sem recursos identificáveis.', FALSE),

-- QUESTAO 19 | ID 868 | CORRETA: B
(868, 'Substituir o banco de dados.', FALSE),
(868, 'Descrever operações, parâmetros, respostas e regras de uso.', TRUE),
(868, 'Eliminar a necessidade de testes.', FALSE),
(868, 'Criar automaticamente o hardware do servidor.', FALSE),

-- QUESTAO 20 | ID 869 | CORRETA: B
(869, 'Apagar todos os dados ao encerrar a aplicação.', FALSE),
(869, 'Manter dados disponíveis além da execução imediata do programa.', TRUE),
(869, 'Exibir apenas mensagens temporárias.', FALSE),
(869, 'Transformar todo arquivo em imagem.', FALSE);

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

WHERE q.quiz_id = 14
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
