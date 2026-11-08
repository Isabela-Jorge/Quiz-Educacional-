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
-- DISCIPLINA: Programacao Web III - Modulo 3
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Programacao Web III
SET @quiz_web3_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação Web III'
      AND d.modulo = 3
    LIMIT 1
);

-- ============================================================
-- Programacao Web III | QUESTOES 41 A 60 | NIVEL DIFÍCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web3_id, 'Uma função serverless recebe requisições simultâneas e atualiza o mesmo registro. Qual risco deve ser tratado?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma API recebe repetidamente o mesmo evento de pagamento. Qual estratégia reduz cobranças duplicadas?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma função depende de um serviço externo instável. Qual abordagem aumenta a resiliência?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação utiliza cache para respostas de API. Qual cuidado evita apresentar dados desatualizados?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma função serverless apresenta aumento de latência após longos períodos sem uso. Qual explicação é mais provável?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma API permite consultas paginadas em uma coleção que muda constantemente. Qual abordagem tende a ser mais consistente?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação precisa processar milhares de arquivos enviados pelos usuários. Qual arquitetura é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Um endpoint retorna erro 500, mas os logs não permitem identificar a requisição. Qual melhoria ajuda no diagnóstico?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação expõe uma API pública com autenticação. Qual prática reduz o impacto de credenciais comprometidas?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma função processa mensagens de uma fila e pode falhar temporariamente. Como evitar a perda de mensagens?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação utiliza serviços de terceiros para executar operações críticas. Qual estratégia reduz falhas em cascata?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma API recebe dados enviados pelo cliente para definir permissões. Qual vulnerabilidade deve ser evitada?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação precisa disponibilizar uma nova versão com possibilidade de retorno imediato. Qual estratégia é indicada?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma função serverless executa consultas repetidas a um banco relacional. Qual cuidado evita esgotar conexões?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma API recebe requisições de diferentes clientes e precisa controlar o consumo individual. Qual mecanismo é indicado?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação realiza operações distribuídas sem transação única. Qual padrão ajuda a coordenar compensações?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma função HTTP inicia um processamento que pode durar vários minutos. Qual arquitetura evita exceder o tempo da requisição?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma API apresenta falhas intermitentes somente em produção. Qual conjunto de informações facilita a investigação?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma aplicação precisa impedir que usuários acessem recursos pertencentes a outras contas. Qual verificação é essencial?', 'DIFICIL', 15, 15),
(@quiz_web3_id, 'Uma equipe deseja reduzir riscos durante a implantação de novas versões de uma API. Qual prática é mais adequada?', 'DIFICIL', 15, 15);

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
WHERE quiz_id = @quiz_web3_id
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB III | ALTERNATIVAS DAS QUESTÕES 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 41 | ID 830
(830, 'Conflito de concorrência e perda de atualizações.', TRUE),
(830, 'Incompatibilidade obrigatória com HTTPS.', FALSE),
(830, 'Ausência de suporte a arquivos CSS.', FALSE),
(830, 'Impossibilidade de receber JSON.', FALSE),

-- QUESTAO 42 | ID 831
(831, 'Criar uma nova cobrança para cada tentativa.', FALSE),
(831, 'Utilizar chave de idempotência para reconhecer eventos repetidos.', TRUE),
(831, 'Desabilitar permanentemente os pagamentos.', FALSE),
(831, 'Executar todas as cobranças no navegador.', FALSE),

-- QUESTAO 43 | ID 832
(832, 'Repetir imediatamente sem qualquer limite.', FALSE),
(832, 'Ignorar todos os erros e retornar sucesso.', FALSE),
(832, 'Aplicar timeout, tentativas limitadas e backoff.', TRUE),
(832, 'Remover o tratamento de exceções.', FALSE),

-- QUESTAO 44 | ID 833
(833, 'Manter o cache permanentemente sem atualização.', FALSE),
(833, 'Desativar todas as respostas HTTP.', FALSE),
(833, 'Compartilhar o cache sem considerar permissões.', FALSE),
(833, 'Definir política de expiração e invalidação do cache.', TRUE),

-- QUESTAO 45 | ID 834
(834, 'Falha obrigatória no banco de dados.', FALSE),
(834, 'Cold start ao inicializar uma nova instância.', TRUE),
(834, 'Ausência de suporte a requisições GET.', FALSE),
(834, 'Erro permanente de DNS.', FALSE),

-- QUESTAO 46 | ID 835
(835, 'Paginação por cursor com ordenação estável.', TRUE),
(835, 'Retornar todos os registros em uma única resposta.', FALSE),
(835, 'Remover qualquer ordenação da consulta.', FALSE),
(835, 'Usar sempre um offset aleatório.', FALSE),

