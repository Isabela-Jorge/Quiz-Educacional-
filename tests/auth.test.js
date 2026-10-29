
import { describe, it, expect } from "vitest";
import request from "supertest";
import app from "../../app.js";

describe("Testes de cadastro", () => {

    it("Deve rejeitar cadastro sem usuário e senha", async () => {
        const resposta = await request(app)
            .post("/usuarios")
            .send({});

        expect(resposta.status).toBe(400);
        expect(resposta.body).toHaveProperty("mensagem");
    });

    it("Deve rejeitar senha com menos de 4 caracteres", async () => {
        const resposta = await request(app)
            .post("/usuarios")
            .send({
                usuario: "aluno_teste",
                senha: "123"
            });

        expect(resposta.status).toBe(400);
    });

});

describe("Testes de login", () => {

    it("Deve rejeitar login sem usuário e senha", async () => {
        const resposta = await request(app)
            .post("/login")
            .send({});

        expect(resposta.status).toBe(400);
    });

    it("Deve rejeitar login de usuário inexistente", async () => {
        const resposta = await request(app)
            .post("/login")
            .send({
                usuario: "usuario_que_nao_existe_teste",
                senha: "senha123"
            });

        expect(resposta.status).toBe(401);
    });

});
