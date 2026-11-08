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
-- DIFICULDADE: NIVEL MEDIO
-- TOTAL: 20 questoes
-- PONTUACAO: 10 pontos por questao
-- TEMPO: 15 segundos por questao
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
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
-- Programacao Web III | QUESTOES 21 A 40 | NIVEL MÉDIO
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web3_id, 'Por que funções serverless devem evitar depender de memória local entre invocações?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que é cold start em uma função sob demanda?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Como uma aplicação deve tratar segredos de acesso a serviços externos?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual resposta HTTP é apropriada quando um recurso solicitado não existe?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que significa configurar CORS em uma API?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual é uma vantagem de CDN para conteúdo estático?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual abordagem reduz o acoplamento entre interface e serviço?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que significa idempotência em uma operação de API?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Por que validar dados recebidos por uma função HTTP?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual prática ajuda a investigar falhas distribuídas?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Como proteger um endpoint que altera dados privados?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual estratégia facilita a reversão de uma implantação defeituosa?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que deve ocorrer ao atingir o tempo máximo de execução de uma função?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual prática evita expor credenciais em um front-end estático?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que é um webhook?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual recurso ajuda a limitar abusos em APIs públicas?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'O que diferencia uma fila de mensagens de uma chamada HTTP síncrona?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual é o objetivo de um teste de integração de API?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Por que usar infraestrutura como código (IaC)?', 'MEDIO', 10, 15),
(@quiz_web3_id, 'Qual é o risco de armazenar dados de sessão apenas na memória de uma função?', 'MEDIO', 10, 15);

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
  AND dificuldade = 'MEDIO'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB III | ALTERNATIVAS DAS QUESTÕES 21 a 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 21 | ID 810 | GABARITO B
(810, 'Memória local é compartilhada globalmente por todos os clientes.', FALSE),
(810, 'Instâncias podem ser criadas ou descartadas entre execuções.', TRUE),
(810, 'Toda função é executada sempre no mesmo processo.', FALSE),
(810, 'O provedor proíbe o uso de variáveis em qualquer função.', FALSE),

-- QUESTAO 22 | ID 811 | GABARITO A
(811, 'Latência adicional para inicializar um ambiente de execução.', TRUE),
(811, 'Tempo necessário para carregar CSS no navegador.', FALSE),
(811, 'Desligamento manual de um servidor dedicado.', FALSE),
(811, 'Erro causado exclusivamente por certificado expirado.', FALSE),

-- QUESTAO 23 | ID 812 | GABARITO A
(812, 'Usar gerenciamento de segredos e permissões restritas.', TRUE),
(812, 'Enviá-los em parâmetros de URL para qualquer cliente.', FALSE),
(812, 'Publicá-los no README do repositório.', FALSE),
(812, 'Inseri-los no JavaScript público para facilitar o acesso.', FALSE),

-- QUESTAO 24 | ID 813 | GABARITO C
(813, '301 Moved Permanently.', FALSE),
(813, '204 No Content.', FALSE),
(813, '404 Not Found.', TRUE),
(813, '201 Created.', FALSE),

-- QUESTAO 25 | ID 814 | GABARITO A
(814, 'Definir quais origens podem acessar respostas via navegador.', TRUE),
(814, 'Garantir que toda requisição venha de um aplicativo legítimo.', FALSE),
(814, 'Criptografar automaticamente os dados persistidos.', FALSE),
(814, 'Substituir o processo de autenticação do usuário.', FALSE),

-- QUESTAO 26 | ID 815 | GABARITO D
(815, 'Eliminar todas as falhas de programação do back-end.', FALSE),
(815, 'Executar consultas SQL diretamente no navegador.', FALSE),
(815, 'Garantir consistência transacional no banco de dados.', FALSE),
(815, 'Distribuir conteúdo por pontos próximos dos usuários.', TRUE),

-- QUESTAO 27 | ID 816 | GABARITO D
(816, 'Permitir que o front-end altere tabelas sem API.', FALSE),
(816, 'Compartilhar diretamente variáveis internas de cada processo.', FALSE),
(816, 'Remover o versionamento das rotas.', FALSE),
(816, 'Definir contratos claros para as APIs.', TRUE),

-- QUESTAO 28 | ID 817 | GABARITO A
(817, 'Repetir a operação produz o mesmo efeito pretendido no estado do recurso.', TRUE),
(817, 'A operação nunca pode retornar erros.', FALSE),
(817, 'Cada repetição deve criar obrigatoriamente um novo recurso.', FALSE),
(817, 'O servidor executa a operação apenas uma vez em toda a vida.', FALSE),

