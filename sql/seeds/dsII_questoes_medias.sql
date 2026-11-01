-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script correspondem ao banco
-- de dados original do projeto.
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
--    WHERE quiz_id = @quiz_ds2_id
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
-- DISCIPLINA: Desenvolvimento de Sistemas II - 3º Módulo
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTULAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de Desenvolvimento de Sistemas II
SET @quiz_ds2_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Desenvolvimento de Sistemas II' 
       OR d.nome REGEXP 'DS II([^I]|$)'
    LIMIT 1
);

-- ============================================================
-- DS II | Questões 21 a 40 | Nível médio
-- 10 pontos | 15 segundos
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_ds2_id, 'Qual é a diferença fundamental entre uma classe abstrata e uma interface em POO?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é a sobrecarga de métodos (Overloading)?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que caracteriza a sobrescrita de métodos (Overriding)?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é um padrão de projeto (Design Pattern) Creational como o Singleton?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é o papel da camada View no padrão MVC?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'No padrão MVC, qual é a principal responsabilidade do Controller?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual cláusula SQL é utilizada para agrupar registros e aplicar funções de agregação como SUM ou COUNT?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual a diferença entre as cláusulas WHERE e HAVING no SQL?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que faz o comando INNER JOIN em uma consulta SQL?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é o comportamento do LEFT JOIN em relação aos registros da tabela da esquerda?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Em bancos de dados relacionais, o que define uma transação SQL (BEGIN, COMMIT, ROLLBACK)?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é um índice (INDEX) em uma tabela de banco de dados relacional?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é uma API RESTful?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual verbo HTTP é utilizado para atualizar parcialmente um recurso existente em uma API REST?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual código de status HTTP indica que o recurso solicitado não foi encontrado no servidor?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é o JWT (JSON Web Token) e qual é seu uso comum em APIs?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que representa o comando `git merge` em um fluxo de trabalho com Git?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'Qual é a finalidade do arquivo `.gitignore` em um projeto versionado com Git?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que é a Injeção de Dependência (Dependency Injection)?', 'MEDIO', 10, 15),
(@quiz_ds2_id, 'O que significa ORM (Object-Relational Mapping) no desenvolvimento de software?', 'MEDIO', 10, 15);

-- ============================================================
-- DS II | Alternativas das questões 21 a 40
-- (Nota: Ajuste os IDs da coluna questao_id conforme a sua base local gerada)
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | Correta: A
(1, 'Interfaces não contêm código nem estado, enquanto classes abstratas podem ter métodos implementados e atributos.', TRUE),
(1, 'Classes abstratas não podem ser herdadas por nenhuma outra classe.', FALSE),
(1, 'Interfaces permitem criar instâncias diretamente com o operador new.', FALSE),
(1, 'Não há diferença, ambas são termos idênticos para o mesmo conceito.', FALSE),

-- Questão 22 | Correta: A
(2, 'Definir na mesma classe métodos com o mesmo nome, mas com assinaturas/parâmetros diferentes.', TRUE),
(2, 'Substituir a implementação de um método herdado da classe pai.', FALSE),
(2, 'Deletar um método da memória em tempo de execução.', FALSE),
(2, 'Importar métodos externos de bibliotecas de terceiros.', FALSE),

-- Questão 23 | Correta: A
(3, 'A redefinição em uma classe filha de um método herdado da classe pai com a mesma assinatura.', TRUE),
(3, 'A criação de variáveis globais dentro de uma função.', FALSE),
(3, 'O bloqueio de acesso a atributos privados.', FALSE),
(3, 'A alteração do nome do método em tempo de compilação.', FALSE),

-- Questão 24 | Correta: A
(4, 'Um padrão que garante a existência de apenas uma instância de uma classe em toda a aplicação.', TRUE),
(4, 'Um padrão para conectar múltiplos bancos de dados heterogêneos.', FALSE),
(4, 'Uma estrutura para renderizar telas em HTML5.', FALSE),
(4, 'Um método de criptografia de senhas.', FALSE),

-- Questão 25 | Correta: A
(5, 'Apresentar a interface de usuário e exibir os dados ao usuário.', TRUE),
(5, 'Executar regras de negócio e validações complexas.', FALSE),
(5, 'Gerenciar conexões e transações de banco de dados.', FALSE),
(5, 'Interceptar requisições HTTP e rotear a aplicação.', FALSE),

-- Questão 26 | Correta: A
(6, 'Intermediar as requisições, acionando a Model e definindo qual View será exibida.', TRUE),
(6, 'Armazenar as tabelas físicas no disco rígido.', FALSE),
(6, 'Estilizar os componentes visuais com CSS.', FALSE),
(6, 'Compilar o código-fonte da aplicação.', FALSE),

-- Questão 27 | Correta: A
(7, 'GROUP BY.', TRUE),
(7, 'ORDER BY.', FALSE),
(7, 'JOIN BY.', FALSE),
(7, 'WHERE IN.', FALSE),

