-- ============================================================
-- TABELA: alternativa
-- DESCRIÇÃO:
-- Armazena as alternativas de resposta de cada questão.
--
-- Cada questão deverá possuir quatro alternativas,
-- sendo apenas uma delas correta.
--
-- O cadastro das alternativas e a definição do gabarito
-- serão realizados exclusivamente pela equipe de
-- Banco de Dados.
--
-- O backend utilizará essas informações para verificar
-- se a resposta escolhida pelo aluno está correta.
-- ============================================================

CREATE TABLE alternativa (

    -- Identificador único da alternativa.
    -- PRIMARY KEY: define a chave primária da tabela.
    -- AUTO_INCREMENT: gera automaticamente o próximo ID.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Identificador da questão à qual a alternativa pertence.
    -- NOT NULL: toda alternativa deve pertencer a uma questão.
    -- Será utilizado como chave estrangeira.
    questao_id INT NOT NULL,

    -- Texto da alternativa apresentada ao aluno.
    -- TEXT: permite armazenar respostas mais extensas.
    -- NOT NULL: preenchimento obrigatório.
    texto_alternativa TEXT NOT NULL,

    -- Identifica se a alternativa é correta ou incorreta.
    --
    -- TRUE  (1): alternativa correta.
    -- FALSE (0): alternativa incorreta.
    --
    -- NOT NULL: impede valores nulos.
    is_correta BOOLEAN NOT NULL,

    -- Coluna gerada automaticamente pelo MySQL.
    --
    -- Se a alternativa estiver marcada como correta,
    -- recebe o ID da questão.
    --
    -- Se estiver incorreta, recebe NULL.
    --
    -- GENERATED ALWAYS AS: define uma coluna calculada.
    -- STORED: armazena o resultado calculado no banco.
    --
    -- Essa coluna auxilia na prevenção de duas
    -- alternativas corretas para a mesma questão.
    questao_correta_id INT
        GENERATED ALWAYS AS (
            CASE
                WHEN is_correta = TRUE THEN questao_id
                ELSE NULL
            END
        ) STORED,

    -- Restringe os valores de is_correta a 0 ou 1.
    -- Impede cadastrar valores como 2, 3 ou negativos.
    CHECK (is_correta IN (0, 1)),

    -- Cria uma chave única composta por id e questao_id.
    --
    -- Será utilizada pela tabela resposta_aluno para
    -- garantir que a alternativa escolhida pertença
    -- à questão que o aluno está respondendo.
    UNIQUE (id, questao_id),

    -- Impede que duas alternativas sejam marcadas
    -- como corretas para uma mesma questão.
    --
    -- Como o MySQL permite múltiplos valores NULL
    -- em uma restrição UNIQUE, várias alternativas
    -- incorretas continuam sendo permitidas.
    UNIQUE (questao_correta_id),

    -- Define o relacionamento entre alternativa e questao.
    --
    -- Impede cadastrar uma alternativa associada
    -- a uma questão inexistente.
    FOREIGN KEY (questao_id) REFERENCES questao(id)

);