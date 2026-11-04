
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
-- DISCIPLINA: Programacao de Aplicativos Mobile I - Modulo 2
-- DIFICULDADE: MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
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

-- =======================================================================
-- PROGRAMACAO DE APLICATIVOS MOBILE I | QUESTOES 21 A 40 | NIVEL MEDIO
-- =======================================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile1_id, 'Ao criar uma tela Flutter, qual é a finalidade do método build?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é a diferença fundamental entre StatelessWidget e StatefulWidget?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Em Flutter, quando setState é chamado corretamente em um State ativo, o que acontece?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual widget organiza filhos verticalmente no Flutter?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual widget organiza filhos horizontalmente no Flutter?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Em uma lista extensa de itens, qual abordagem tende a ser mais eficiente?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é o papel do Navigator no Flutter?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Para validar um campo obrigatório antes de enviar um formulário, o que fazer?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Por que separar widgets em componentes reutilizáveis?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é a finalidade de um controller associado a um TextField?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Quando um widget StatefulWidget é removido permanentemente da árvore, onde liberar recursos de seu State?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é a função de um Future em Dart?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Por que usar async e await ao buscar dados remotos?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'O que significa estado de carregamento em uma tela?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Ao consumir uma API HTTP, qual formato é frequentemente usado para troca de dados?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'O que um código HTTP 404 normalmente indica?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é a principal razão para solicitar permissões apenas quando necessárias?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Como lidar adequadamente com uma requisição que falhou por falta de conexão?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é a finalidade do pubspec.yaml em um projeto Flutter?', 'MEDIO', 10, 15),
(@quiz_mobile1_id, 'Qual é o benefício de usar Git durante o desenvolvimento mobile?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ========================================================================
-- PROGRAMACAO DE APLICATIVOS MOBILE I | ALTERNATIVAS DAS QUESTOES 21 A 40
-- ========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 21 | ID 690 | GABARITO B
(690, 'Gerar diretamente uma tabela MySQL.', FALSE),
(690, 'Descrever a árvore de widgets exibida pela interface.', TRUE),
(690, 'Assinar o aplicativo na loja.', FALSE),
(690, 'Alterar o firmware do dispositivo.', FALSE),

-- QUESTAO 22 | ID 691 | GABARITO A
(691, 'StatefulWidget mantém estado mutável associado à sua instância; StatelessWidget não.', TRUE),
(691, 'StatelessWidget acessa somente a internet; StatefulWidget nunca acessa.', FALSE),
(691, 'StatelessWidget é exclusivo do Android; StatefulWidget é exclusivo do iOS.', FALSE),
(691, 'Ambos são bancos de dados embarcados.', FALSE),

-- QUESTAO 23 | ID 692 | GABARITO D
(692, 'O aplicativo é publicado automaticamente.', FALSE),
(692, 'Todos os dados são enviados a um servidor.', FALSE),
(692, 'A memória do dispositivo é formatada.', FALSE),
(692, 'O framework agenda a reconstrução da interface associada ao estado.', TRUE),

-- QUESTAO 24 | ID 693 | GABARITO C
(693, 'Row.', FALSE),
(693, 'Stack obrigatoriamente.', FALSE),
(693, 'Column.', TRUE),
(693, 'IconButton.', FALSE),

-- QUESTAO 25 | ID 694 | GABARITO B
(694, 'Column.', FALSE),
(694, 'Row.', TRUE),
(694, 'TextField.', FALSE),
(694, 'Scaffold obrigatoriamente.', FALSE),

-- QUESTAO 26 | ID 695 | GABARITO A
(695, 'Construir itens sob demanda com ListView.builder.', TRUE),
(695, 'Criar todas as telas em um único Text.', FALSE),
(695, 'Usar um botão por pixel.', FALSE),
(695, 'Renderizar todos os itens como uma única imagem estática.', FALSE),

-- QUESTAO 27 | ID 696 | GABARITO D
(696, 'Executar consultas SQL automaticamente.', FALSE),
(696, 'Gerenciar exclusivamente permissões do Android.', FALSE),
(696, 'Compilar pacotes Dart em arquivos de áudio.', FALSE),
(696, 'Gerenciar a pilha de rotas e transições entre telas.', TRUE),

-- QUESTAO 28 | ID 697 | GABARITO C
(697, 'Aceitar sempre uma string vazia.', FALSE),
(697, 'Salvar primeiro e ignorar erros.', FALSE),
(697, 'Verificar se o valor atende às regras e informar erros ao usuário.', TRUE),
(697, 'Remover o campo da interface.', FALSE),

-- QUESTAO 29 | ID 698 | GABARITO B
(698, 'Para eliminar a necessidade de nomes de variáveis.', FALSE),
(698, 'Para reduzir duplicação e facilitar manutenção e testes.', TRUE),
(698, 'Para tornar impossível a navegação.', FALSE),
(698, 'Para impedir atualizações de layout.', FALSE),

-- QUESTAO 30 | ID 699 | GABARITO A
(699, 'Ler e controlar o texto do campo.', TRUE),
(699, 'Conectar automaticamente ao banco remoto.', FALSE),
(699, 'Alterar permissões do sistema operacional.', FALSE),
(699, 'Criar um emulador Android.', FALSE),

-- QUESTAO 31 | ID 700 | GABARITO D
(700, 'No método build obrigatoriamente.', FALSE),
(700, 'Em uma variável global sem controle.', FALSE),
(700, 'Na configuração do roteador.', FALSE),
(700, 'No método dispose.', TRUE),

-- QUESTAO 32 | ID 701 | GABARITO C
(701, 'Representar somente um inteiro constante.', FALSE),
(701, 'Descrever exclusivamente uma cor.', FALSE),
(701, 'Representar o resultado ou erro de uma operação assíncrona.', TRUE),
(701, 'Substituir todos os widgets de layout.', FALSE),

-- QUESTAO 33 | ID 702 | GABARITO B
(702, 'Para garantir que a rede nunca falhe.', FALSE),
(702, 'Para escrever o fluxo assíncrono de forma legível sem bloquear a espera como uma operação síncrona.', TRUE),
(702, 'Para dispensar tratamento de exceções.', FALSE),
(702, 'Para transformar HTTP em SQL.', FALSE),

-- QUESTAO 34 | ID 703 | GABARITO A
(703, 'A interface informa que uma operação ainda está em andamento.', TRUE),
(703, 'O aplicativo foi necessariamente encerrado.', FALSE),
(703, 'A resposta do servidor sempre falhou.', FALSE),
(703, 'O dispositivo perdeu permanentemente a conexão.', FALSE),

-- QUESTAO 35 | ID 704 | GABARITO D
(704, 'PNG exclusivamente.', FALSE),
(704, 'MP3 obrigatoriamente.', FALSE),
(704, 'PDF como único formato possível.', FALSE),
(704, 'JSON.', TRUE),

-- QUESTAO 36 | ID 705 | GABARITO C
(705, 'A requisição foi concluída com sucesso.', FALSE),
(705, 'O servidor exige sempre reinicialização.', FALSE),
(705, 'O recurso solicitado não foi encontrado.', TRUE),
(705, 'O aplicativo foi instalado.', FALSE),

-- QUESTAO 37 | ID 706 | GABARITO B
(706, 'Impedir a pessoa de revogar permissões.', FALSE),
(706, 'Respeitar a privacidade e reduzir acesso desnecessário a recursos.', TRUE),
(706, 'Garantir que o app nunca precise de rede.', FALSE),
(706, 'Evitar qualquer atualização de sistema.', FALSE),

-- QUESTAO 38 | ID 707 | GABARITO A
(707, 'Exibir feedback e oferecer nova tentativa quando apropriado.', TRUE),
(707, 'Mostrar sucesso sem dados.', FALSE),
(707, 'Repetir infinitamente sem informar o usuário.', FALSE),
(707, 'Apagar todos os registros locais.', FALSE),

-- QUESTAO 39 | ID 708 | GABARITO D
(708, 'Armazenar exclusivamente registros de acesso dos usuários.', FALSE),
(708, 'Substituir o código Dart da aplicação.', FALSE),
(708, 'Definir tabelas SQL obrigatórias.', FALSE),
(708, 'Declarar dependências, recursos e metadados do projeto.', TRUE),

-- QUESTAO 40 | ID 709 | GABARITO C
(709, 'Garantir ausência absoluta de defeitos.', FALSE),
(709, 'Executar o aplicativo sem compilação.', FALSE),
(709, 'Registrar versões e facilitar colaboração e recuperação de mudanças.', TRUE),
(709, 'Substituir todos os testes de interface.', FALSE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES MEDIAS
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
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