-- Questão 28 | Correta: A
(8, 'WHERE filtra linhas antes do agrupamento; HAVING filtra os resultados já agrupados.', TRUE),
(8, 'HAVING só aceita colunas de texto; WHERE aceita apenas números.', FALSE),
(8, 'WHERE é usado em DELETE; HAVING é usado exclusivamente em UPDATE.', FALSE),
(8, 'Ambas são idênticas e intercambiáveis em qualquer ponto da consulta.', FALSE),

-- Questão 29 | Correta: A
(9, 'Retorna apenas os registros que possuem correspondência em ambas as tabelas relacionadas.', TRUE),
(9, 'Retorna todos os registros da tabela da esquerda, independentemente de haver correspondência.', FALSE),
(9, 'Combina dados de duas tabelas sem precisar de uma chave de ligação.', FALSE),
(9, 'Deleta os registros duplicados entre duas tabelas.', FALSE),

-- Questão 30 | Correta: A
(10, 'Retorna todos os registros da tabela da esquerda e os correspondentes da tabela da direita (ou NULL).', TRUE),
(10, 'Retorna apenas os registros que não existem na tabela da esquerda.', FALSE),
(10, 'Exclui da busca os registros que contêm valores nulos na tabela da esquerda.', FALSE),
(10, 'Inverte a ordem das colunas da tabela principal.', FALSE),

-- Questão 31 | Correta: A
(11, 'Um conjunto de operações executadas como uma unidade de trabalho única e atômica.', TRUE),
(11, 'Um script que executa apenas em horários agendados.', FALSE),
(11, 'Uma técnica para clonar tabelas inteiras instantaneamente.', FALSE),
(11, 'Um backup automático de arquivos em nuvem.', FALSE),

-- Questão 32 | Correta: A
(12, 'Uma estrutura de dados que melhora a velocidade das operações de busca de registros.', TRUE),
(12, 'Uma cópia de segurança em formato comprimido.', FALSE),
(12, 'Uma chave estrangeira que aponta para outra base de dados.', FALSE),
(12, 'Um campo destinado exclusivamente ao armazenamento de imagens.', FALSE),

-- Questão 33 | Correta: A
(13, 'Uma interface de programação baseada nos princípios da arquitetura REST e protocolo HTTP.', TRUE),
(13, 'Um banco de dados orientado a documentos NoSQL.', FALSE),
(13, 'Um formato de arquivo de configuração exclusivo do Linux.', FALSE),
(13, 'Um servidor físico para armazenamento de backups.', FALSE),

-- Questão 34 | Correta: A
(14, 'PATCH.', TRUE),
(14, 'GET.', FALSE),
(14, 'POST.', FALSE),
(14, 'DELETE.', FALSE),

-- Questão 35 | Correta: A
(15, '404 Not Found.', TRUE),
(15, '200 OK.', FALSE),
(15, '500 Internal Server Error.', FALSE),
(15, '401 Unauthorized.', FALSE),

-- Questão 36 | Correta: A
(16, 'Um token compacto e assinado digitalmente usado para autenticação e troca segura de informações.', TRUE),
(16, 'Um driver para conectar o banco de dados à placa de rede.', FALSE),
(16, 'Uma linguagem de marcação de páginas dinâmicas.', FALSE),
(16, 'Um compilador de código Java para a web.', FALSE),

-- Questão 37 | Correta: A
(17, 'A combinação das alterações de uma ramificação (branch) na branch atual.', TRUE),
(17, 'A exclusão definitiva de todo o histórico do repositório.', FALSE),
(17, 'O download das dependências do projeto.', FALSE),
(17, 'A renomeação da branch principal.', FALSE),

-- Questão 38 | Correta: A
(18, 'Especificar arquivos e pastas não rastreados que o Git deve ignorar.', TRUE),
(18, 'Guardar as senhas do banco de dados em formato legível.', FALSE),
(18, 'Listar os nomes dos desenvolvedores autorizados no PR.', FALSE),
(18, 'Impedir a compilação do projeto no ambiente local.', FALSE),

-- Questão 39 | Correta: A
(19, 'Um padrão no qual as dependências de um objeto são fornecidas externamente em vez de criadas internamente.', TRUE),
(19, 'Um ataque cibernético focado em injeção de comandos no terminal.', FALSE),
(19, 'A instalação de softwares adicionais via sistema operacional.', FALSE),
(19, 'Um processo de limpeza de memória cache.', FALSE),

-- Questão 40 | Correta: A
(20, 'Uma técnica para mapear tabelas relacionais em classes e objetos na aplicação.', TRUE),
(20, 'Um protocolo para gerenciamento de rede sem fio.', FALSE),
(20, 'Um framework visual para desenvolvimento mobile.', FALSE),
(20, 'Um algoritmo de ordenação de listas de dados.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE DS II
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
WHERE q.quiz_id = @quiz_ds2_id
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
