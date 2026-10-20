-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (109 a 128).
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
--      AND dificuldade = 'MEDIO'
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
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
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
-- MOBILE I | Questões 21 a 40 | Nível médio
-- ============================================================

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
-- MOBILE I | Alternativas das questões 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 |  Correta: B
(109, 'Gerar diretamente uma tabela MySQL.', FALSE),
(109, 'Descrever a árvore de widgets exibida pela interface.', TRUE),
(109, 'Assinar o aplicativo na loja.', FALSE),
(109, 'Alterar o firmware do dispositivo.', FALSE),

-- Questão 22 |Correta: A
(110, 'StatefulWidget mantém estado mutável associado à sua instância; StatelessWidget não.', TRUE),
(110, 'StatelessWidget acessa somente a internet; StatefulWidget nunca acessa.', FALSE),
(110, 'StatelessWidget é exclusivo do Android; StatefulWidget é exclusivo do iOS.', FALSE),
(110, 'Ambos são bancos de dados embarcados.', FALSE),

-- Questão 23 | Correta: D
(111, 'O aplicativo é publicado automaticamente.', FALSE),
(111, 'Todos os dados são enviados a um servidor.', FALSE),
(111, 'A memória do dispositivo é formatada.', FALSE),
(111, 'O framework agenda a reconstrução da interface associada ao estado.', TRUE),

-- Questão 24 | Correta: C
(112, 'Row.', FALSE),
(112, 'Stack obrigatoriamente.', FALSE),
(112, 'Column.', TRUE),
(112, 'IconButton.', FALSE),

-- Questão 25 | Correta: B
(113, 'Column.', FALSE),
(113, 'Row.', TRUE),
(113, 'TextField.', FALSE),
(113, 'Scaffold obrigatoriamente.', FALSE),

-- Questão 26 | Correta: A
(114, 'Construir itens sob demanda com ListView.builder.', TRUE),
(114, 'Criar todas as telas em um único Text.', FALSE),
(114, 'Usar um botão por pixel.', FALSE),
(114, 'Renderizar todos os itens como uma única imagem estática.', FALSE),

-- Questão 27 | Correta: D
(115, 'Executar consultas SQL automaticamente.', FALSE),
(115, 'Gerenciar exclusivamente permissões do Android.', FALSE),
(115, 'Compilar pacotes Dart em arquivos de áudio.', FALSE),
(115, 'Gerenciar a pilha de rotas e transições entre telas.', TRUE),

-- Questão 28 | Correta: C
(116, 'Aceitar sempre uma string vazia.', FALSE),
(116, 'Salvar primeiro e ignorar erros.', FALSE),
(116, 'Verificar se o valor atende às regras e informar erros ao usuário.', TRUE),
(116, 'Remover o campo da interface.', FALSE),

-- Questão 29 | Correta: B
(117, 'Para eliminar a necessidade de nomes de variáveis.', FALSE),
(117, 'Para reduzir duplicação e facilitar manutenção e testes.', TRUE),
(117, 'Para tornar impossível a navegação.', FALSE),
(117, 'Para impedir atualizações de layout.', FALSE),

-- Questão 30 | Correta: A
(118, 'Ler e controlar o texto do campo.', TRUE),
(118, 'Conectar automaticamente ao banco remoto.', FALSE),
(118, 'Alterar permissões do sistema operacional.', FALSE),
(118, 'Criar um emulador Android.', FALSE),

-- Questão 31 | Correta: D
(119, 'No método build obrigatoriamente.', FALSE),
(119, 'Em uma variável global sem controle.', FALSE),
(119, 'Na configuração do roteador.', FALSE),
(119, 'No método dispose.', TRUE),

-- Questão 32 | Correta: C
(120, 'Representar somente um inteiro constante.', FALSE),
(120, 'Descrever exclusivamente uma cor.', FALSE),
(120, 'Representar o resultado ou erro de uma operação assíncrona.', TRUE),
(120, 'Substituir todos os widgets de layout.', FALSE),

-- Questão 33 |  Correta: B
(121, 'Para garantir que a rede nunca falhe.', FALSE),
(121, 'Para escrever o fluxo assíncrono de forma legível sem bloquear a espera como uma operação síncrona.', TRUE),
(121, 'Para dispensar tratamento de exceções.', FALSE),
(121, 'Para transformar HTTP em SQL.', FALSE),

-- Questão 34 |  Correta: A
(122, 'A interface informa que uma operação ainda está em andamento.', TRUE),
(122, 'O aplicativo foi necessariamente encerrado.', FALSE),
(122, 'A resposta do servidor sempre falhou.', FALSE),
(122, 'O dispositivo perdeu permanentemente a conexão.', FALSE),

-- Questão 35 |  Correta: D
(123, 'PNG exclusivamente.', FALSE),
(123, 'MP3 obrigatoriamente.', FALSE),
(123, 'PDF como único formato possível.', FALSE),
(123, 'JSON.', TRUE),

-- Questão 36 |  Correta: C
(124, 'A requisição foi concluída com sucesso.', FALSE),
(124, 'O servidor exige sempre reinicialização.', FALSE),
(124, 'O recurso solicitado não foi encontrado.', TRUE),
(124, 'O aplicativo foi instalado.', FALSE),

-- Questão 37 | Correta: B
(125, 'Impedir a pessoa de revogar permissões.', FALSE),
(125, 'Respeitar a privacidade e reduzir acesso desnecessário a recursos.', TRUE),
(125, 'Garantir que o app nunca precise de rede.', FALSE),
(125, 'Evitar qualquer atualização de sistema.', FALSE),

-- Questão 38 |  Correta: A
(126, 'Exibir feedback e oferecer nova tentativa quando apropriado.', TRUE),
(126, 'Mostrar sucesso sem dados.', FALSE),
(126, 'Repetir infinitamente sem informar o usuário.', FALSE),
(126, 'Apagar todos os registros locais.', FALSE),

-- Questão 39 | Correta: D
(127, 'Armazenar exclusivamente registros de acesso dos usuários.', FALSE),
(127, 'Substituir o código Dart da aplicação.', FALSE),
(127, 'Definir tabelas SQL obrigatórias.', FALSE),
(127, 'Declarar dependências, recursos e metadados do projeto.', TRUE),

-- Questão 40 | Correta: C
(128, 'Garantir ausência absoluta de defeitos.', FALSE),
(128, 'Executar o aplicativo sem compilação.', FALSE),
(128, 'Registrar versões e facilitar colaboração e recuperação de mudanças.', TRUE),
(128, 'Substituir todos os testes de interface.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIO DE MOBILE I
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
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
