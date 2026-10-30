import request from "supertest";
import app from "../src/App.js";

describe("Testes de usuários", () => {

    test("Deve rejeitar acesso à lista de usuários sem token", async () => {
        const resposta = await request(app)
            .get("/usuarios");

        expect(resposta.status).toBe(401);
        expect(resposta.body.mensagem).toBe("Token não informado");
    });

});