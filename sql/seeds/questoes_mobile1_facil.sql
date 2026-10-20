-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (89 a 108).
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
--           WHERE nome = 'Programação de Aplicativos Mobile I' AND modulo = 2))
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
-- DISCIPLINA: Programação de Aplicativos Mobile I - Módulo 2
-- DIFICULDADE: FÁCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 5 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programação de Aplicativos Mobile I do módulo 2
SET @quiz_mobile1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile I'
      AND d.modulo = 2
    LIMIT 1
);

-- ============================================================
-- MOBILE I | Questões 01 a 20 | Nível fácil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile1_id, 'Qual é a finalidade principal de um aplicativo mobile?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Em Flutter, qual linguagem é usada para escrever a aplicação?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'O que é uma interface de usuário (UI)?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual componente de um celular permite detectar toques na tela?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Para que serve um botão em uma interface mobile?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual é a função de um campo de texto?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'O que significa responsividade em interfaces?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual plataforma é um sistema operacional mobile?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual é o papel de um emulador durante o desenvolvimento?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Em Flutter, o que é um widget?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Para que serve a navegação entre telas?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'O que é um aplicativo nativo?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual recurso é apropriado para mostrar uma imagem no aplicativo?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual é a função de um ícone de navegação?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'O que é um formulário mobile?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Por que testar um aplicativo em telas diferentes?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual recurso do smartphone informa a posição geográfica, quando autorizado?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual é a finalidade de uma mensagem de erro clara?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'O que significa instalar uma dependência no projeto?', 'FACIL', 5, 15),
(@quiz_mobile1_id, 'Qual prática melhora a acessibilidade de um botão?', 'FACIL', 5, 15);

-- ============================================================
-- MOBILE I | Alternativas das questões 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 01 |  Correta: B
(89, 'Substituir o hardware do smartphone.', FALSE),
(89, 'Executar funcionalidades em dispositivos móveis.', TRUE),
(89, 'Impedir o uso de conexões sem fio.', FALSE),
(89, 'Funcionar exclusivamente em computadores de mesa.', FALSE),

-- Questão 02 |  Correta: A
(90, 'Dart.', TRUE),
(90, 'JavaScript obrigatoriamente.', FALSE),
(90, 'SQL.', FALSE),
(90, 'HTML exclusivamente.', FALSE),

-- Questão 03 | Correta: D
(91, 'O endereço físico do servidor.', FALSE),
(91, 'O sistema de arquivos interno do processador.', FALSE),
(91, 'O protocolo de comunicação do roteador.', FALSE),
(91, 'O conjunto de elementos com que a pessoa interage.', TRUE),

-- Questão 04 |  Correta: C
(92, 'Alto-falante.', FALSE),
(92, 'Bateria.', FALSE),
(92, 'Tela sensível ao toque.', TRUE),
(92, 'Antena de rádio FM.', FALSE),

-- Questão 05 |  Correta: B
(93, 'Armazenar permanentemente todos os dados.', FALSE),
(93, 'Acionar uma ação definida pela aplicação.', TRUE),
(93, 'Compilar o aplicativo automaticamente.', FALSE),
(93, 'Substituir o sistema operacional.', FALSE),

-- Questão 06 |  Correta: A
(94, 'Receber dados digitados pelo usuário.', TRUE),
(94, 'Exibir apenas vídeos.', FALSE),
(94, 'Conectar o aparelho à rede elétrica.', FALSE),
(94, 'Instalar dependências do projeto.', FALSE),

-- Questão 07 |  Correta: D
(95, 'Aumentar a velocidade do processador.', FALSE),
(95, 'Impedir mudanças na orientação do dispositivo.', FALSE),
(95, 'Executar apenas sem internet.', FALSE),
(95, 'Adaptar a apresentação a diferentes tamanhos de tela.', TRUE),

-- Questão 08 |  Correta: C
(96, 'MySQL.', FALSE),
(96, 'Git.', FALSE),
(96, 'Android.', TRUE),
(96, 'Nginx.', FALSE),

