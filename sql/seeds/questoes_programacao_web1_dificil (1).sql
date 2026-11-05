-- ============================================================
-- IMPORTANTE:
-- Os IDs das questões serão consultados após a inserção.
-- As alternativas serão cadastradas posteriormente
-- com os IDs reais gerados pelo MySQL.
--
-- Não execute novamente este INSERT caso as questões
-- já estejam cadastradas, para evitar duplicações.
-- ============================================================

-- ============================================================
-- PROJETO: Quiz Integrador
-- DISCIPLINA: Programação Web I - Módulo 1
-- DIFICULDADE: DIFICIL
-- TOTAL: 20 questões
-- PONTUAÇÃO: 15 pontos
-- TEMPO: 15 segundos
-- ============================================================

USE quiz_ds_db;

-- Identificar o quiz da disciplina
SET @quiz_web1_id = (
    SELECT q.id
    FROM quiz q
    INNER JOIN disciplina d
        ON d.id = q.disciplina_id
    WHERE d.nome = 'Programação Web I'
      AND d.modulo = 1
    LIMIT 1
);

-- ============================================================
-- PROGRAMAÇÃO WEB I | QUESTÕES 41 A 60 | NÍVEL DIFÍCIL
-- ============================================================

INSERT INTO questao (
    quiz_id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
)
VALUES
(@quiz_web1_id, 'Por que usar elementos semânticos em vez de div para toda a estrutura?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Em uma tabela, como associar explicitamente cabeçalhos de coluna às células simples?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Como representar corretamente uma abreviação com expansão acessível?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Para criar um campo que aceite vários textos longos, qual elemento é adequado?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Como agrupar opções relacionadas dentro de um select?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual recurso nativo oferece sugestões para um input associado por list?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é o efeito de disabled em um controle de formulário HTML?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é a diferença entre readonly e disabled em um input textual?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é o uso apropriado de aria-label em um botão sem texto visível?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Em um formulário com dois radio buttons de mesma pergunta, o que faz com que pertençam ao mesmo grupo?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual atributo permite carregar uma imagem somente quando se aproxima da área visível, em navegadores compatíveis?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual marcação oferece versões de imagem conforme condições de mídia?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Para informar largura e altura intrínsecas de uma imagem, qual combinação é válida?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Como relacionar uma mensagem de ajuda a um input para tecnologias assistivas?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é a função de defer em um script externo clássico?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é uma diferença importante entre async e defer em scripts externos clássicos?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual é a vantagem de incluir width e height corretos em imagens HTML?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Ao usar input type="email", qual afirmação é correta?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Por que evitar usar placeholder como único rótulo de um campo?', 'DIFICIL', 15, 15),
(@quiz_web1_id, 'Qual estrutura HTML representa uma tabela com cabeçalho e corpo de forma semântica?', 'DIFICIL', 15, 15);

-- ============================================================
-- CONSULTAR IDs REAIS DAS QUESTÕES
-- ============================================================

SELECT
    id,
    enunciado,
    dificuldade,
    pontos,
    tempo_limite_segundos
FROM questao
WHERE quiz_id = 22
  AND dificuldade = 'DIFICIL'
ORDER BY id;

-- ============================================================
-- PROGRAMAÇÃO WEB I | Alternativas das questões 41 a 60
-- ============================================================

INSERT INTO alternativa (
    questao_id,
    texto_alternativa,
    is_correta
)
VALUES
-- Questão 41 | ID 290 | Correta: B
(290, 'Eles impedem a leitura do código-fonte', FALSE),
(290, 'Eles expressam o papel do conteúdo e ajudam acessibilidade e manutenção', TRUE),
(290, 'Eles garantem que a página não tenha erros', FALSE),
(290, 'Eles dispensam qualquer CSS', FALSE),

-- Questão 42 | ID 291 | Correta: C
(291, 'Substituir th por div', FALSE),
(291, 'Usar href nas linhas', FALSE),
(291, 'Usar th com scope="col"', TRUE),
(291, 'Aplicar alt em cada td', FALSE),

-- Questão 43 | ID 292 | Correta: A
(292, '<abbr title="HyperText Markup Language">HTML</abbr>', TRUE),
(292, '<span href="HyperText Markup Language">HTML</span>', FALSE),
(292, '<strong alt="HyperText Markup Language">HTML</strong>', FALSE),
(292, '<meta title="HTML">HyperText Markup Language</meta>', FALSE),

-- Questão 44 | ID 293 | Correta: D
(293, '<input type="button">', FALSE),
(293, '<meter>', FALSE),
(293, '<select>', FALSE),
(293, '<textarea>', TRUE),

-- Questão 45 | ID 294 | Correta: B
(294, '<datalist>', FALSE),
(294, '<optgroup>', TRUE),
(294, '<tbody>', FALSE),
(294, '<fieldset>', FALSE),

