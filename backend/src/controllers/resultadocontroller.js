import { pool } from "../config/db.js";

export async function resultado(req, res) {
    if (req.usuario?.tipo !== "ALUNO") {
        return res.status(403).json({
            mensagem: "Apenas alunos podem finalizar quizzes."
        });
    }

    const tentativaId = Number(req.params.tentativaId);

    if (!Number.isSafeInteger(tentativaId) || tentativaId <= 0) {
        return res.status(400).json({
            mensagem: "ID da tentativa inválido."
        });
    }

    let connection;
    let transacaoAtiva = false;

    try {
        connection = await pool.getConnection();
        await connection.beginTransaction();
        transacaoAtiva = true;

        const [tentativas] = await connection.execute(
            `SELECT id, quiz_id, status
             FROM tentativa
             WHERE id = ? AND usuario_id = ?
             FOR UPDATE`,
            [tentativaId, req.usuario.id]
        );

        if (tentativas.length === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(404).json({
                mensagem: "Tentativa não encontrada."
            });
        }

        const tentativa = tentativas[0];

        if (tentativa.status !== "EM_ANDAMENTO") {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(409).json({
                mensagem: "A tentativa não está em andamento."
            });
        }

        const [questoes] = await connection.execute(
            `SELECT COUNT(*) AS total, COALESCE(SUM(pontos), 0) AS pontuacao_maxima
             FROM questao
             WHERE quiz_id = ?`,
            [tentativa.quiz_id]
        );

        const totalQuestoes = Number(questoes[0].total);
        const pontuacaoMaxima = Number(questoes[0].pontuacao_maxima);

        if (totalQuestoes === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(400).json({
                mensagem: "Este quiz não possui questões."
            });
        }

        const [respostas] = await connection.execute(
            `SELECT
                COUNT(*) AS acertos,
                COALESCE(SUM(q.pontos), 0) AS pontuacao
             FROM resposta_aluno ra
             INNER JOIN questao q
                ON q.id = ra.questao_id AND q.quiz_id = ra.quiz_id
             INNER JOIN alternativa a
                ON a.id = ra.alternativa_escolhida_id
                AND a.questao_id = ra.questao_id
             WHERE ra.tentativa_id = ? AND a.is_correta = 1`,
            [tentativaId]
        );

        const acertos = Number(respostas[0].acertos);
        const erros = totalQuestoes - acertos;
        const pontuacao = Number(respostas[0].pontuacao);
        const aproveitamento = pontuacaoMaxima > 0
            ? Number(((pontuacao / pontuacaoMaxima) * 100).toFixed(2))
            : 0;

        await connection.execute(
            `UPDATE tentativa
             SET pontuacao_total = ?,
                 data_hora_fim = NOW(),
                 status = 'FINALIZADA'
             WHERE id = ? AND usuario_id = ? AND status = 'EM_ANDAMENTO'`,
            [pontuacao, tentativaId, req.usuario.id]
        );

        await connection.commit();
        transacaoAtiva = false;

        return res.json({
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
    } catch (erro) {
        if (connection && transacaoAtiva) {
            try {
                await connection.rollback();
            } catch (erroRollback) {
                console.error("Erro ao desfazer transação:", erroRollback);
            }
        }

        console.error("Erro ao calcular resultado:", erro);
        return res.status(500).json({
            mensagem: "Erro ao calcular o resultado."
        });
    } finally {
        connection?.release();
    }
}

export async function consultarRanking(req, res) {
    try {
        const [ranking] = await pool.execute(
            `WITH pontuacao_maxima AS (
                SELECT quiz_id, SUM(pontos) AS max_score
                FROM questao
                GROUP BY quiz_id
             ),
             tentativas_ordenadas AS (
                SELECT
                    t.id,
                    t.usuario_id,
                    t.quiz_id,
                    t.pontuacao_total,
                    t.data_hora_fim,
                    pm.max_score,
                    ROW_NUMBER() OVER (
                        PARTITION BY t.usuario_id, t.quiz_id
                        ORDER BY
                            t.pontuacao_total DESC,
                            CASE
                                WHEN pm.max_score > 0
                                THEN t.pontuacao_total / pm.max_score
                                ELSE 0
                            END DESC,
                            t.data_hora_fim ASC,
                            t.id ASC
                    ) AS numero_tentativa
                FROM tentativa t
                INNER JOIN pontuacao_maxima pm ON pm.quiz_id = t.quiz_id
                WHERE t.status = 'FINALIZADA'
             ),
             melhores_resultados AS (
                SELECT usuario_id, quiz_id, pontuacao_total, max_score
                FROM tentativas_ordenadas
                WHERE numero_tentativa = 1
             ),
             pontuacao_alunos AS (
                SELECT
                    u.id AS usuario_id,
                    u.nome,
                    SUM(m.pontuacao_total) AS total_points,
                    COUNT(m.quiz_id) AS completed_quizzes,
                    ROUND(
                        AVG(
                            CASE
                                WHEN m.max_score > 0
                                THEN m.pontuacao_total / m.max_score * 100
                                ELSE 0
                            END
                        ),
                        2
                    ) AS average_percentage
                FROM usuario u
                INNER JOIN melhores_resultados m
                    ON m.usuario_id = u.id
                WHERE u.tipo = 'ALUNO'
                GROUP BY u.id, u.nome
             )
             SELECT
                RANK() OVER (ORDER BY total_points DESC) AS position,
                usuario_id,
                nome,
                total_points,
                completed_quizzes,
                average_percentage
             FROM pontuacao_alunos
             ORDER BY position, usuario_id`
        );

        return res.json({
            totalAlunos: ranking.length,
            ranking
        });
    } catch (erro) {
        console.error("Erro ao consultar ranking:", erro);
        return res.status(500).json({
            mensagem: "Erro ao consultar o ranking."
        });
    }
}

export async function consultarDesempenho(req, res) {
    if (req.usuario?.tipo !== "PROFESSOR") {
        return res.status(403).json({
            mensagem: "Acesso exclusivo para professores."
        });
    }

    const usuarioId = Number(req.params.usuarioid);

    if (!Number.isSafeInteger(usuarioId) || usuarioId <= 0) {
        return res.status(400).json({
            mensagem: "ID do aluno inválido."
        });
    }

    try {
        const [usuarios] = await pool.execute(
            `SELECT id, nome
             FROM usuario
             WHERE id = ? AND tipo = 'ALUNO'`,
            [usuarioId]
        );

        if (usuarios.length === 0) {
            return res.status(404).json({
                mensagem: "Aluno não encontrado."
            });
        }

        const [historico] = await pool.execute(
            `SELECT
                q.id AS quiz_id,
                q.titulo AS quiz_title,
                t.id AS attempt_id,
                t.pontuacao_total AS score,
                t.data_hora_inicio,
                t.data_hora_fim AS completed_at,
                (
                    SELECT COALESCE(SUM(qt.pontos), 0)
                    FROM questao qt
                    WHERE qt.quiz_id = t.quiz_id
                ) AS max_score,
                (
                    SELECT COUNT(*)
                    FROM resposta_aluno ra
                    INNER JOIN alternativa a
                        ON a.id = ra.alternativa_escolhida_id
                        AND a.questao_id = ra.questao_id
                    WHERE ra.tentativa_id = t.id
                        AND a.is_correta = 1
                ) AS correct_answers,
                (
                    SELECT COUNT(*)
                    FROM questao qt
                    WHERE qt.quiz_id = t.quiz_id
                ) AS total_questions
             FROM tentativa t
             INNER JOIN quiz q ON q.id = t.quiz_id
             WHERE t.usuario_id = ? AND t.status = 'FINALIZADA'
             ORDER BY t.data_hora_fim DESC, t.id DESC`,
            [usuarioId]
        );

        const resultados = historico.map((tentativa) => {
            const pontuacaoMaxima = Number(tentativa.max_score);
            const pontuacao = Number(tentativa.score);
            const acertos = Number(tentativa.correct_answers);

            return {
                ...tentativa,
                score: pontuacao,
                max_score: pontuacaoMaxima,
                percentage: pontuacaoMaxima > 0
                    ? Number(((pontuacao / pontuacaoMaxima) * 100).toFixed(2))
                    : 0,
                correct_answers: acertos,
                incorrect_answers: Number(tentativa.total_questions) - acertos
            };
        });

        const pontuacaoTotal = Number(
            resultados.reduce((total, item) => total + item.score, 0).toFixed(2)
        );
        const somaPontuacoesMaximas = resultados.reduce(
            (total, item) => total + item.max_score,
            0
        );
        const aproveitamentoGlobal = somaPontuacoesMaximas > 0
            ? Number(
                ((pontuacaoTotal / somaPontuacoesMaximas) * 100).toFixed(2)
            )
            : 0;
        const aproveitamentoMedio = resultados.length > 0
            ? Number(
                (
                    resultados.reduce(
                        (total, item) => total + item.percentage,
                        0
                    ) / resultados.length
                ).toFixed(2)
            )
            : 0;

        return res.json({
            aluno: usuarios[0],
            resumo: {
                quizzesConcluidos: resultados.length,
                pontuacaoTotal,
                aproveitamentoGlobal,
                aproveitamentoMedio,
                totalAcertos: resultados.reduce(
                    (total, item) => total + item.correct_answers,
                    0
                ),
                totalErros: resultados.reduce(
                    (total, item) => total + item.incorrect_answers,
                    0
                )
            },
            historico: resultados
        });
    } catch (erro) {
        console.error("Erro ao consultar desempenho:", erro);
        return res.status(500).json({
            mensagem: "Erro ao consultar o desempenho."
        });
    }
}
