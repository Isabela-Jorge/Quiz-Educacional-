import jwt from "jsonwebtoken";
import { tokenRevogado } from "../utilities/tokensRevogados.js";

export function autenticar(req, res, next) {
    const authHeader = req.headers.authorization;

    const partes = authHeader?.match(/^Bearer\s+(\S+)$/);

    if (!partes) {
        return res.status(401).json({
            mensagem: "Token não informado"
        });
    }

    const token = partes[1];
    let payload;

    try {
        payload = jwt.verify(token, process.env.JWT_SECRET);
    } catch {
        return res.status(401).json({
            mensagem: "Token inválido ou expirado"
        });
    }

    if (tokenRevogado(token)) {
        return res.status(401).json({
            mensagem: "Token revogado. Faça login novamente."
        });
    }

    req.usuario = payload;
    return next();
}