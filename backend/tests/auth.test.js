import { jest } from "@jest/globals";

const queryMock = jest.fn();

jest.unstable_mockModule("../src/config/db.js", () => ({
    pool: {
        query: queryMock
    }
}));

const { default: app } = await import("../src/App.js");
const request = (await import("supertest")).default;

describe("Testes de autenticação", () => {

    beforeEach(() => {
        queryMock.mockReset();
    });

    test("Deve rejeitar cadastro sem usuário e senha", async () => {
        const resposta = await request(app)
            .post("/usuarios")
            .send({});

        expect(resposta.status).toBe(400);
        expect(queryMock).not.toHaveBeenCalled();
    });

    test("Deve rejeitar cadastro sem senha", async () => {
        const resposta = await request(app)
            .post("/usuarios")
            .send({ usuario: "aluno" });

        expect(resposta.status).toBe(400);
        expect(queryMock).not.toHaveBeenCalled();
    });

    test("Deve rejeitar senha com menos de 4 caracteres", async () => {
        const resposta = await request(app)
            .post("/usuarios")
            .send({
                usuario: "aluno",
                senha: "123"
            });

        expect(resposta.status).toBe(400);
        expect(queryMock).not.toHaveBeenCalled();
    });

});