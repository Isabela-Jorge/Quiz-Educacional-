import jwt from "jsonwebtoken";
import { tokenRevogado } from "../utils/tokensRevogados.js";

export function autenticar(req, res, next) {
    const authHeader = req.headers.authorization;

    if (!authHeader?.startsWith("Bearer ")) {
        return res.status(401).json({
            mensagem: "Token não informado"
        });
    }

    const token = authHeader.split(" ")[1];

    try {
        const payload = jwt.verify(token, process.env.JWT_SECRET);

        if (tokenRevogado(token)) {
            return res.status(401).json({
                mensagem: "Token revogado. Faça login novamente."
            });
        }

        req.usuario = payload;
        next();
    } catch {
        return res.status(401).json({
            mensagem: "Token inválido ou expirado"
        });
    }
}