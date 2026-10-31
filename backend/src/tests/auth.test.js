
import { describe, it, expect } from "vitest";
import request from "supertest";

const api = request("http://localhost:3000");

const usuarioTeste = {
    nome: "Usuario Teste",
    usuario: `teste${Date.now()}`,
    email: `teste${Date.now()}@email.com`,
    senha: "Senha123"
};

describe("Testes de Cadastro", function() {

    it("Deve cadastrar um usuário com dados válidos", function() {
        return api.post("/usuarios")
            .send(usuarioTeste)
            .then(function(resposta) {
                expect(resposta.status).toBe(201);
            });
    });

    it("Não deve cadastrar sem preencher os campos obrigatórios", function() {
        return api.post("/usuarios")
            .send({})
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

    it("Não deve aceitar um nome muito curto", function() {
        return api.post("/usuarios")
            .send({
                ...usuarioTeste,
                nome: "A",
                usuario: `outro${Date.now()}`,
                email: `outro${Date.now()}@email.com`
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

    it("Não deve aceitar nome de usuário com menos de 3 caracteres", function() {
        return api.post("/usuarios")
            .send({
                ...usuarioTeste,
                usuario: "ab",
                email: `outro${Date.now()}@email.com`
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

    it("Não deve aceitar e-mail inválido", function() {
        return api.post("/usuarios")
            .send({
                ...usuarioTeste,
                usuario: `outro${Date.now()}`,
                email: "emailinvalido"
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

    it("Não deve aceitar senha com menos de 8 caracteres", function() {
        return api.post("/usuarios")
            .send({
                ...usuarioTeste,
                usuario: `outro${Date.now()}`,
                email: `outro${Date.now()}@email.com`,
                senha: "1234567"
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

});

describe("Testes de Login", function() {

    it("Deve realizar login com dados corretos", function() {
        return api.post("/login")
            .send({
                usuario: usuarioTeste.usuario,
                senha: usuarioTeste.senha
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(200);
            });
    });

    it("Não deve realizar login sem preencher os campos", function() {
        return api.post("/login")
            .send({})
            .then(function(resposta) {
                expect(resposta.status).toBe(400);
            });
    });

    it("Não deve realizar login com usuário inexistente", function() {
        return api.post("/login")
            .send({
                usuario: "usuario_inexistente_123",
                senha: "Senha123"
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(401);
            });
    });

    it("Não deve realizar login com senha incorreta", function() {
        return api.post("/login")
            .send({
                usuario: usuarioTeste.usuario,
                senha: "SenhaErrada123"
            })
            .then(function(resposta) {
                expect(resposta.status).toBe(401);
            });
    });

});
