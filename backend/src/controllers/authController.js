import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { pool } from "../config/db.js";

export async function cadastrar(req, res) {
    try {
        const { nome, usuario, senha, email } = req.body;

        if (!nome || !usuario || !senha || !email) {
            return res.status(400).json({ mensagem: "Nome, usuário, senha e email são obrigatórios."

            });
        }

        if (
            typeof nome !== "string" ||
            typeof usuario !== "string" ||
            typeof senha !== "string" ||
            typeof email !== "string" 
        ) {
            return res.status(400).json({
                mensagem: "Os dados informados são inválidos"
            });
        }

        if(nome.trim().length < 2 || nome.trim ().length > 100) {
            return res.status(400).json({
                mensagem: "O nome deve ter entre 2 e 100 caracteres"
            });

        }

        if(usuario.trim().length < 3) {
            return res.status(400).json({
                mensagem: "O usuário deve ter pelo menos 3 caracteres"
            });
        }

        if (senha.length < 8 || senha.length > 72) {
            return res.status(400).json({ 
                mensagem: "A senha deve ter entre 8 a 72 caracteres"

            });
        }

        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.trim())) {
            return res.status(400).json({
                mensagem: "Email inválido"
            });
        }

        const nomeLimpo = nome.trim();
        const usuarioLimpo = usuario.trim();
        const emailLimpo = email.trim(). toLowerCase();

        const [existentes] = await pool.query(
            "SELECT id FROM usuarios WHERE usuario = ? OR email = ? LIMIT 1",
            [usuarioLimpo, emailLimpo]
        );

        if (existentes.length > 0) {
            return res.status(409).json({ 
                mensagem: "Usuário ou email já cadastrado"
            });
        }

        const senhaHash = await bcrypt.hash(senha, 10);
        
        const [resultado] = await pool.query(
            `INSERT INTO usuarios 
            (nome, usuario, senha, email, perfil) 
            VALUES (?, ?, ?, ?, ?)`,
            [nomeLimpo, usuarioLimpo, senhaHash, emailLimpo, "Aluno"]
        );

        return res.status(201).json({
            mensagem: "Usuário cadastrado com sucesso!",
            usuario: { 
                id: resultado.insertId,
                 nome: nomeLimpo,
                usuario: usuarioLimpo,
                email: emailLimpo,
                perfil: "Aluno"
            
            }
        });

    } catch (erro) {
        console.error(erro);
        return res.status(500).json({ mensagem: "Erro ao cadastrar usuário."});
    }
}

export async function login(req, res) {
    try {
        const { nome, suario, senha, email } = req.body;

        if (!usuario || !senha) {
            return res.status(400).json({ mensagem: "Usuário e senha são obrigatórios" });
        }

        const [usuarios] = await pool.query(
            "SELECT id, usuario, senha FROM usuarios WHERE usuario = ? LIMIT 1",
            [usuario]
        );
        
        if (!nome || !email){
            return res.status(400).json({ mensagem : "Nome e Email são obrigatórios" });
        }

        if (usuarios.length === 0) {
            return res.status(401).json({ mensagem: "Usuário ou senha inválidos."});
        }

        const encontrado = usuarios[0];
        const senhaValida = await bcrypt.compare(senha, encontrado.senha);

        if (!senhaValida) {
            return res.status(401).json({ mensagem: "Usuário ou senha inválidos"});
        }

        const token = jwt.sign(
            { id: encontrado.id, usuario: encontrado.usuario},
            process.env.JWT_SECRET,
            { expiresIn: "2h" }
        );

        return res.json({
            mensagem: "Login realizado com sucesso",
            usuario: { id: encontrado.id, usuario: encontrado.usuario },
            token
        });

    } catch (erro) {
        console.error(erro);
        return res.status(500).json({ mensagem: "Erro no login" });
    }
}

export async function me(req, res) {
    return res.json({ usuario: req.usuario });
}

export async function listarUsuarios(req, res) {
    try {
        const [usuarios] = await pool.query (
            "SELECT id, usuario, criado_em FROM usuarios ORDER BY id"
        );
        return res.json(usuarios);
    } catch (erro) {
        console.error(erro);
        return res.status(500).json({ mensagem: "Erro ao listar usuários" });
    }
}
