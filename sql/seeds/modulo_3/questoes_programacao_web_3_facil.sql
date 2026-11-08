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
-- DIFICULDADE: FACIL
-- TOTAL: 20 questoes
-- PONTUACAO: 5 pontos por questao
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
-- Programacao Web III | QUESTOES 01 A 20 | NIVEL FÁCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web3_id, 'O que caracteriza uma aplicação serverless?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual é a função principal de uma API em uma aplicação web?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é uma função como serviço (FaaS)?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual método HTTP costuma ser usado para consultar um recurso?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual código HTTP indica uma resposta bem-sucedida comum?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é implantação (deploy) de uma aplicação?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Para que serve uma variável de ambiente?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é um endpoint de API?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual formato é frequentemente utilizado para trocar dados em APIs web?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que significa HTTPS?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é escalabilidade em serviços web?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual serviço costuma armazenar arquivos estáticos de um site?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual é a finalidade básica de um log de aplicação?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é autenticação?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é autorização?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual serviço pode encaminhar requisições HTTP a funções serverless?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual evento pode disparar uma função serverless?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que representa um domínio na publicação de um site?', 'FACIL', 5, 15),
(@quiz_web3_id, 'Qual é o papel do DNS?', 'FACIL', 5, 15),
(@quiz_web3_id, 'O que é um ambiente de produção?', 'FACIL', 5, 15);

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
  AND dificuldade = 'FACIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB III | ALTERNATIVAS DAS QUESTÕES 01 a 20
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- QUESTAO 01 | ID 790 | GABARITO D
(790, 'O banco de dados deixa de ser necessário.', FALSE),
(790, 'Todo código é executado apenas no navegador.', FALSE),
(790, 'A aplicação não utiliza servidores.', FALSE),
(790, 'A infraestrutura dos servidores é gerenciada pelo provedor.', TRUE),

-- QUESTAO 02 | ID 791 | GABARITO B
(791, 'Eliminar a necessidade de autenticação.', FALSE),
(791, 'Permitir a comunicação entre sistemas por interfaces definidas.', TRUE),
(791, 'Garantir que todo serviço seja gratuito.', FALSE),
(791, 'Substituir obrigatoriamente a interface visual.', FALSE),

-- QUESTAO 03 | ID 792 | GABARITO A
(792, 'Código executado sob demanda em ambiente gerenciado.', TRUE),
(792, 'Um arquivo HTML armazenado localmente.', FALSE),
(792, 'Um servidor físico dedicado ao cliente.', FALSE),
(792, 'Um banco de dados instalado no navegador.', FALSE),

-- QUESTAO 04 | ID 793 | GABARITO B
(793, 'POST', FALSE),
(793, 'GET', TRUE),
(793, 'DELETE', FALSE),
(793, 'PATCH', FALSE),

-- QUESTAO 05 | ID 794 | GABARITO C
(794, '404', FALSE),
(794, '500', FALSE),
(794, '200', TRUE),
(794, '401', FALSE),

-- QUESTAO 06 | ID 795 | GABARITO D
(795, 'Apagar o histórico de versões do projeto.', FALSE),
(795, 'Escrever apenas o código-fonte localmente.', FALSE),
(795, 'Converter todo código para linguagem de máquina manualmente.', FALSE),
(795, 'Disponibilizar uma versão do software em um ambiente de execução.', TRUE),

-- QUESTAO 07 | ID 796 | GABARITO B
(796, 'Definir obrigatoriamente o nome do repositório.', FALSE),
(796, 'Fornecer configurações ao processo sem fixá-las no código-fonte.', TRUE),
(796, 'Substituir todos os testes automatizados.', FALSE),
(796, 'Criar automaticamente uma interface responsiva.', FALSE),

-- QUESTAO 08 | ID 797 | GABARITO D
(797, 'Um componente físico da rede local.', FALSE),
(797, 'O arquivo de estilo principal do site.', FALSE),
(797, 'Uma extensão exclusiva de arquivos de imagem.', FALSE),
(797, 'Um endereço associado a uma operação ou recurso do serviço.', TRUE),

