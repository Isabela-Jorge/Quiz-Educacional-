
import { describe, test, expect } from "vitest";
import { revogarToken, tokenRevogado } from "../ultilis/tokensRevogados.js";

describe("Testes de Revogação de Token", function() {

    test("Deve identificar um token revogado", function() {
        const token = "token_teste_123";
        const expiracao = Date.now() + 60000;

        revogarToken(token, expiracao);

        expect(tokenRevogado(token)).toBe(true);
    });

    test("Deve identificar um token que não foi revogado", function() {
        const token = "token_nao_revogado";

        expect(tokenRevogado(token)).toBe(false);
    });

    test("Deve identificar um token expirado", function() {
        const token = "token_expirado";
        const expiracao = Date.now() - 1000;

        revogarToken(token, expiracao);

        expect(tokenRevogado(token)).toBe(false);
    });

    test("Deve remover um token após sua expiração", function() {
        const token = "token_removido";
        const expiracao = Date.now() - 1000;

        revogarToken(token, expiracao);

        tokenRevogado(token);

        expect(tokenRevogado(token)).toBe(false);
    });

});