-- Questão 46 | ID 295 | Correta: D
(295, '<summary>', FALSE),
(295, '<details>', FALSE),
(295, '<progress>', FALSE),
(295, '<datalist>', TRUE),

-- Questão 47 | ID 296 | Correta: B
(296, 'Permite editar somente com JavaScript', FALSE),
(296, 'Desabilita a interação e normalmente exclui o valor do envio', TRUE),
(296, 'Envia o valor duas vezes', FALSE),
(296, 'Torna o campo obrigatório', FALSE),

-- Questão 48 | ID 297 | Correta: A
(297, 'readonly impede edição mas permite envio; disabled normalmente não envia o valor', TRUE),
(297, 'readonly apaga o valor; disabled converte em senha', FALSE),
(297, 'readonly só funciona em botões; disabled só em tabelas', FALSE),
(297, 'readonly oculta o campo; disabled o torna obrigatório', FALSE),

-- Questão 49 | ID 298 | Correta: B
(298, 'Trocar o idioma do documento', FALSE),
(298, 'Fornecer um nome acessível ao controle', TRUE),
(298, 'Definir a URL do formulário', FALSE),
(298, 'Criar automaticamente um atalho de teclado', FALSE),

-- Questão 50 | ID 299 | Correta: C
(299, 'Compartilhar o mesmo atributo id', FALSE),
(299, 'Usar valores diferentes no atributo type', FALSE),
(299, 'Compartilhar o mesmo atributo name', TRUE),
(299, 'Estar em elementos form diferentes', FALSE),

-- Questão 51 | ID 300 | Correta: D
(300, 'src="lazy"', FALSE),
(300, 'alt="lazy"', FALSE),
(300, 'decoding="eager"', FALSE),
(300, 'loading="lazy"', TRUE),

-- Questão 52 | ID 301 | Correta: C
(301, '<nav> com <a> e <span>', FALSE),
(301, '<form> com <input> e <button>', FALSE),
(301, '<picture> com <source> e <img>', TRUE),
(301, '<table> com <tr> e <td>', FALSE),

-- Questão 53 | ID 302 | Correta: B
(302, 'start e reversed no img', FALSE),
(302, 'width e height no img', TRUE),
(302, 'size e maxlength no img', FALSE),
(302, 'rows e cols no img', FALSE),

-- Questão 54 | ID 303 | Correta: D
(303, 'Usar href no input apontando para a mensagem', FALSE),
(303, 'Usar alt no form com o id da mensagem', FALSE),
(303, 'Usar action no input com o texto da mensagem', FALSE),
(303, 'Usar aria-describedby apontando para o id da mensagem', TRUE),

-- Questão 55 | ID 304 | Correta: B
(304, 'Converter JavaScript em HTML', FALSE),
(304, 'Adiar a execução até após a análise do HTML, preservando a ordem entre scripts defer', TRUE),
(304, 'Impedir o download do script', FALSE),
(304, 'Executar o script antes do início da análise do HTML', FALSE),

-- Questão 56 | ID 305 | Correta: D
(305, 'async impede download paralelo; defer obriga download sequencial', FALSE),
(305, 'async funciona apenas com CSS; defer apenas com imagens', FALSE),
(305, 'async garante a ordem dos scripts; defer nunca executa', FALSE),
(305, 'async executa quando estiver pronto; defer aguarda a análise do HTML', TRUE),

-- Questão 57 | ID 306 | Correta: D
(306, 'Impedir que a imagem seja copiada', FALSE),
(306, 'Converter automaticamente a imagem para SVG', FALSE),
(306, 'Reduzir sempre o tamanho em bytes do arquivo', FALSE),
(306, 'Reservar espaço e reduzir mudanças inesperadas de layout', TRUE),

-- Questão 58 | ID 307 | Correta: C
(307, 'O navegador confirma que a caixa postal existe', FALSE),
(307, 'O envio dispensa validação no servidor', FALSE),
(307, 'O navegador pode validar o formato, mas o servidor também precisa validar', TRUE),
(307, 'O campo fica criptografado automaticamente', FALSE),

-- Questão 59 | ID 308 | Correta: D
(308, 'Porque placeholder envia o formulário automaticamente', FALSE),
(308, 'Porque placeholder substitui o atributo name', FALSE),
(308, 'Porque placeholder é exclusivo de campos de senha', FALSE),
(308, 'Porque ele pode desaparecer durante a digitação e prejudicar a acessibilidade', TRUE),

-- Questão 60 | ID 309 | Correta: A
(309, 'table com thead e tbody', TRUE),
(309, 'form com fieldset e legend', FALSE),
(309, 'div com span e br', FALSE),
(309, 'ul com li e nav', FALSE);


-- ============================================================
-- VALIDAÇÃO DAS 20 QUESTÕES DIFÍCEIS DE PROGRAMAÇÃO WEB I
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
WHERE q.quiz_id = 22
  AND q.dificuldade = 'DIFICIL'
GROUP BY q.id, q.enunciado
ORDER BY q.id;
