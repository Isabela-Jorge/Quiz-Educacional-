
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
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questoes
-- PONTUACAO: 15 pontos por questao
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
-- PROGRAMACAO DE APLICATIVOS MOBILE I | QUESTOES 41 A 60 | NIVEL DIFICIL
-- =======================================================================

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
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ========================================================================
-- PROGRAMACAO DE APLICATIVOS MOBILE I | ALTERNATIVAS DAS QUESTOES 41 A 60
-- ========================================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES

-- QUESTAO 41 | ID 710 | GABARITO B
(710, 'Para acelerar a velocidade do Wi-Fi.', FALSE),
(710, 'Para evitar atualizar um State que já foi removido da árvore.', TRUE),
(710, 'Para impedir a criação de Futures.', FALSE),
(710, 'Para desativar a navegação.', FALSE),

-- QUESTAO 42 | ID 711 | GABARITO A
(711, 'Verificar se o State continua montado antes de atualizá-lo.', TRUE),
(711, 'Chamar setState independentemente do ciclo de vida.', FALSE),
(711, 'Recriar o banco de dados ao receber a resposta.', FALSE),
(711, 'Forçar o retorno à tela anterior sem avaliar o contexto.', FALSE),

-- QUESTAO 43 | ID 712 | GABARITO D
(712, 'Ela se torna automaticamente inacessível a qualquer pessoa.', FALSE),
(712, 'Ela impede todas as requisições HTTP.', FALSE),
(712, 'Ela substitui a autenticação do servidor.', FALSE),
(712, 'Ela pode ser extraída do pacote e utilizada indevidamente.', TRUE),

-- QUESTAO 44 | ID 713 | GABARITO C
(713, 'Salvar em texto puro em um arquivo público.', FALSE),
(713, 'Exibir o token na interface para facilitar suporte.', FALSE),
(713, 'Usar armazenamento seguro apropriado à plataforma, conforme o modelo de ameaça.', TRUE),
(713, 'Colocar o token no nome do aplicativo.', FALSE),

-- QUESTAO 45 | ID 714 | GABARITO B
(714, 'Transferir toda a base a cada toque.', FALSE),
(714, 'Usar paginação ou carregamento incremental.', TRUE),
(714, 'Duplicar cada item na interface.', FALSE),
(714, 'Desabilitar qualquer indicador de carregamento.', FALSE),

-- QUESTAO 46 | ID 715 | GABARITO A
(715, 'Controlar o estado da operação e desabilitar temporariamente o envio.', TRUE),
(715, 'Aumentar a frequência de toques.', FALSE),
(715, 'Criar uma requisição para cada reconstrução da tela.', FALSE),
(715, 'Remover qualquer feedback visual.', FALSE),

-- QUESTAO 47 | ID 716 | GABARITO D
(716, 'Confiar somente no teclado do celular.', FALSE),
(716, 'Dispensar a validação no servidor se houver máscara.', FALSE),
(716, 'Aceitar qualquer valor quando houver internet.', FALSE),
(716, 'Validar na interface para orientar e validar novamente no servidor para garantir as regras.', TRUE),

-- QUESTAO 48 | ID 717 | GABARITO C
(717, 'Para criptografar automaticamente cada item.', FALSE),
(717, 'Para eliminar todas as reconstruções da tela.', FALSE),
(717, 'Para ajudar o framework a preservar a identidade correta quando itens mudam de posição.', TRUE),
(717, 'Para tornar os elementos invisíveis.', FALSE),

-- QUESTAO 49 | ID 718 | GABARITO B
(718, 'Dentro de cada componente visual duplicando requisições.', FALSE),
(718, 'Em serviços ou repositórios separados da apresentação.', TRUE),
(718, 'Exclusivamente no arquivo de ícones.', FALSE),
(718, 'No tema de cores da aplicação.', FALSE),

-- QUESTAO 50 | ID 719 | GABARITO A
(719, 'Manter dados locais relevantes e definir sincronização quando a conexão voltar.', TRUE),
(719, 'Exigir conexão contínua para visualizar qualquer dado já disponível.', FALSE),
(719, 'Excluir o cache a cada falha de rede.', FALSE),
(719, 'Armazenar somente o último erro de HTTP.', FALSE),

