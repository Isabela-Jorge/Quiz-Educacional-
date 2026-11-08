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
-- DISCIPLINA: Programacao de Aplicativos Mobile II - Modulo 3
-- DIFICULDADE: NIVEL FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- IDENTIFICAR O QUIZ
SET @quiz_mobile2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile II'
      AND d.modulo = 3
    LIMIT 1
);

-- =======================================================================
-- Programacao de Aplicativos Mobile II | QUESTOES 01 A 20 | NIVEL FÁCIL
-- =======================================================================

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
-- CONSULTAR OS IDS REAIS DAS QUESTOES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_mobile2_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ==========================================================================
-- Programacao de Aplicativos Mobile II | Alternativas das questões  01 a 20
-- ==========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 910 | GABARITO C
(910, 'Aumentar a memória física', FALSE),
(910, 'Trocar o sistema operacional', FALSE),
(910, 'Obter ou enviar dados a um serviço externo', TRUE),
(910, 'Substituir a tela do aparelho', FALSE),

-- QUESTAO 02 | ID 911 | GABARITO B
(911, 'DELETE', FALSE),
(911, 'GET', TRUE),
(911, 'PATCH', FALSE),
(911, 'POST', FALSE),

-- QUESTAO 03 | ID 912 | GABARITO C
(912, 'PNG', FALSE),
(912, 'PDF', FALSE),
(912, 'JSON', TRUE),
(912, 'MP3', FALSE),

-- QUESTAO 04 | ID 913 | GABARITO A
(913, 'Autorizar o acesso à câmera do dispositivo', TRUE),
(913, 'Criar uma conta no servidor', FALSE),
(913, 'Habilitar automaticamente o GPS', FALSE),
(913, 'Ativar o modo avião', FALSE),

-- QUESTAO 05 | ID 914 | GABARITO C
(914, 'Apagar os dados ao fechar a tela', FALSE),
(914, 'Enviar todos os dados para impressão', FALSE),
(914, 'Manter informações armazenadas entre execuções', TRUE),
(914, 'Reiniciar o aplicativo a cada toque', FALSE),

-- QUESTAO 06 | ID 915 | GABARITO C
(915, 'Medir o brilho da tela', FALSE),
(915, 'Instalar atualizações do sistema', FALSE),
(915, 'Identificar e autenticar quem tenta acessar a aplicação', TRUE),
(915, 'Formatar o armazenamento', FALSE),

-- QUESTAO 07 | ID 916 | GABARITO B
(916, 'Índices SQL', FALSE),
(916, 'Notificações', TRUE),
(916, 'Comentários de código', FALSE),
(916, 'Variáveis locais', FALSE),

-- QUESTAO 08 | ID 917 | GABARITO C
(917, 'O usuário foi autenticado', FALSE),
(917, 'O servidor iniciou a conexão', FALSE),
(917, 'O recurso solicitado não foi encontrado', TRUE),
(917, 'A operação foi concluída com sucesso', FALSE),

-- QUESTAO 09 | ID 918 | GABARITO A
(918, 'Proteger os dados em trânsito com criptografia', TRUE),
(918, 'Guardar senhas em texto puro', FALSE),
(918, 'Eliminar a necessidade de autenticação', FALSE),
(918, 'Impedir qualquer erro de programação', FALSE),

-- QUESTAO 10 | ID 919 | GABARITO C
(919, 'Substituir a conexão com a internet', FALSE),
(919, 'Aumentar a resolução da câmera', FALSE),
(919, 'Fornecer informações de localização quando autorizado', TRUE),
(919, 'Criptografar o banco local', FALSE),

-- QUESTAO 11 | ID 920 | GABARITO B
(920, 'Icon', FALSE),
(920, 'ListView', TRUE),
(920, 'Padding', FALSE),
(920, 'Text', FALSE),

-- QUESTAO 12 | ID 921 | GABARITO B
(921, 'SQL', FALSE),
(921, 'Dart', TRUE),
(921, 'Bash', FALSE),
(921, 'HTML', FALSE),

-- QUESTAO 13 | ID 922 | GABARITO A
(922, 'Uma credencial usada para autorizar requisições', TRUE),
(922, 'Um tipo de arquivo de imagem', FALSE),
(922, 'Um identificador de pixel', FALSE),
(922, 'Um formato de áudio', FALSE),

-- QUESTAO 14 | ID 923 | GABARITO B
(923, 'Garantir que a internet nunca caia', FALSE),
(923, 'Informar que uma operação está em andamento', TRUE),
(923, 'Desativar os botões permanentemente', FALSE),
(923, 'Substituir a validação de formulários', FALSE),

-- QUESTAO 15 | ID 924 | GABARITO A
(924, 'Uma interface de comunicação baseada em recursos e convenções HTTP', TRUE),
(924, 'Um driver de vídeo', FALSE),
(924, 'Um compilador de aplicativos', FALSE),
(924, 'Um sistema de arquivos móvel', FALSE),

-- QUESTAO 16 | ID 925 | GABARITO B
(925, 'Apagar os dados do usuário', FALSE),
(925, 'Exibir uma mensagem clara e permitir tentar novamente', TRUE),
(925, 'Fechar o aplicativo sem explicação', FALSE),
(925, 'Repetir requisições infinitamente', FALSE),

-- QUESTAO 17 | ID 926 | GABARITO B
(926, 'Impedir qualquer acesso à internet', FALSE),
(926, 'Verificar se os dados atendem aos requisitos esperados', TRUE),
(926, 'Instalar bibliotecas automaticamente', FALSE),
(926, 'Alterar a cor do aparelho', FALSE),

-- QUESTAO 18 | ID 927 | GABARITO B
(927, 'Reiniciar a conexão Bluetooth', FALSE),
(927, 'Conciliar informações entre armazenamento local e remoto', TRUE),
(927, 'Apagar a interface gráfica', FALSE),
(927, 'Trocar a linguagem do aplicativo', FALSE),

-- QUESTAO 19 | ID 928 | GABARITO D
(928, 'Alto-falante', FALSE),
(928, 'Vibração', FALSE),
(928, 'Acelerômetro', FALSE),
(928, 'Câmera', TRUE),

-- QUESTAO 20 | ID 929 | GABARITO C
(929, 'Eliminar a necessidade de navegação', FALSE),
(929, 'Substituir os testes de API', FALSE),
(929, 'Verificar a adaptação e usabilidade da interface', TRUE),
(929, 'Aumentar o armazenamento interno', FALSE);

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

WHERE q.quiz_id = @quiz_mobile2_id
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
