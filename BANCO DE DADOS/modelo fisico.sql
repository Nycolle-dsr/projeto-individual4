/* modelo físico: */

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR (45),
    cpf VARCHAR (45),
    rg VARCHAR (45),
    telefone VARCHAR (45)
);

CREATE TABLE viagem (
    id_viagem INTEGER PRIMARY KEY,
    dataViagem DATE,
    horaPartida TIME,
    origem VARCHAR (45),
    destino VARCHAR (45)
);

CREATE TABLE cliente_viagem (
    cliente_idcliente INTEGER PRIMARY KEY,
    viagem_idviagem INTEGER
);

CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY,
    nome VARCHAR (45),
    login VARCHAR (45),
    senha VARCHAR (45)
);