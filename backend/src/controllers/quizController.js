import { pool } from "../config/db.js";

function alunoPodeResponder(req, res) {
    if (req.usuario?.tipo !== "ALUNO") {
        res.status(403).json({
            mensagem: "Apenas alunos podem realizar quizzes."
        });
        return false;
    }

    return true;
}

function idValido(valor) {
    const id = Number(valor);
    return Number.isSafeInteger(id) && id > 0 ? id : null;
}

export async function listarMaterias(req, res) {
    try {
        const [linhas] = await pool.execute(
            `SELECT
                d.id,
                d.nome,
                d.descricao,
                d.modulo,
                q.id AS quiz_id,
                q.titulo AS quiz_titulo,
                COUNT(DISTINCT questao.id) AS total_questoes
             FROM disciplina d
             LEFT JOIN quiz q ON q.disciplina_id = d.id
             LEFT JOIN questao ON questao.quiz_id = q.id
             GROUP BY
                d.id,
                d.nome,
                d.descricao,
                d.modulo,
                q.id,
                q.titulo
             ORDER BY d.modulo, d.nome, q.titulo`
        );

        const materiasPorId = new Map();

        for (const linha of linhas) {
            if (!materiasPorId.has(linha.id)) {
                materiasPorId.set(linha.id, {
                    id: linha.id,
                    nome: linha.nome,
                    descricao: linha.descricao,
                    modulo: linha.modulo,
                    quizzes: []
                });
            }

            if (linha.quiz_id !== null) {
                materiasPorId.get(linha.id).quizzes.push({
                    id: linha.quiz_id,
                    titulo: linha.quiz_titulo,
                    totalQuestoes: Number(linha.total_questoes)
                });
            }
        }

        const materias = Array.from(materiasPorId.values());
        return res.json({ materias });
    } catch (erro) {
        console.error("Erro ao listar matérias:", erro);
        return res.status(500).json({
            mensagem: "Erro ao listar matérias."
        });
    }
}

async function iniciarTentativa(req, res) {
    if (!alunoPodeResponder(req, res)) {
        return;
    }

    const quizId = idValido(req.body?.quizId);
    const usuarioId = req.usuario.id;

    if (!quizId) {
        return res.status(400).json({
            mensagem: "Informe um ID de quiz válido."
        });
    }

    let connection;
    let transacaoAtiva = false;

    try {
        connection = await pool.getConnection();
        await connection.beginTransaction();
        transacaoAtiva = true;

        const [quizzes] = await connection.execute(
            "SELECT id, titulo FROM quiz WHERE id = ?",
            [quizId]
        );

        if (quizzes.length === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(404).json({
                mensagem: "Quiz não encontrado."
            });
        }

        const [linhas] = await connection.execute(
            `SELECT
                q.id AS questao_id,
                q.enunciado,
                q.dificuldade,
                q.pontos,
                q.tempo_limite_segundos,
                a.id AS alternativa_id,
                a.texto_alternativa
             FROM questao q
             LEFT JOIN alternativa a ON a.questao_id = q.id
             WHERE q.quiz_id = ?
             ORDER BY q.id, a.id`,
            [quizId]
        );

        if (linhas.length === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(400).json({
                mensagem: "Este quiz ainda não possui questões."
            });
        }

        const questoesPorId = new Map();

        for (const linha of linhas) {
            if (!questoesPorId.has(linha.questao_id)) {
                questoesPorId.set(linha.questao_id, {
                    id: linha.questao_id,
                    enunciado: linha.enunciado,
                    dificuldade: linha.dificuldade,
                    pontos: linha.pontos,
                    tempoLimiteSegundos: linha.tempo_limite_segundos,
                    alternativas: []
                });
            }

            if (linha.alternativa_id !== null) {
                questoesPorId.get(linha.questao_id).alternativas.push({
                    id: linha.alternativa_id,
                    texto: linha.texto_alternativa
                });
            }
        }

        const questoes = Array.from(questoesPorId.values());

        if (questoes.some((questao) => questao.alternativas.length === 0)) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(400).json({
                mensagem: "Existe uma questão sem alternativas cadastradas."
            });
        }

        const [tentativa] = await connection.execute(
            `INSERT INTO tentativa (usuario_id, quiz_id, status)
             VALUES (?, ?, 'EM_ANDAMENTO')`,
            [usuarioId, quizId]
        );

        await connection.commit();
        transacaoAtiva = false;

        return res.status(201).json({
            tentativaId: tentativa.insertId,
            quiz: quizzes[0],
            questoes
        });
    } catch (erro) {
        if (connection && transacaoAtiva) {
            try {
                await connection.rollback();
            } catch (erroRollback) {
                console.error("Erro ao desfazer transação:", erroRollback);
            }
        }

        console.error("Erro ao iniciar quiz:", erro);
        return res.status(500).json({
            mensagem: "Erro ao iniciar quiz."
        });
    } finally {
        connection?.release();
    }
}

export function iniciarQuiz(req, res) {
    return iniciarTentativa(req, res);
}

export function refazer(req, res) {
    return iniciarTentativa(req, res);
}

export async function responder(req, res) {
    if (!alunoPodeResponder(req, res)) {
        return;
    }

    const tentativaId = idValido(req.params.tentativaId);
    const questaoId = idValido(req.body?.questaoId);
    const alternativaId = idValido(req.body?.alternativaId);

    if (!tentativaId || !questaoId || !alternativaId) {
        return res.status(400).json({
            mensagem: "Tentativa, questão e alternativa são obrigatórias."
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
            "SELECT id FROM questao WHERE id = ? AND quiz_id = ?",
            [questaoId, tentativa.quiz_id]
        );

        if (questoes.length === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(404).json({
                mensagem: "Questão não encontrada neste quiz."
            });
        }

        const [alternativas] = await connection.execute(
            "SELECT id FROM alternativa WHERE id = ? AND questao_id = ?",
            [alternativaId, questaoId]
        );

        if (alternativas.length === 0) {
            await connection.rollback();
            transacaoAtiva = false;
            return res.status(400).json({
                mensagem: "Alternativa não pertence à questão informada."
            });
        }

        await connection.execute(
            `INSERT INTO resposta_aluno
                (quiz_id, tentativa_id, questao_id, alternativa_escolhida_id)
             VALUES (?, ?, ?, ?)
             ON DUPLICATE KEY UPDATE
                alternativa_escolhida_id = ?`,
            [
                tentativa.quiz_id,
                tentativaId,
                questaoId,
                alternativaId,
                alternativaId
            ]
        );

        await connection.commit();
        transacaoAtiva = false;

        return res.json({
            mensagem: "Resposta registrada com sucesso."
        });
    } catch (erro) {
        if (connection && transacaoAtiva) {
            try {
                await connection.rollback();
            } catch (erroRollback) {
                console.error("Erro ao desfazer transação:", erroRollback);
            }
        }

        console.error("Erro ao registrar resposta:", erro);
        return res.status(500).json({
            mensagem: "Erro ao registrar resposta."
        });
    } finally {
        connection?.release();
    }
}
