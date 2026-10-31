import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { pool } from "../config/db.js";
import { revogarToken } from "../utilities/tokensRevogados.js";

export async function cadastrar(req, res) {
    try {
        const { nome, usuario, senha, email } = req.body ?? {};

        if (
            typeof nome !== "string" ||
            typeof usuario !== "string" ||
            typeof senha !== "string" ||
            typeof email !== "string"
        ) {
            return res.status(400).json({
                mensagem: "Nome, usuário, senha e email são obrigatórios."
            });
        }

        const nomeLimpo = nome.trim();
        const usuarioLimpo = usuario.trim();
        const emailLimpo = email.trim().toLowerCase();

        if (nomeLimpo.length < 2 || nomeLimpo.length > 100) {
            return res.status(400).json({
                mensagem: "O nome deve ter entre 2 e 100 caracteres."
            });
        }

        if (usuarioLimpo.length < 3 || usuarioLimpo.length > 50) {
            return res.status(400).json({
                mensagem: "O usuário deve ter entre 3 e 50 caracteres."
            });
        }

        if (senha.length < 8 || senha.length > 72) {
            return res.status(400).json({
                mensagem: "A senha deve ter entre 8 e 72 caracteres."
            });
        }

        if (
            emailLimpo.length > 100 ||
            !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailLimpo)
        ) {
            return res.status(400).json({
                mensagem: "Email inválido."
            });
        }

        const [existentes] = await pool.execute(
            "SELECT id FROM usuario WHERE usuario = ? OR email = ? LIMIT 1",
            [usuarioLimpo, emailLimpo]
        );

        if (existentes.length > 0) {
            return res.status(409).json({
                mensagem: "Usuário ou email já cadastrado."
            });
        }

        const senhaHash = await bcrypt.hash(senha, 10);
        const [resultado] = await pool.execute(
            `INSERT INTO usuario (nome, usuario, email, senha, tipo)
             VALUES (?, ?, ?, ?, 'ALUNO')`,
            [nomeLimpo, usuarioLimpo, emailLimpo, senhaHash]
        );

        return res.status(201).json({
            mensagem: "Usuário cadastrado com sucesso.",
            usuario: {
                id: resultado.insertId,
                nome: nomeLimpo,
                usuario: usuarioLimpo,
                email: emailLimpo,
                tipo: "ALUNO"
            }
        });
    } catch (erro) {
        if (erro.code === "ER_DUP_ENTRY") {
            return res.status(409).json({
                mensagem: "Usuário ou email já cadastrado."
            });
        }

        console.error("Erro ao cadastrar usuário:", erro);
        return res.status(500).json({
            mensagem: "Erro ao cadastrar usuário."
        });
    }
}

export async function login(req, res) {
    try {
        const { usuario, senha } = req.body ?? {};

        if (
            typeof usuario !== "string" ||
            typeof senha !== "string" ||
            !usuario.trim() ||
            !senha
        ) {
            return res.status(400).json({
                mensagem: "Usuário e senha são obrigatórios."
            });
        }

        const [usuarios] = await pool.execute(
            `SELECT id, nome, usuario, senha, tipo
             FROM usuario
             WHERE usuario = ?
             LIMIT 1`,
            [usuario.trim()]
        );

        if (usuarios.length === 0) {
            return res.status(401).json({
                mensagem: "Usuário ou senha inválidos."
            });
        }

        const encontrado = usuarios[0];
        const senhaValida = await bcrypt.compare(senha, encontrado.senha);

        if (!senhaValida) {
            return res.status(401).json({
                mensagem: "Usuário ou senha inválidos."
            });
        }

        const token = jwt.sign(
            {
                id: encontrado.id,
                usuario: encontrado.usuario,
                tipo: encontrado.tipo
            },
            process.env.JWT_SECRET,
            { expiresIn: "2h" }
        );

        return res.json({
            mensagem: "Login realizado com sucesso.",
            usuario: {
                id: encontrado.id,
                nome: encontrado.nome,
                usuario: encontrado.usuario,
                tipo: encontrado.tipo
            },
            token
        });
    } catch (erro) {
        console.error("Erro no login:", erro);
        return res.status(500).json({
            mensagem: "Erro no login."
        });
    }
}

export function me(req, res) {
    return res.json({ usuario: req.usuario });
}

export async function listarUsuarios(req, res) {
    try {
        const [usuarios] = await pool.execute(
            `SELECT id, nome, usuario, email, tipo
             FROM usuario
             ORDER BY id`
        );
        return res.json(usuarios);
    } catch (erro) {
        console.error("Erro ao listar usuários:", erro);
        return res.status(500).json({
            mensagem: "Erro ao listar usuários."
        });
    }
}

export function logout(req, res) {
    const token = req.headers.authorization.split(" ")[1];
    revogarToken(token, req.usuario.exp * 1000);

    return res.json({
        mensagem: "Logout realizado com sucesso."
    });
}