-- QUESTAO 47 | ID 836
(836, 'Processar todos os arquivos dentro de uma única requisição HTTP.', FALSE),
(836, 'Salvar arquivos diretamente em variáveis de sessão.', FALSE),
(836, 'Armazenar os arquivos e processá-los de forma assíncrona por eventos ou filas.', TRUE),
(836, 'Transferir todo processamento ao CSS.', FALSE),

-- QUESTAO 48 | ID 837
(837, 'Remover todos os registros de erro.', FALSE),
(837, 'Registrar somente o horário do servidor.', FALSE),
(837, 'Reiniciar o navegador a cada falha.', FALSE),
(837, 'Adicionar identificadores de correlação aos logs e requisições.', TRUE),

-- QUESTAO 49 | ID 838
(838, 'Conceder permissões administrativas a todos os usuários.', FALSE),
(838, 'Utilizar credenciais de curta duração e privilégios mínimos.', TRUE),
(838, 'Compartilhar a mesma senha entre todos os clientes.', FALSE),
(838, 'Desativar a autenticação em produção.', FALSE),

-- QUESTAO 50 | ID 839
(839, 'Confirmar a mensagem antes de processá-la.', FALSE),
(839, 'Excluir mensagens que apresentem erros temporários.', FALSE),
(839, 'Usar confirmação após processamento, retentativas e fila de mensagens mortas.', TRUE),
(839, 'Desativar o armazenamento da fila.', FALSE),

-- QUESTAO 51 | ID 840
(840, 'Aplicar circuit breaker, timeout e isolamento de falhas.', TRUE),
(840, 'Aumentar indefinidamente o número de tentativas.', FALSE),
(840, 'Bloquear permanentemente todos os clientes.', FALSE),
(840, 'Remover o monitoramento de dependências.', FALSE),

-- QUESTAO 52 | ID 841
(841, 'Confiar nas permissões enviadas pelo cliente.', FALSE),
(841, 'Permitir que o navegador defina o perfil administrativo.', FALSE),
(841, 'Validar apenas o formato JSON recebido.', FALSE),
(841, 'Validar a identidade e as permissões no servidor.', TRUE),

-- QUESTAO 53 | ID 842
(842, 'Sobrescrever a única versão em produção sem backup.', FALSE),
(842, 'Utilizar implantação blue-green com possibilidade de rollback.', TRUE),
(842, 'Desabilitar os testes automatizados.', FALSE),
(842, 'Modificar manualmente todos os arquivos em produção.', FALSE),

-- QUESTAO 54 | ID 843
(843, 'Criar uma conexão nova e permanente para cada invocação.', FALSE),
(843, 'Aumentar o número de conexões sem limite.', FALSE),
(843, 'Utilizar gerenciamento adequado de conexões e proxy ou pool compatível.', TRUE),
(843, 'Desativar os limites de concorrência do banco.', FALSE),

-- QUESTAO 55 | ID 844
(844, 'Aplicar rate limiting por cliente ou identidade.', TRUE),
(844, 'Permitir requisições ilimitadas.', FALSE),
(844, 'Remover a autenticação.', FALSE),
(844, 'Bloquear todos os métodos HTTP.', FALSE),

-- QUESTAO 56 | ID 845
(845, 'Executar todas as operações diretamente no navegador.', FALSE),
(845, 'Utilizar o padrão Saga com ações compensatórias.', TRUE),
(845, 'Remover os identificadores das operações.', FALSE),
(845, 'Ignorar falhas de serviços participantes.', FALSE),

-- QUESTAO 57 | ID 846
(846, 'Manter a conexão HTTP aberta indefinidamente.', FALSE),
(846, 'Executar todo processamento em uma única thread do navegador.', FALSE),
(846, 'Desabilitar os limites de execução.', FALSE),
(846, 'Encaminhar a tarefa para uma fila e processá-la em segundo plano.', TRUE),

-- QUESTAO 58 | ID 847
(847, 'Apenas a aparência visual do site.', FALSE),
(847, 'Somente a versão do navegador.', FALSE),
(847, 'Logs estruturados, métricas, traces e identificadores de correlação.', TRUE),
(847, 'Somente o nome do arquivo HTML.', FALSE),

-- QUESTAO 59 | ID 848
(848, 'Verificar no servidor se o recurso pertence à conta autenticada.', TRUE),
(848, 'Confiar apenas no ID enviado pelo cliente.', FALSE),
(848, 'Ocultar o botão de acesso na interface.', FALSE),
(848, 'Utilizar URLs longas como única proteção.', FALSE),

-- QUESTAO 60 | ID 849
(849, 'Publicar todas as mudanças diretamente para todos os usuários.', FALSE),
(849, 'Eliminar os testes antes da implantação.', FALSE),
(849, 'Desativar o monitoramento após o deploy.', FALSE),
(849, 'Realizar implantação gradual, monitorar métricas e manter rollback disponível.', TRUE);

-- ============================================================
-- VALIDACAO DAS 20 QUESTOES DIFICEIS
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

WHERE q.quiz_id = 24
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
