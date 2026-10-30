import request from "supertest";
import app from "../src/App.js";

describe("Testes do quiz", () => {

    test("Deve retornar erro 404 ao acessar uma rota de quiz inexistente", async () => {
        const resposta = await request(app)
            .get("/quiz");

        expect(resposta.status).toBe(404);
    });

});