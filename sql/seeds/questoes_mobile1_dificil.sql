-- ============================================================
-- ATENÇÃO: IDENTIFICADORES DAS QUESTÕES
-- ============================================================
-- Os IDs utilizados neste script são IDs de EXEMPLO (129 a 148).
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
--      AND dificuldade = 'DIFICIL'
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
-- DIFICULDADE: DIFÍCIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos por questão
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
-- MOBILE I | Questões 41 a 60 | Nível difícil
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_mobile1_id, 'Em Flutter, por que verificar mounted após uma operação assíncrona antes de usar setState?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Uma tela chama uma API e recebe dados depois que o usuário saiu dela. Qual abordagem é segura?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual risco existe ao colocar uma chave secreta de API diretamente no código do aplicativo distribuído?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual estratégia é adequada para guardar um token sensível no dispositivo?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Uma lista remota pode retornar milhares de itens. Qual solução reduz tráfego e custo de renderização?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Como evitar que um botão envie várias requisições idênticas enquanto a primeira está pendente?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Em um formulário, qual prática previne inconsistências entre validação local e servidor?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Por que usar chaves estáveis em itens de uma lista de widgets com estado?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Em uma arquitetura com camadas, onde normalmente concentrar o acesso a dados remotos?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Um aplicativo precisa funcionar temporariamente sem internet. Qual estratégia é mais adequada?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual problema surge quando duas alterações offline do mesmo registro são sincronizadas?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual prática evita expor dados pessoais em logs de produção?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual é a vantagem de testes de widget no Flutter?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Um aplicativo usa vários tamanhos de tela e fontes ampliadas. Qual decisão favorece acessibilidade?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual é o risco de executar trabalho computacional pesado na thread principal da interface?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Como reduzir bloqueios da interface causados por processamento intenso em Flutter?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Em navegação mobile, qual cuidado é importante ao retornar de uma tela de edição com alterações não salvas?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual é a melhor abordagem para tratar estados de uma consulta assíncrona na interface?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Qual medida contribui para proteger a comunicação entre aplicativo e API?', 'DIFICIL', 15, 15),
(@quiz_mobile1_id, 'Um aplicativo permite excluir uma conta e seus dados. Qual é a boa prática de UX e segurança?', 'DIFICIL', 15, 15);

-- ============================================================
-- MOBILE I | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | Correta: B
(129, 'Para acelerar a velocidade do Wi-Fi.', FALSE),
(129, 'Para evitar atualizar um State que já foi removido da árvore.', TRUE),
(129, 'Para impedir a criação de Futures.', FALSE),
(129, 'Para desativar a navegação.', FALSE),

-- Questão 42 | Correta: A
(130, 'Verificar se o State continua montado antes de atualizá-lo.', TRUE),
(130, 'Chamar setState independentemente do ciclo de vida.', FALSE),
(130, 'Recriar o banco de dados ao receber a resposta.', FALSE),
(130, 'Forçar o retorno à tela anterior sem avaliar o contexto.', FALSE),

-- Questão 43 | Correta: D
(131, 'Ela se torna automaticamente inacessível a qualquer pessoa.', FALSE),
(131, 'Ela impede todas as requisições HTTP.', FALSE),
(131, 'Ela substitui a autenticação do servidor.', FALSE),
(131, 'Ela pode ser extraída do pacote e utilizada indevidamente.', TRUE),

-- Questão 44 | Correta: C
(132, 'Salvar em texto puro em um arquivo público.', FALSE),
(132, 'Exibir o token na interface para facilitar suporte.', FALSE),
(132, 'Usar armazenamento seguro apropriado à plataforma, conforme o modelo de ameaça.', TRUE),
(132, 'Colocar o token no nome do aplicativo.', FALSE),

-- Questão 45 | Correta: B
(133, 'Transferir toda a base a cada toque.', FALSE),
(133, 'Usar paginação ou carregamento incremental.', TRUE),
(133, 'Duplicar cada item na interface.', FALSE),
(133, 'Desabilitar qualquer indicador de carregamento.', FALSE),

-- Questão 46 | Correta: A
(134, 'Controlar o estado da operação e desabilitar temporariamente o envio.', TRUE),
(134, 'Aumentar a frequência de toques.', FALSE),
(134, 'Criar uma requisição para cada reconstrução da tela.', FALSE),
(134, 'Remover qualquer feedback visual.', FALSE),

-- Questão 47 | Correta: D
(135, 'Confiar somente no teclado do celular.', FALSE),
(135, 'Dispensar a validação no servidor se houver máscara.', FALSE),
(135, 'Aceitar qualquer valor quando houver internet.', FALSE),
(135, 'Validar na interface para orientar e validar novamente no servidor para garantir as regras.', TRUE),

