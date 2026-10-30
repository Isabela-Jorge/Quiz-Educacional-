import request from "supertest";
import app from "../src/App.js";

describe("Testes de ranking", () => {

    test("Deve retornar erro 404 ao acessar uma rota de ranking inexistente", async () => {
        const resposta = await request(app)
            .get("/ranking");

        expect(resposta.status).toBe(404);
    });

});