CREATE DATABASE quiz_ds_db
USE quiz_ds_db;


CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE quiz (
    id INT AUTO_INCREMENT PRIMARY KEY,
    disciplina_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    tempo_limite_minutos INT DEFAULT 0,
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)
);

CREATE TABLE questao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT NOT NULL,
    enunciado TEXT NOT NULL,
    dificuldade VARCHAR(20) NOT NULL,
    pontos INT DEFAULT 1,
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);

CREATE TABLE alternativa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    questao_id INT NOT NULL,
    texto_alternativa TEXT NOT NULL,
    is_correta BOOLEAN NOT NULL,
    FOREIGN KEY (questao_id) REFERENCES questao(id)
);

CREATE TABLE tentativa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    quiz_id INT NOT NULL,
    data_hora_inicio DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_hora_fim DATETIME NULL,
    pontuacao_total DECIMAL(5,2) DEFAULT 0.00,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);

CREATE TABLE resposta_aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tentativa_id INT NOT NULL,
    questao_id INT NOT NULL,
    alternativa_escolhida_id INT NOT NULL,
    FOREIGN KEY (tentativa_id) REFERENCES tentativa(id),
    FOREIGN KEY (questao_id) REFERENCES questao(id),
    FOREIGN KEY (alternativa_escolhida_id) REFERENCES alternativa(id)
);