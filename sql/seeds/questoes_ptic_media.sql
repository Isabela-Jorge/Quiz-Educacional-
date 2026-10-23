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
--    WHERE quiz_id = 26
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
-- DISCIPLINA: PTIC - Módulo 1
-- DIFICULDADE: MÉDIO
-- TOTAL: 20 questões
-- PONTUAÇÃO: 10 pontos por questão
-- TEMPO: 15 segundos por questão
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz de PTIC do módulo 1
SET @quiz_ptic_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d ON d.id = q.disciplina_id
    WHERE d.nome = 'Projetos de Tecnologia de Informação e Comunicação'
      AND d.modulo = 1
    LIMIT 1
);


-- ============================================================
-- PTIC | Questões 21 a 40 | Nível médio
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
(@quiz_ptic_id, 'Qual é a diferença central entre RAM e armazenamento em SSD?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Um computador está lento ao abrir muitos aplicativos e usa quase toda a RAM. Qual ação tende a aliviar a pressão imediata sobre a memória?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Em uma rede doméstica, qual é a função típica do roteador?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'O que diferencia o endereço IP do endereço MAC em uma rede?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Por que instalar atualizações de segurança do sistema operacional?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual prática reduz o risco de perda de dados em um projeto escolar?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Ao receber um e-mail pedindo sua senha por um link inesperado, qual conduta é mais segura?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual é a principal finalidade do DNS na navegação?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Um arquivo de 2 GB precisa ser copiado para um pendrive formatado em FAT32. Qual afirmação está correta?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual é a diferença entre HTTP e HTTPS?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual recurso ajuda a localizar a origem de uma falha recorrente no sistema?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Em uma planilha, para que serve uma fórmula como =SOMA(B2:B10)?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual é o benefício principal do armazenamento em nuvem para um grupo de trabalho?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual medida é adequada antes de instalar um aplicativo desconhecido?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'O que é virtualização de máquinas?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Um usuário apagou acidentalmente um arquivo compartilhado. Qual recurso pode facilitar a recuperação?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual é a finalidade do princípio do menor privilégio?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Por que é útil padronizar nomes de arquivos em um projeto?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Qual é a função de um firewall de rede ou de host?', 'MEDIO', 10, 15),
(@quiz_ptic_id, 'Ao compartilhar um documento com colegas, qual permissão deve receber alguém que apenas precisa consultar o conteúdo?', 'MEDIO', 10, 15);



-- ============================================================
-- PTIC - ALTERNATIVAS DAS QUESTÕES 21 A 40
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 21 | ID 29 | Correta: A
(29, 'A RAM é volátil; o SSD mantém os dados sem energia.', TRUE),
(29, 'O SSD executa instruções; a RAM fornece energia.', FALSE),
(29, 'Ambos perdem dados quando desligados.', FALSE),
(29, 'A RAM só armazena imagens; o SSD só textos.', FALSE),

-- Questão 22 | ID 30 | Correta: B
(30, 'Aumentar o brilho do monitor.', FALSE),
(30, 'Fechar aplicativos desnecessários.', TRUE),
(30, 'Trocar o cabo de rede.', FALSE),
(30, 'Alterar o papel de parede.', FALSE),

-- Questão 23 | ID 31 | Correta: C
(31, 'Armazenar documentos do usuário.', FALSE),
(31, 'Exibir páginas HTML.', FALSE),
(31, 'Encaminhar tráfego entre redes, como a rede local e a internet.', TRUE),
(31, 'Executar o sistema operacional dos notebooks.', FALSE),

-- Questão 24 | ID 32 | Correta: D
(32, 'Ambos identificam somente usuários.', FALSE),
(32, 'O MAC é sempre o endereço público na internet.', FALSE),
(32, 'O IP é o nome do computador; o MAC é a senha.', FALSE),
(32, 'O IP identifica logicamente uma interface na rede; o MAC identifica a interface no enlace.', TRUE),

-- Questão 25 | ID 33 | Correta: A
(33, 'Para corrigir vulnerabilidades conhecidas e reduzir riscos.', TRUE),
(33, 'Para dispensar cópias de segurança.', FALSE),
(33, 'Para impedir todo e qualquer ataque.', FALSE),
(33, 'Para eliminar a necessidade de senhas.', FALSE),

-- Questão 26 | ID 34 | Correta: B
(34, 'Manter a única cópia em um pendrive.', FALSE),
(34, 'Fazer backups periódicos e verificar se podem ser restaurados.', TRUE),
(34, 'Salvar arquivos somente na área de trabalho.', FALSE),
(34, 'Desativar o histórico de versões.', FALSE),

-- Questão 27 | ID 35 | Correta: C
(35, 'Responder com a senha para confirmar identidade.', FALSE),
(35, 'Abrir o link para conferir a aparência da página.', FALSE),
(35, 'Acessar o serviço pelo endereço oficial e verificar a solicitação.', TRUE),
(35, 'Encaminhar a mensagem a todos os contatos.', FALSE),