-- Questão 48 |  Correta: C
(136, 'Para criptografar automaticamente cada item.', FALSE),
(136, 'Para eliminar todas as reconstruções da tela.', FALSE),
(136, 'Para ajudar o framework a preservar a identidade correta quando itens mudam de posição.', TRUE),
(136, 'Para tornar os elementos invisíveis.', FALSE),

-- Questão 49 | Correta: B
(137, 'Dentro de cada componente visual duplicando requisições.', FALSE),
(137, 'Em serviços ou repositórios separados da apresentação.', TRUE),
(137, 'Exclusivamente no arquivo de ícones.', FALSE),
(137, 'No tema de cores da aplicação.', FALSE),

-- Questão 50 | Correta: A
(138, 'Manter dados locais relevantes e definir sincronização quando a conexão voltar.', TRUE),
(138, 'Exigir conexão contínua para visualizar qualquer dado já disponível.', FALSE),
(138, 'Excluir o cache a cada falha de rede.', FALSE),
(138, 'Armazenar somente o último erro de HTTP.', FALSE),

-- Questão 51 | Correta: D
(139, 'Uma garantia de que ambas terão sempre o mesmo valor.', FALSE),
(139, 'Uma atualização automática do sistema operacional.', FALSE),
(139, 'A impossibilidade de utilizar banco local.', FALSE),
(139, 'Um conflito que exige regra explícita de resolução.', TRUE),

-- Questão 52 | Correta: C
(140, 'Registrar senhas para facilitar depuração.', FALSE),
(140, 'Incluir tokens completos em mensagens de erro.', FALSE),
(140, 'Redigir ou omitir informações sensíveis e limitar o registro ao necessário.', TRUE),
(140, 'Publicar logs em um repositório aberto.', FALSE),

-- Questão 53 | Correta: B
(141, 'Garantir que qualquer servidor externo esteja sempre disponível.', FALSE),
(141, 'Verificar comportamento e renderização de componentes em ambiente de teste.', TRUE),
(141, 'Substituir toda validação de segurança.', FALSE),
(141, 'Eliminar a necessidade de testes em dispositivos reais.', FALSE),

-- Questão 54 | Correta: A
(142, 'Permitir adaptação do layout e respeitar escalonamento de texto.', TRUE),
(142, 'Fixar alturas mínimas para cortar textos maiores.', FALSE),
(142, 'Desabilitar leitores de tela.', FALSE),
(142, 'Converter todo texto em imagem sem descrição.', FALSE),

-- Questão 55 | Correta: D
(143, 'Melhorar obrigatoriamente a taxa de quadros.', FALSE),
(143, 'Garantir menor uso de bateria em todos os casos.', FALSE),
(143, 'Impedir qualquer consumo de memória.', FALSE),
(143, 'Provocar travamentos e perda de fluidez durante a interação.', TRUE),

-- Questão 56 | Correta: C
(144, 'Executar laços pesados dentro de build.', FALSE),
(144, 'Aumentar a quantidade de setState por segundo.', FALSE),
(144, 'Transferir trabalho adequado para um isolate ou estratégia equivalente fora da execução da UI.', TRUE),
(144, 'Recriar todos os widgets continuamente.', FALSE),

-- Questão 57 | Correta: B
(145, 'Descartar sempre as alterações sem aviso.', FALSE),
(145, 'Avaliar se deve avisar sobre possível perda de dados antes de sair.', TRUE),
(145, 'Enviar os dados sem consentimento.', FALSE),
(145, 'Desativar permanentemente a navegação de retorno.', FALSE),

-- Questão 58 | Correta: A
(146, 'Representar explicitamente carregamento, sucesso, vazio e erro conforme o caso.', TRUE),
(146, 'Exibir a mesma mensagem de sucesso para qualquer resposta.', FALSE),
(146, 'Ocultar falhas e manter carregamento infinito.', FALSE),
(146, 'Tratar uma lista vazia como exceção obrigatória.', FALSE),

-- Questão 59 | Correta: D
(147, 'Enviar credenciais em HTTP sem criptografia.', FALSE),
(147, 'Desativar verificações de certificados em produção.', FALSE),
(147, 'Colocar senhas na URL da requisição.', FALSE),
(147, 'Usar HTTPS com validação adequada de certificados.', TRUE),

-- Questão 60 | Correta: C
(148, 'Excluir dados de qualquer usuário apenas pelo ID informado.', FALSE),
(148, 'Ocultar as consequências da ação.', FALSE),
(148, 'Solicitar confirmação clara para ação destrutiva e executar exclusão autorizada no servidor.', TRUE),
(148, 'Considerar a exclusão concluída antes da resposta do servidor.', FALSE);

-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCIL DE MOBILE I
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
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
