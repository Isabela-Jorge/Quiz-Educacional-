-- ============================================================
-- TABELA: tentativa
-- DESCRIÇÃO:
-- Registra cada tentativa de realização de um quiz.
--
-- Cada tentativa pertence a um usuário e a um quiz.
--
-- Um aluno poderá realizar o mesmo quiz várias vezes,
-- gerando um novo registro para cada tentativa.
--
-- O backend será responsável por criar e atualizar
-- os registros desta tabela.
--
-- REGRAS DE NEGÓCIO:
-- Uma tentativa inicia com status EM_ANDAMENTO.
-- Ao concluir o quiz, recebe o status FINALIZADA.
-- A pontuação inicial é 0.00.
-- ============================================================

CREATE TABLE tentativa (

    -- Identificador único da tentativa.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Identificador do usuário que está realizando o quiz.
    -- NOT NULL: toda tentativa deve pertencer a um usuário.
    -- Será utilizado como chave estrangeira.
    usuario_id INT NOT NULL,

    -- Identificador do quiz que está sendo realizado.
    -- NOT NULL: toda tentativa deve estar associada a um quiz.
    -- Será utilizado como chave estrangeira.
    quiz_id INT NOT NULL,

    -- Registra a data e a hora de início da tentativa.
    --
    -- DATETIME: armazena data e horário.
    -- DEFAULT CURRENT_TIMESTAMP: utiliza automaticamente
    -- a data e a hora atuais quando o valor não é informado.
    data_hora_inicio DATETIME DEFAULT CURRENT_TIMESTAMP,

    -- Registra a data e a hora de conclusão da tentativa.
    --
    -- NULL: permite que o campo fique vazio enquanto
    -- o aluno ainda estiver realizando o quiz.
    --
    -- O backend deverá preencher esse campo
    -- quando a tentativa for finalizada.
    data_hora_fim DATETIME NULL,

    -- Armazena a pontuação total obtida na tentativa.
    --
    -- DECIMAL(7,2): permite até cinco dígitos antes
    -- da vírgula e dois dígitos decimais.
    --
    -- NOT NULL: preenchimento obrigatório.
    -- DEFAULT 0.00: toda tentativa começa com zero pontos.
    pontuacao_total DECIMAL(7,2) NOT NULL DEFAULT 0.00,

    -- Identifica a situação atual da tentativa.
    --
    -- EM_ANDAMENTO: quiz iniciado, ainda não finalizado.
    -- FINALIZADA: quiz concluído.
    --
    -- DEFAULT 'EM_ANDAMENTO': status inicial automático.
    status VARCHAR(20) NOT NULL DEFAULT 'EM_ANDAMENTO',

    -- Impede o armazenamento de pontuações negativas.
    CHECK (pontuacao_total >= 0),

    -- Restringe os valores permitidos para o status.
    -- Impede registrar situações não previstas no sistema.
    CHECK (status IN ('EM_ANDAMENTO', 'FINALIZADA')),

    -- Cria uma chave única composta por id e quiz_id.
    --
    -- Essa combinação será utilizada pela tabela
    -- resposta_aluno para garantir que as respostas
    -- estejam associadas ao quiz correto da tentativa.
    UNIQUE (id, quiz_id),

    -- Relaciona a tentativa ao usuário que a realizou.
    --
    -- Impede registrar uma tentativa para um usuário
    -- inexistente no banco de dados.
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),

    -- Relaciona a tentativa ao quiz realizado.
    --
    -- Impede registrar uma tentativa associada
    -- a um quiz inexistente.
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)

);