-- Questão 28 | ID 36 | Correta: D
(36, 'Criptografar fisicamente os cabos.', FALSE),
(36, 'Substituir o roteador.', FALSE),
(36, 'Aumentar a memória disponível.', FALSE),
(36, 'Traduzir nomes de domínio em endereços IP, entre outras consultas.', TRUE),

-- Questão 29 | ID 37 | Correta: A
(37, 'O arquivo está abaixo do limite aproximado de 4 GB por arquivo do FAT32.', TRUE),
(37, 'O FAT32 aceita somente arquivos menores que 1 MB.', FALSE),
(37, 'O FAT32 não permite arquivos de vídeo.', FALSE),
(37, 'O FAT32 só funciona com arquivos de texto.', FALSE),

-- Questão 30 | ID 38 | Correta: B
(38, 'HTTP é exclusivo para redes locais.', FALSE),
(38, 'HTTPS utiliza TLS para proteger a comunicação em trânsito.', TRUE),
(38, 'HTTPS dispensa a verificação de certificados.', FALSE),
(38, 'HTTP garante sigilo por padrão.', FALSE),

-- Questão 31 | ID 39 | Correta: C
(39, 'Mudar o nome da pasta.', FALSE),
(39, 'Diminuir a resolução da tela.', FALSE),
(39, 'Consultar logs e mensagens de erro.', TRUE),
(39, 'Excluir documentos antigos aleatoriamente.', FALSE),

-- Questão 32 | ID 40 | Correta: D
(40, 'Formatar as células como texto.', FALSE),
(40, 'Ordenar os registros alfabeticamente.', FALSE),
(40, 'Bloquear a edição da planilha.', FALSE),
(40, 'Calcular a soma dos valores no intervalo indicado.', TRUE),

-- Questão 33 | ID 41 | Correta: A
(41, 'Permitir acesso e colaboração remotos conforme as permissões configuradas.', TRUE),
(41, 'Garantir acesso sem internet em qualquer circunstância.', FALSE),
(41, 'Eliminar todos os riscos de perda de dados.', FALSE),
(41, 'Tornar desnecessário controlar quem pode editar.', FALSE),

-- Questão 34 | ID 42 | Correta: B
(42, 'Desativar a proteção do sistema.', FALSE),
(42, 'Verificar a procedência, permissões e reputação do fornecedor.', TRUE),
(42, 'Conceder acesso irrestrito aos arquivos.', FALSE),
(42, 'Compartilhar a senha do administrador.', FALSE),

-- Questão 35 | ID 43 | Correta: C
(43, 'Transformar programas em componentes físicos.', FALSE),
(43, 'Criar cópias de arquivos por e-mail.', FALSE),
(43, 'Executar ambientes computacionais virtuais sobre recursos físicos.', TRUE),
(43, 'Usar obrigatoriamente dois monitores.', FALSE),

-- Questão 36 | ID 44 | Correta: D
(44, 'Aumentar a velocidade da internet.', FALSE),
(44, 'Trocar o teclado.', FALSE),
(44, 'Limpar o cache do navegador.', FALSE),
(44, 'Histórico de versões ou lixeira do serviço, quando disponíveis.', TRUE),

-- Questão 37 | ID 45 | Correta: A
(45, 'Conceder apenas as permissões necessárias a cada usuário ou processo.', TRUE),
(45, 'Permitir que todos sejam administradores.', FALSE),
(45, 'Eliminar a necessidade de autenticação.', FALSE),
(45, 'Bloquear o acesso de todos aos sistemas.', FALSE),

-- Questão 38 | ID 46 | Correta: B
(46, 'Porque reduz o consumo de energia da CPU.', FALSE),
(46, 'Porque facilita busca, organização e identificação de versões.', TRUE),
(46, 'Porque substitui a necessidade de documentação.', FALSE),
(46, 'Porque impede automaticamente edições indevidas.', FALSE),

-- Questão 39 | ID 47 | Correta: C
(47, 'Criar backups automaticamente.', FALSE),
(47, 'Converter arquivos PDF em texto.', FALSE),
(47, 'Filtrar conexões segundo regras de segurança.', TRUE),
(47, 'Corrigir falhas físicas da memória RAM.', FALSE),

-- Questão 40 | ID 48 | Correta: D
(48, 'Administrador.', FALSE),
(48, 'Proprietário.', FALSE),
(48, 'Editor completo.', FALSE),
(48, 'Leitor ou visualizador.', TRUE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES MÉDIAS DE PTIC
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
WHERE q.quiz_id = @quiz_ptic_id
  AND q.dificuldade = 'MEDIO'
GROUP BY q.id, q.enunciado
ORDER BY q.id;