-- QUESTAO 09 | ID 798 | GABARITO D
(798, 'BMP', FALSE),
(798, 'MP3', FALSE),
(798, 'EXE', FALSE),
(798, 'JSON', TRUE),

-- QUESTAO 10 | ID 799 | GABARITO D
(799, 'HTTP sem necessidade de rede.', FALSE),
(799, 'Protocolo exclusivo para bancos SQL.', FALSE),
(799, 'Formato de compactação de imagens.', FALSE),
(799, 'HTTP protegido por TLS.', TRUE),

-- QUESTAO 11 | ID 800 | GABARITO A
(800, 'Capacidade de atender variações na demanda de trabalho.', TRUE),
(800, 'Processo de reduzir a resolução das imagens.', FALSE),
(800, 'Garantia de ausência de erros de programação.', FALSE),
(800, 'Obrigação de executar em um único computador.', FALSE),

-- QUESTAO 12 | ID 801 | GABARITO B
(801, 'Driver de placa de vídeo.', FALSE),
(801, 'Armazenamento de objetos.', TRUE),
(801, 'Editor de texto do sistema.', FALSE),
(801, 'Fila de impressão local.', FALSE),

-- QUESTAO 13 | ID 802 | GABARITO C
(802, 'Substituir a documentação de requisitos.', FALSE),
(802, 'Aumentar sempre a velocidade da rede.', FALSE),
(802, 'Registrar eventos relevantes para diagnóstico e acompanhamento.', TRUE),
(802, 'Impedir automaticamente qualquer ataque.', FALSE),

-- QUESTAO 14 | ID 803 | GABARITO B
(803, 'Comprimir os arquivos de implantação.', FALSE),
(803, 'Verificar a identidade de quem acessa um sistema.', TRUE),
(803, 'Escolher a linguagem de programação.', FALSE),
(803, 'Definir o layout das páginas.', FALSE),

-- QUESTAO 15 | ID 804 | GABARITO C
(804, 'Confirmar que o servidor está ligado.', FALSE),
(804, 'Gerar o endereço IP do dispositivo.', FALSE),
(804, 'Determinar quais ações um usuário identificado pode realizar.', TRUE),
(804, 'Converter HTML em CSS.', FALSE),

-- QUESTAO 16 | ID 805 | GABARITO C
(805, 'Gerenciador de janelas.', FALSE),
(805, 'Compilador de CSS.', FALSE),
(805, 'API Gateway.', TRUE),
(805, 'Editor de imagens.', FALSE),

-- QUESTAO 17 | ID 806 | GABARITO A
(806, 'Uma requisição HTTP recebida.', TRUE),
(806, 'A mudança de brilho do monitor sem sensor conectado.', FALSE),
(806, 'A simples existência de um arquivo PDF no computador do usuário.', FALSE),
(806, 'O movimento físico do mouse sem integração alguma.', FALSE),

-- QUESTAO 18 | ID 807 | GABARITO D
(807, 'O número de linhas de código do projeto.', FALSE),
(807, 'A quantidade de memória RAM disponível.', FALSE),
(807, 'A versão do navegador do desenvolvedor.', FALSE),
(807, 'Um nome utilizado para localizar um serviço na internet.', TRUE),

-- QUESTAO 19 | ID 808 | GABARITO D
(808, 'Substituir o protocolo HTTP.', FALSE),
(808, 'Validar senhas dentro do banco de dados.', FALSE),
(808, 'Criar componentes React automaticamente.', FALSE),
(808, 'Resolver nomes de domínio para informações de endereçamento.', TRUE),

-- QUESTAO 20 | ID 809 | GABARITO C
(809, 'Simulador sem acesso de usuários.', FALSE),
(809, 'Pasta destinada exclusivamente a rascunhos.', FALSE),
(809, 'Ambiente no qual o serviço é disponibilizado aos usuários finais.', TRUE),
(809, 'Ferramenta usada somente para desenhar telas.', FALSE);

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

WHERE q.quiz_id = 24
  AND q.dificuldade = 'FACIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
