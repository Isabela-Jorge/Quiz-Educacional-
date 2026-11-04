
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
-- DISCIPLINA: Programacao de Aplicativos Mobile I - Módulo 2
-- DIFICULDADE: FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programacao de Aplicativos Mobile I
SET @quiz_mobile1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação de Aplicativos Mobile I'
      AND d.modulo = 2
    LIMIT 1
);

-- =====================================================================
-- PROGRAMACAO DE APLICATIVOS MOBILE I | QUESTOES 01 A 20 | NIVEL FACIL
-- =====================================================================

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
-- CONSULTAR OS IDS REAIS DAS QUESTOES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = @quiz_mobile1_id
  AND dificuldade = 'FACIL'
ORDER BY id;

-- =========================================================================
-- PROGRAMACAO DE APLICATIVOS MOBILE I | ALTERNATIVAS DAS QUESTOES 01 A 20
-- =========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 01 | ID 670 | GABARITO B
(670, 'Substituir o hardware do smartphone.', FALSE),
(670, 'Executar funcionalidades em dispositivos móveis.', TRUE),
(670, 'Impedir o uso de conexões sem fio.', FALSE),
(670, 'Funcionar exclusivamente em computadores de mesa.', FALSE),

-- QUESTAO 02 | ID 671 | GABARITO A
(671, 'Dart.', TRUE),
(671, 'JavaScript obrigatoriamente.', FALSE),
(671, 'SQL.', FALSE),
(671, 'HTML exclusivamente.', FALSE),

-- QUESTAO 03 | ID 672 | GABARITO D
(672, 'O endereço físico do servidor.', FALSE),
(672, 'O sistema de arquivos interno do processador.', FALSE),
(672, 'O protocolo de comunicação do roteador.', FALSE),
(672, 'O conjunto de elementos com que a pessoa interage.', TRUE),

-- QUESTAO 04 | ID 673 | GABARITO C
(673, 'Alto-falante.', FALSE),
(673, 'Bateria.', FALSE),
(673, 'Tela sensível ao toque.', TRUE),
(673, 'Antena de rádio FM.', FALSE),

-- QUESTAO 05 | ID 674 | GABARITO B
(674, 'Armazenar permanentemente todos os dados.', FALSE),
(674, 'Acionar uma ação definida pela aplicação.', TRUE),
(674, 'Compilar o aplicativo automaticamente.', FALSE),
(674, 'Substituir o sistema operacional.', FALSE),

-- QUESTAO 06 | ID 675 | GABARITO A
(675, 'Receber dados digitados pelo usuário.', TRUE),
(675, 'Exibir apenas vídeos.', FALSE),
(675, 'Conectar o aparelho à rede elétrica.', FALSE),
(675, 'Instalar dependências do projeto.', FALSE),

-- QUESTAO 07 | ID 676 | GABARITO D
(676, 'Aumentar a velocidade do processador.', FALSE),
(676, 'Impedir mudanças na orientação do dispositivo.', FALSE),
(676, 'Executar apenas sem internet.', FALSE),
(676, 'Adaptar a apresentação a diferentes tamanhos de tela.', TRUE),

-- QUESTAO 08 | ID 677 | GABARITO C
(677, 'MySQL.', FALSE),
(677, 'Git.', FALSE),
(677, 'Android.', TRUE),
(677, 'Nginx.', FALSE),

-- QUESTAO 09 | ID 678 | GABARITO B
(678, 'Publicar automaticamente na loja.', FALSE),
(678, 'Simular um dispositivo para executar e testar o aplicativo.', TRUE),
(678, 'Eliminar a necessidade de testes.', FALSE),
(678, 'Criar contas de usuários reais.', FALSE),

-- QUESTAO 10 | ID 679 | GABARITO A
(679, 'Um elemento usado para compor a interface e seu comportamento.', TRUE),
(679, 'Uma tabela obrigatória do banco de dados.', FALSE),
(679, 'Um protocolo de rede sem fio.', FALSE),
(679, 'Um arquivo de instalação do Android.', FALSE),

-- QUESTAO 11 | ID 680 | GABARITO D
(680, 'Alterar a frequência do processador.', FALSE),
(680, 'Trocar o sistema operacional do aparelho.', FALSE),
(680, 'Impedir o uso de formulários.', FALSE),
(680, 'Permitir a passagem entre diferentes partes do aplicativo.', TRUE),

-- QUESTAO 12 | ID 681 | GABARITO C
(681, 'Um site que nunca utiliza internet.', FALSE),
(681, 'Um programa que só funciona em servidores.', FALSE),
(681, 'Um aplicativo desenvolvido para uma plataforma específica com suas tecnologias.', TRUE),
(681, 'Um aplicativo sem interface gráfica.', FALSE),

-- QUESTAO 13 | ID 682 | GABARITO B
(682, 'Uma instrução SQL DELETE.', FALSE),
(682, 'Um componente de imagem.', TRUE),
(682, 'Um arquivo de log.', FALSE),
(682, 'Uma chave estrangeira.', FALSE),

-- QUESTAO 14 | ID 683 | GABARITO A
(683, 'Representar visualmente uma ação ou destino.', TRUE),
(683, 'Garantir criptografia dos dados por si só.', FALSE),
(683, 'Aumentar o armazenamento do aparelho.', FALSE),
(683, 'Substituir os textos de acessibilidade obrigatoriamente.', FALSE),

-- QUESTAO 15 | ID 684 | GABARITO D
(684, 'Um tipo de bateria recarregável.', FALSE),
(684, 'Uma versão do sistema operacional.', FALSE),
(684, 'Uma linguagem de consulta de dados.', FALSE),
(684, 'Um conjunto de campos para coletar informações.', TRUE),

-- QUESTAO 16 | ID 685 | GABARITO C
(685, 'Para garantir que todos os celulares tenham a mesma resolução.', FALSE),
(685, 'Para dispensar validação de entradas.', FALSE),
(685, 'Para verificar legibilidade e funcionamento em diferentes dimensões.', TRUE),
(685, 'Para remover a necessidade de atualização.', FALSE),

-- QUESTAO 17 | ID 686 | GABARITO B
(686, 'Microfone exclusivamente.', FALSE),
(686, 'Serviço de localização.', TRUE),
(686, 'Controle de brilho.', FALSE),
(686, 'Vibração.', FALSE),

-- QUESTAO 18 | ID 687 | GABARITO A
(687, 'Explicar o problema e orientar a correção.', TRUE),
(687, 'Ocultar a falha do usuário.', FALSE),
(687, 'Apagar automaticamente os dados.', FALSE),
(687, 'Encerrar obrigatoriamente o aplicativo.', FALSE),

-- QUESTAO 19 | ID 688 | GABARITO D
(688, 'Desinstalar o compilador.', FALSE),
(688, 'Excluir o código-fonte.', FALSE),
(688, 'Bloquear o acesso ao repositório.', FALSE),
(688, 'Adicionar uma biblioteca ou pacote necessário.', TRUE),

-- QUESTAO 20 | ID 689 | GABARITO C
(689, 'Depender apenas de cor para explicar sua função.', FALSE),
(689, 'Tornar o texto ilegível.', FALSE),
(689, 'Usar rótulo compreensível e área de toque adequada.', TRUE),
(689, 'Diminuir a área de toque ao mínimo.', FALSE);

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

WHERE q.quiz_id = 19
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
