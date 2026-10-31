import { pool } from "../config/db.js";

export async function calcularResultado(req, res) {
  const tentativaId = Number(req.params.tentativaId);
  const usuarioId = req.user?.id;

  if (!Number.isSafeInteger(tentativaId) || tentativaId <= 0) {
    return res.status(400).json({
      erro: "ID da tentativa inválido."
    });
  }

  if (
    req.user?.role !== "usuario" ||
    usuarioId === undefined ||
    usuarioId === null
  ) {
    return res.status(403).json({
      erro: "Apenas o aluno responsável pode finalizar a tentativa."
    });
  }

  let connection;
  let transacaoAtiva = false;

  try {
    connection = await pool.getConnection();

    await connection.beginTransaction();
    transacaoAtiva = true;

    const [tentativas] = await connection.execute(
      `SELECT id, usuario_id, quiz_id, status
       FROM attempts
       WHERE id = ? AND usuario_id = ?
       FOR UPDATE`,
      [tentativaId, usuarioId]
    );

    if (tentativas.length === 0) {
      await connection.rollback();
      transacaoAtiva = false;

      return res.status(404).json({
        erro: "Tentativa não encontrada."
      });
    }

    const tentativa = tentativas[0];

    if (tentativa.status === "completed") {
      await connection.rollback();
      transacaoAtiva = false;

      return res.status(409).json({
        erro: "Esta tentativa já foi finalizada."
      });
    }

    const [questoes] = await connection.execute(
      `SELECT id, points, correct_answer
       FROM questions
       WHERE quiz_id = ?`,
      [tentativa.quiz_id]
    );

    if (questoes.length === 0) {
      await connection.rollback();
      transacaoAtiva = false;

      return res.status(400).json({
        erro: "Este quiz não possui questões."
      });
    }

    const [respostas] = await connection.execute(
      `SELECT question_id, selected_answer
       FROM answers
       WHERE attempt_id = ?`,
      [tentativaId]
    );

    const respostasPorQuestao = new Map();

    for (const resposta of respostas) {
      const questaoId = String(resposta.question_id);

      if (respostasPorQuestao.has(questaoId)) {
        await connection.rollback();
        transacaoAtiva = false;

        return res.status(409).json({
          erro: "Existe mais de uma resposta para a mesma questão."
        });
      }

      respostasPorQuestao.set(
        questaoId,
        resposta.selected_answer
      );
    }

    let pontuacao = 0;
    let pontuacaoMaxima = 0;
    let acertos = 0;
    let erros = 0;

    for (const questao of questoes) {
      const pontos = Number(questao.points);

      if (!Number.isFinite(pontos) || pontos < 0) {
        throw new Error("Pontuação inválida cadastrada em uma questão.");
      }

      if (
        questao.correct_answer === null ||
        questao.correct_answer === undefined
      ) {
        await connection.rollback();
        transacaoAtiva = false;

        return res.status(400).json({
          erro: "Existe uma questão sem resposta correta cadastrada."
        });
      }

      pontuacaoMaxima += pontos;

      const chaveQuestao = String(questao.id);
      const respostaAluno = respostasPorQuestao.get(chaveQuestao);

      const respondeu = respostaAluno !== null &&
        respostaAluno !== undefined;

      const acertou =
        respondeu &&
        String(respostaAluno).trim() ===
          String(questao.correct_answer).trim();

      if (acertou) {
        pontuacao += pontos;
        acertos++;
      } else {
        erros++;
      }
    }

    pontuacao = Number(pontuacao.toFixed(2));
    pontuacaoMaxima = Number(pontuacaoMaxima.toFixed(2));

    const aproveitamento =
      pontuacaoMaxima > 0
        ? Number(
            ((pontuacao / pontuacaoMaxima) * 100).toFixed(2)
          )
        : 0;


    const [atualizacao] = await connection.execute(
      `UPDATE attempts
       SET score = ?,
           max_score = ?,
           percentage = ?,
           correct_answers = ?,
           incorrect_answers = ?,
           status = 'completed',
           completed_at = NOW()
       WHERE id = ?
         AND usuario_id = ?
         AND status <> 'completed'`,
      [
        pontuacao,
        pontuacaoMaxima,
        aproveitamento,
        acertos,
        erros,
        tentativaId,
        usuarioId
      ]
    );

    if (atualizacao.affectedRows !== 1) {
      await connection.rollback();
      transacaoAtiva = false;

      return res.status(409).json({
        erro: "A tentativa já foi finalizada ou não pode ser atualizada."
      });
    }

    await connection.commit();
    transacaoAtiva = false;

    return res.status(200).json({
      mensagem: "Resultado calculado com sucesso.",
      resultado: {
        tentativaId,
        quizId: tentativa.quiz_id,
        pontuacao,
        pontuacaoMaxima,
        aproveitamento,
        acertos,
        erros
      }
    });
  } catch (error) {
    if (connection && transacaoAtiva) {
      try {
        await connection.rollback();
      } catch (erroRollback) {
        console.error("Erro ao desfazer transação:", erroRollback);
      }
    }

    console.error("Erro ao calcular resultado:", error);

    return res.status(500).json({
      erro: "Erro interno ao calcular o resultado."
    });
  } finally {
    connection?.release();
  }
}

