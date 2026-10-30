import request from "supertest";
import app from "../src/App.js";

describe("Testes da API", () => {
    test("Deve retornar mensagem de funcionamento", async () => {
        const resposta = await request(app).get("/");

        expect(resposta.status).toBe(200);
        expect(resposta.body.mensagem).toBe(
            "API de autenticação funcionando"
        );
    });
});