-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (149 a 168).
-- Eles precisam corresponder aos IDs gerados no seu banco de dados.
--
-- Como a tabela questao utiliza AUTO_INCREMENT, os IDs
-- podem ser diferentes em outros bancos de dados.
--
-- ORIENTAÇÕES PARA EXECUÇÃO:
-- 1. Execute primeiro o INSERT das questões.
-- 2. Consulte os IDs gerados:
--
--    SELECT id, enunciado
--    FROM questao
--    WHERE quiz_id = (SELECT id FROM quiz WHERE disciplina_id =
--          (SELECT id FROM disciplina
--           WHERE nome = 'Programação de Aplicativos Mobile II' AND modulo = 3))
--      AND dificuldade = 'FACIL'
--    ORDER BY id;
--
-- 3. Confira os IDs das questões cadastradas.
-- 4. Se necessário, atualize os IDs no INSERT das
--    alternativas antes de executá-lo.
-- 5. Execute o INSERT das alternativas.
--
-- IMPORTANTE:
-- Não execute novamente os INSERTs caso os registros
-- já estejam cadastrados, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Programação de Aplicativos Mobile II - Módulo 3
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação de Aplicativos Mobile II do módulo 3
SET @quiz_mobile2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile II'
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- MOBILE II | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile2_id, 'Qual é a finalidade de consumir uma API em um aplicativo mobile?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual método HTTP é normalmente usado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual formato é comum na troca de dados entre aplicativos e APIs?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Para que serve a permissão de câmera em um aplicativo?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'O que significa persistir dados localmente?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual é a finalidade de uma tela de login?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual recurso permite apresentar avisos ao usuário fora da tela atual do app?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'O que é uma resposta HTTP 404?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Por que usar HTTPS na comunicação com a API?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual é a função do GPS em um aplicativo?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Em Flutter, qual widget costuma exibir uma lista de itens rolável?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual linguagem é utilizada no desenvolvimento com Flutter?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'O que é um token de acesso?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual é a finalidade de um indicador de carregamento?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'O que é uma API REST?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual prática melhora a experiência quando a rede está indisponível?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Para que serve a validação de campos em um formulário?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'O que significa sincronizar dados?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual recurso do dispositivo pode ser usado para ler códigos QR?', 'FACIL', 5, 15),
(@quiz_mobile2_id, 'Qual é o objetivo de testar um aplicativo em diferentes tamanhos de tela?', 'FACIL', 5, 15);

-- ============================================================
-- MOBILE II | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 | Correta: C
(149, 'Aumentar a memória física', FALSE),
(149, 'Trocar o sistema operacional', FALSE),
(149, 'Obter ou enviar dados a um serviço externo', TRUE),
(149, 'Substituir a tela do aparelho', FALSE),

-- Questão 02 | Correta: B
(150, 'DELETE', FALSE),
(150, 'GET', TRUE),
(150, 'PATCH', FALSE),
(150, 'POST', FALSE),

-- Questão 03 | Correta: C
(151, 'PNG', FALSE),
(151, 'PDF', FALSE),
(151, 'JSON', TRUE),
(151, 'MP3', FALSE),

-- Questão 04 | Correta: A
(152, 'Autorizar o acesso à câmera do dispositivo', TRUE),
(152, 'Criar uma conta no servidor', FALSE),
(152, 'Habilitar automaticamente o GPS', FALSE),
(152, 'Ativar o modo avião', FALSE),

-- Questão 05 | Correta: C
(153, 'Apagar os dados ao fechar a tela', FALSE),
(153, 'Enviar todos os dados para impressão', FALSE),
(153, 'Manter informações armazenadas entre execuções', TRUE),
(153, 'Reiniciar o aplicativo a cada toque', FALSE),

-- Questão 06 | Correta: C
(154, 'Medir o brilho da tela', FALSE),
(154, 'Instalar atualizações do sistema', FALSE),
(154, 'Identificar e autenticar quem tenta acessar a aplicação', TRUE),
(154, 'Formatar o armazenamento', FALSE),

