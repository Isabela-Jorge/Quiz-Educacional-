const tokensRevogados = new Map();

export function revogarToken(token, expiracao) {
    tokensRevogados.set(token, expiracao);
}

export function tokenRevogado(token) {
    const expiracao = tokensRevogados.get(token);

    if (!expiracao) {
        return false;
    }

    if (Date.now() >= expiracao) {
        tokensRevogados.delete(token);
        return false;
    }

    return true;
}