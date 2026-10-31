
import { describe, test, expect } from "vitest";
import request from "supertest";
import jwt from "jsonwebtoken";

const api = request("http://localhost:3000");

describe("Testes de Autenticação", function() {

    test("Deve bloquear acesso sem token", function() {
        return api.get("/auth/me")
            .then(function(resposta) {
                expect(resposta.status).toBe(401);
                expect(resposta.body.mensagem).toBe("Token não informado");
            });
    });

    test("Deve bloquear acesso com token inválido", function() {
        return api.get("/auth/me")
            .set("Authorization", "Bearer token_invalido")
            .then(function(resposta) {
                expect(resposta.status).toBe(401);
                expect(resposta.body.mensagem).toBe("Token inválido ou expirado");
            });
    });

    test("Deve bloquear acesso com token expirado", function() {
        const token = jwt.sign(
            { id: 1, usuario: "teste" },
            process.env.JWT_SECRET,
            { expiresIn: "0s" }
        );

        return api.get("/auth/me")
            .set("Authorization", `Bearer ${token}`)
            .then(function(resposta) {
                expect(resposta.status).toBe(401);
            });
    });

    test("Deve permitir acesso com token válido", function() {
        const token = jwt.sign(
            { id: 1, usuario: "teste" },
            process.env.JWT_SECRET,
            { expiresIn: "1h" }
        );

        return api.get("/auth/me")
            .set("Authorization", `Bearer ${token}`)
            .then(function(resposta) {
                expect(resposta.status).toBe(200);
            });
    });

});