-- Questão 07 | Correta: B
(155, 'Índices SQL', FALSE),
(155, 'Notificações', TRUE),
(155, 'Comentários de código', FALSE),
(155, 'Variáveis locais', FALSE),

-- Questão 08 |Correta: C
(156, 'O usuário foi autenticado', FALSE),
(156, 'O servidor iniciou a conexão', FALSE),
(156, 'O recurso solicitado não foi encontrado', TRUE),
(156, 'A operação foi concluída com sucesso', FALSE),

-- Questão 09 |Correta: A
(157, 'Proteger os dados em trânsito com criptografia', TRUE),
(157, 'Guardar senhas em texto puro', FALSE),
(157, 'Eliminar a necessidade de autenticação', FALSE),
(157, 'Impedir qualquer erro de programação', FALSE),

-- Questão 10 |  Correta: C
(158, 'Substituir a conexão com a internet', FALSE),
(158, 'Aumentar a resolução da câmera', FALSE),
(158, 'Fornecer informações de localização quando autorizado', TRUE),
(158, 'Criptografar o banco local', FALSE),

-- Questão 11 | Correta: B
(159, 'Icon', FALSE),
(159, 'ListView', TRUE),
(159, 'Padding', FALSE),
(159, 'Text', FALSE),

-- Questão 12 | Correta: B
(160, 'SQL', FALSE),
(160, 'Dart', TRUE),
(160, 'Bash', FALSE),
(160, 'HTML', FALSE),

-- Questão 13 | Correta: A
(161, 'Uma credencial usada para autorizar requisições', TRUE),
(161, 'Um tipo de arquivo de imagem', FALSE),
(161, 'Um identificador de pixel', FALSE),
(161, 'Um formato de áudio', FALSE),

-- Questão 14 | Correta: B
(162, 'Garantir que a internet nunca caia', FALSE),
(162, 'Informar que uma operação está em andamento', TRUE),
(162, 'Desativar os botões permanentemente', FALSE),
(162, 'Substituir a validação de formulários', FALSE),

-- Questão 15 |Correta: A
(163, 'Uma interface de comunicação baseada em recursos e convenções HTTP', TRUE),
(163, 'Um driver de vídeo', FALSE),
(163, 'Um compilador de aplicativos', FALSE),
(163, 'Um sistema de arquivos móvel', FALSE),

-- Questão 16 |Correta: B
(164, 'Apagar os dados do usuário', FALSE),
(164, 'Exibir uma mensagem clara e permitir tentar novamente', TRUE),
(164, 'Fechar o aplicativo sem explicação', FALSE),
(164, 'Repetir requisições infinitamente', FALSE),

-- Questão 17 |Correta: B
(165, 'Impedir qualquer acesso à internet', FALSE),
(165, 'Verificar se os dados atendem aos requisitos esperados', TRUE),
(165, 'Instalar bibliotecas automaticamente', FALSE),
(165, 'Alterar a cor do aparelho', FALSE),

-- Questão 18 |Correta: B
(166, 'Reiniciar a conexão Bluetooth', FALSE),
(166, 'Conciliar informações entre armazenamento local e remoto', TRUE),
(166, 'Apagar a interface gráfica', FALSE),
(166, 'Trocar a linguagem do aplicativo', FALSE),

-- Questão 19 | Correta: D
(167, 'Alto-falante', FALSE),
(167, 'Vibração', FALSE),
(167, 'Acelerômetro', FALSE),
(167, 'Câmera', TRUE),

-- Questão 20 | Correta: C
(168, 'Eliminar a necessidade de navegação', FALSE),
(168, 'Substituir os testes de API', FALSE),
(168, 'Verificar a adaptação e usabilidade da interface', TRUE),
(168, 'Aumentar o armazenamento interno', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCIL DE MOBILE II
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
WHERE q.quiz_id = @quiz_mobile2_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