-- QUESTAO 51 | ID 720 | GABARITO D
(720, 'Uma garantia de que ambas terão sempre o mesmo valor.', FALSE),
(720, 'Uma atualização automática do sistema operacional.', FALSE),
(720, 'A impossibilidade de utilizar banco local.', FALSE),
(720, 'Um conflito que exige regra explícita de resolução.', TRUE),

-- QUESTAO 52 | ID 721 | GABARITO C
(721, 'Registrar senhas para facilitar depuração.', FALSE),
(721, 'Incluir tokens completos em mensagens de erro.', FALSE),
(721, 'Redigir ou omitir informações sensíveis e limitar o registro ao necessário.', TRUE),
(721, 'Publicar logs em um repositório aberto.', FALSE),

-- QUESTAO 53 | ID 722 | GABARITO B
(722, 'Garantir que qualquer servidor externo esteja sempre disponível.', FALSE),
(722, 'Verificar comportamento e renderização de componentes em ambiente de teste.', TRUE),
(722, 'Substituir toda validação de segurança.', FALSE),
(722, 'Eliminar a necessidade de testes em dispositivos reais.', FALSE),

-- QUESTAO 54 | ID 723 | GABARITO A
(723, 'Permitir adaptação do layout e respeitar escalonamento de texto.', TRUE),
(723, 'Fixar alturas mínimas para cortar textos maiores.', FALSE),
(723, 'Desabilitar leitores de tela.', FALSE),
(723, 'Converter todo texto em imagem sem descrição.', FALSE),

-- QUESTAO 55 | ID 724 | GABARITO D
(724, 'Melhorar obrigatoriamente a taxa de quadros.', FALSE),
(724, 'Garantir menor uso de bateria em todos os casos.', FALSE),
(724, 'Impedir qualquer consumo de memória.', FALSE),
(724, 'Provocar travamentos e perda de fluidez durante a interação.', TRUE),

-- QUESTAO 56 | ID 725 | GABARITO C
(725, 'Executar laços pesados dentro de build.', FALSE),
(725, 'Aumentar a quantidade de setState por segundo.', FALSE),
(725, 'Transferir trabalho adequado para um isolate ou estratégia equivalente fora da execução da UI.', TRUE),
(725, 'Recriar todos os widgets continuamente.', FALSE),

-- QUESTAO 57 | ID 726 | GABARITO B
(726, 'Descartar sempre as alterações sem aviso.', FALSE),
(726, 'Avaliar se deve avisar sobre possível perda de dados antes de sair.', TRUE),
(726, 'Enviar os dados sem consentimento.', FALSE),
(726, 'Desativar permanentemente a navegação de retorno.', FALSE),

-- QUESTAO 58 | ID 727 | GABARITO A
(727, 'Representar explicitamente carregamento, sucesso, vazio e erro conforme o caso.', TRUE),
(727, 'Exibir a mesma mensagem de sucesso para qualquer resposta.', FALSE),
(727, 'Ocultar falhas e manter carregamento infinito.', FALSE),
(727, 'Tratar uma lista vazia como exceção obrigatória.', FALSE),

-- QUESTAO 59 | ID 728 | GABARITO D
(728, 'Enviar credenciais em HTTP sem criptografia.', FALSE),
(728, 'Desativar verificações de certificados em produção.', FALSE),
(728, 'Colocar senhas na URL da requisição.', FALSE),
(728, 'Usar HTTPS com validação adequada de certificados.', TRUE),

-- QUESTAO 60 | ID 729 | GABARITO C
(729, 'Excluir dados de qualquer usuário apenas pelo ID informado.', FALSE),
(729, 'Ocultar as consequências da ação.', FALSE),
(729, 'Solicitar confirmação clara para ação destrutiva e executar exclusão autorizada no servidor.', TRUE),
(729, 'Considerar a exclusão concluída antes da resposta do servidor.', FALSE);

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

WHERE q.quiz_id = @quiz_mobile1_id
  AND q.dificuldade = 'DIFICIL'

GROUP BY
    q.id,
    q.enunciado

ORDER BY q.id;
