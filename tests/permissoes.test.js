
import { describe, it, expect } from "vitest";
import request from "supertest";
import app from "../../app.js";

describe("Testes de autenticação", () => {

    it("Deve permitir acesso à rota inicial da API", async () => {
        const resposta = await request(app).get("/");

        expect(resposta.status).toBe(200);
        expect(resposta.body.mensagem).toBe(
            "API de autenticação funcionando"
        );
    });

    it("Deve bloquear acesso ao perfil sem token", async () => {
        const resposta = await request(app)
            .get("/auth/me");

        expect(resposta.status).toBe(401);
    });

    it("Deve bloquear listagem de usuários sem token", async () => {
        const resposta = await request(app)
            .get("/usuarios");

        expect(resposta.status).toBe(401);
    });

    it("Deve bloquear acesso ao perfil com token inválido", async () => {
        const resposta = await request(app)
            .get("/auth/me")
            .set("Authorization", "Bearer token_invalido");

        expect(resposta.status).toBe(401);
    });

});
