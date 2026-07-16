
CREATE DATABASE livrariaRecuperacao20262;

USE livrariaRecuperacao20262;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DOUBLE,
    precoVenda DOUBLE,
    CONSTRAINT fk_livro_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
    CONSTRAINT fk_livro_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);

CREATE informacoes_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cpf CHAR(11),
    livrosAdquiridos INT
);

CREATE forma_pagamento (
    id INT PRIMARY KEY,
    fk_livro INT,
    fk_autor INT,
    fk_cliente INT,
    metodo VARCHAR(50),
    dataPagamento VARCHAR(45)
);

INSERT INTO genero (nome) VALUES 
('Romance'),
('Terror'),
('Comédia'),
('Suspense');