export async function consultarRanking(req, res) {
  try {
    const [ranking] = await pool.execute(
      `WITH tentativas_ordenadas AS (
         SELECT
           a.id,
           a.usuario_id,
           a.quiz_id,
           a.score,
           a.percentage,
           a.completed_at,
           ROW_NUMBER() OVER (
             PARTITION BY a.usuario_id, a.quiz_id
             ORDER BY
               a.score DESC,
               a.percentage DESC,
               a.completed_at ASC,
               a.id ASC
           ) AS numero_tentativa
         FROM attempts a
         WHERE a.status = 'completed'
       ),
       melhores_resultados AS (
         SELECT
           usuario_id,
           quiz_id,
           score,
           percentage
         FROM tentativas_ordenadas
         WHERE numero_tentativa = 1
       ),
       pontuacao_alunos AS (
         SELECT
           u.id AS usuario_id,
           u.name,
           SUM(m.score) AS total_points,
           COUNT(m.quiz_id) AS completed_quizzes,
           ROUND(AVG(m.percentage), 2) AS average_percentage
         FROM users u
         INNER JOIN melhores_resultados m
           ON m.usuario_id = u.id
         WHERE u.role = 'usuario'
         GROUP BY u.id, u.name
       )
       SELECT
         RANK() OVER (
           ORDER BY total_points DESC
         ) AS position,
         usuario_id,
         name,
         total_points,
         completed_quizzes,
         average_percentage
       FROM pontuacao_alunos
       ORDER BY position ASC, usuario_id ASC`
    );

    return res.status(200).json({
      totalAlunos: ranking.length,
      ranking
    });
  } catch (error) {
    console.error("Erro ao consultar ranking:", error);

    return res.status(500).json({
      erro: "Erro interno ao consultar o ranking."
    });
  }
}

export async function consultarDesempenho(req, res) {
  if (req.user?.role !== "professor") {
    return res.status(403).json({
      erro: "Acesso exclusivo para professores."
    });
  }

  const usuarioId = Number(req.params.usuarioid);

  if (
    !Number.isSafeInteger(usuarioId) ||
    usuarioId <= 0
  ) {
    return res.status(400).json({
      erro: "ID do aluno inválido."
    });
  }

  try {
    const [usuarios] = await pool.execute(
      `SELECT id, name
       FROM users
       WHERE id = ? AND role = 'usuario'`,
      [usuarioId]
    );

    if (usuarios.length === 0) {
      return res.status(404).json({
        erro: "Aluno não encontrado."
      });
    }

    const [historico] = await pool.execute(
      `SELECT
         qz.id AS quiz_id,
         qz.title AS quiz_title,
         a.id AS attempt_id,
         a.score,
         a.max_score,
         a.percentage,
         a.correct_answers,
         a.incorrect_answers,
         a.completed_at
       FROM attempts a
       INNER JOIN quizzes qz
         ON qz.id = a.quiz_id
       WHERE a.usuario_id = ?
         AND a.status = 'completed'
       ORDER BY a.completed_at DESC, a.id DESC`,
      [usuarioId]
    );

    const pontuacaoTotal = Number(
      historico.reduce(
        (total, item) => total + Number(item.score),
        0
      ).toFixed(2)
    );

    const somaPontuacoesMaximas = historico.reduce(
      (total, item) => total + Number(item.max_score),
      0
    );

    const somaPontuacoesObtidas = historico.reduce(
      (total, item) => total + Number(item.score),
      0
    );

    // Média ponderada pela pontuação máxima de cada tentativa.
    const aproveitamentoGlobal =
      somaPontuacoesMaximas > 0
        ? Number(
            (
              (somaPontuacoesObtidas / somaPontuacoesMaximas) *
              100
            ).toFixed(2)
          )
        : 0;

    // Média simples das porcentagens por tentativa.
    const aproveitamentoMedio =
      historico.length > 0
        ? Number(
            (
              historico.reduce(
                (total, item) => total + Number(item.percentage),
                0
              ) / historico.length
            ).toFixed(2)
          )
        : 0;

    const totalAcertos = historico.reduce(
      (total, item) => total + Number(item.correct_answers),
      0
    );

    const totalErros = historico.reduce(
      (total, item) => total + Number(item.incorrect_answers),
      0
    );

    return res.status(200).json({
      aluno: usuarios[0],
      resumo: {
        quizzesConcluidos: historico.length,
        pontuacaoTotal,
        aproveitamentoGlobal,
        aproveitamentoMedio,
        totalAcertos,
        totalErros
      },
      historico
    });
  } catch (error) {
    console.error("Erro ao consultar desempenho:", error);

    return res.status(500).json({
      erro: "Erro interno ao consultar o desempenho."
    });
  }
}