-- Questão 09 | Correta: B
(97, 'Publicar automaticamente na loja.', FALSE),
(97, 'Simular um dispositivo para executar e testar o aplicativo.', TRUE),
(97, 'Eliminar a necessidade de testes.', FALSE),
(97, 'Criar contas de usuários reais.', FALSE),

-- Questão 10 | Correta: A
(98, 'Um elemento usado para compor a interface e seu comportamento.', TRUE),
(98, 'Uma tabela obrigatória do banco de dados.', FALSE),
(98, 'Um protocolo de rede sem fio.', FALSE),
(98, 'Um arquivo de instalação do Android.', FALSE),

-- Questão 11 |  Correta: D
(99, 'Alterar a frequência do processador.', FALSE),
(99, 'Trocar o sistema operacional do aparelho.', FALSE),
(99, 'Impedir o uso de formulários.', FALSE),
(99, 'Permitir a passagem entre diferentes partes do aplicativo.', TRUE),

-- Questão 12 | Correta: C
(100, 'Um site que nunca utiliza internet.', FALSE),
(100, 'Um programa que só funciona em servidores.', FALSE),
(100, 'Um aplicativo desenvolvido para uma plataforma específica com suas tecnologias.', TRUE),
(100, 'Um aplicativo sem interface gráfica.', FALSE),

-- Questão 13 |  Correta: B
(101, 'Uma instrução SQL DELETE.', FALSE),
(101, 'Um componente de imagem.', TRUE),
(101, 'Um arquivo de log.', FALSE),
(101, 'Uma chave estrangeira.', FALSE),

-- Questão 14 |  Correta: A
(102, 'Representar visualmente uma ação ou destino.', TRUE),
(102, 'Garantir criptografia dos dados por si só.', FALSE),
(102, 'Aumentar o armazenamento do aparelho.', FALSE),
(102, 'Substituir os textos de acessibilidade obrigatoriamente.', FALSE),

-- Questão 15 |  Correta: D
(103, 'Um tipo de bateria recarregável.', FALSE),
(103, 'Uma versão do sistema operacional.', FALSE),
(103, 'Uma linguagem de consulta de dados.', FALSE),
(103, 'Um conjunto de campos para coletar informações.', TRUE),

-- Questão 16 | Correta: C
(104, 'Para garantir que todos os celulares tenham a mesma resolução.', FALSE),
(104, 'Para dispensar validação de entradas.', FALSE),
(104, 'Para verificar legibilidade e funcionamento em diferentes dimensões.', TRUE),
(104, 'Para remover a necessidade de atualização.', FALSE),

-- Questão 17 | Correta: B
(105, 'Microfone exclusivamente.', FALSE),
(105, 'Serviço de localização.', TRUE),
(105, 'Controle de brilho.', FALSE),
(105, 'Vibração.', FALSE),

-- Questão 18 | Correta: A
(106, 'Explicar o problema e orientar a correção.', TRUE),
(106, 'Ocultar a falha do usuário.', FALSE),
(106, 'Apagar automaticamente os dados.', FALSE),
(106, 'Encerrar obrigatoriamente o aplicativo.', FALSE),

-- Questão 19 | Correta: D
(107, 'Desinstalar o compilador.', FALSE),
(107, 'Excluir o código-fonte.', FALSE),
(107, 'Bloquear o acesso ao repositório.', FALSE),
(107, 'Adicionar uma biblioteca ou pacote necessário.', TRUE),

-- Questão 20 | Correta: C
(108, 'Depender apenas de cor para explicar sua função.', FALSE),
(108, 'Tornar o texto ilegível.', FALSE),
(108, 'Usar rótulo compreensível e área de toque adequada.', TRUE),
(108, 'Diminuir a área de toque ao mínimo.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES FÁCIL DE MOBILE I
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
WHERE q.quiz_id = @quiz_mobile1_id
  AND q.dificuldade = 'FACIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