-- QUESTAO 29 | ID 818 | GABARITO B
(818, 'Eliminar a necessidade de testes unitários.', FALSE),
(818, 'Evitar processamento de entradas inválidas ou maliciosas.', TRUE),
(818, 'Permitir que qualquer usuário altere permissões.', FALSE),
(818, 'Garantir que a rede nunca ficará indisponível.', FALSE),

-- QUESTAO 30 | ID 819 | GABARITO C
(819, 'Executar todos os serviços sem métricas.', FALSE),
(819, 'Desativar logs de todas as funções.', FALSE),
(819, 'Propagar um identificador de correlação entre serviços.', TRUE),
(819, 'Registrar somente o nome do usuário.', FALSE),

-- QUESTAO 31 | ID 820 | GABARITO C
(820, 'Ocultar apenas o botão no front-end.', FALSE),
(820, 'Bloquear somente requisições feitas por celular.', FALSE),
(820, 'Exigir autenticação e verificar a autorização para a operação.', TRUE),
(820, 'Usar uma URL difícil de adivinhar como única proteção.', FALSE),

-- QUESTAO 32 | ID 821 | GABARITO B
(821, 'Apagar os registros de mudanças após cada deploy.', FALSE),
(821, 'Manter versões anteriores e um procedimento de rollback.', TRUE),
(821, 'Desativar todos os testes de integração.', FALSE),
(821, 'Sobrescrever o único artefato disponível sem histórico.', FALSE),

-- QUESTAO 33 | ID 822 | GABARITO C
(822, 'O provedor aumenta o limite indefinidamente.', FALSE),
(822, 'A função se converte automaticamente em serviço permanente.', FALSE),
(822, 'A execução pode ser interrompida pelo ambiente.', TRUE),
(822, 'O navegador assume a execução do código de servidor.', FALSE),

-- QUESTAO 34 | ID 823 | GABARITO A
(823, 'Realizar operações sensíveis em um serviço de back-end.', TRUE),
(823, 'Armazenar senhas administrativas em localStorage.', FALSE),
(823, 'Ofuscar a chave no JavaScript e considerá-la secreta.', FALSE),
(823, 'Adicionar credenciais a um comentário HTML.', FALSE),

-- QUESTAO 35 | ID 824 | GABARITO B
(824, 'Uma consulta SQL executada exclusivamente no navegador.', FALSE),
(824, 'Uma chamada HTTP enviada em resposta a um evento.', TRUE),
(824, 'Um arquivo de estilo usado para animações.', FALSE),
(824, 'Um tipo de certificado digital para Wi-Fi.', FALSE),

-- QUESTAO 36 | ID 825 | GABARITO C
(825, 'Uso obrigatório de uma única rota GET.', FALSE),
(825, 'Desativação de todas as respostas HTTP.', FALSE),
(825, 'Rate limiting.', TRUE),
(825, 'Remoção de cabeçalhos de segurança.', FALSE),

-- QUESTAO 37 | ID 826 | GABARITO B
(826, 'Elimina a necessidade de identificar mensagens.', FALSE),
(826, 'Permite desacoplar o envio do processamento posterior.', TRUE),
(826, 'Impede qualquer reprocessamento de mensagens.', FALSE),
(826, 'Exige que remetente e consumidor estejam no mesmo processo.', FALSE),

-- QUESTAO 38 | ID 827 | GABARITO B
(827, 'Substituir completamente os testes de segurança.', FALSE),
(827, 'Verificar a interação entre componentes ou serviços conectados.', TRUE),
(827, 'Medir somente a velocidade de digitação do programador.', FALSE),
(827, 'Avaliar apenas a aparência de ícones.', FALSE),

-- QUESTAO 39 | ID 828 | GABARITO C
(828, 'Executar o site sem qualquer ambiente de hospedagem.', FALSE),
(828, 'Converter automaticamente regras de negócio em interfaces.', FALSE),
(828, 'Versionar e reproduzir configurações de infraestrutura.', TRUE),
(828, 'Eliminar a necessidade de revisar alterações de configuração.', FALSE),

-- QUESTAO 40 | ID 829 | GABARITO C
(829, 'Todos os clientes passam a compartilhar o mesmo navegador.', FALSE),
(829, 'O armazenamento se torna automaticamente permanente.', FALSE),
(829, 'Uma invocação posterior pode ocorrer em outra instância.', TRUE),
(829, 'A sessão fica criptografada por definição.', FALSE);

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

WHERE q.quiz_id = 24
  AND q.dificuldade = 'MEDIO'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
