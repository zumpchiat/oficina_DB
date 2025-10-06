create database if not exists oficina;
use oficina;

-- CREATE TABLE CLIENTE
create table oficina.cliente(
	id_client INT auto_increment primary key,
    nome varchar(25),
    sobrenome varchar(40),
    cpf varchar(15),
    endereco varchar(255),
    telefone varchar(15),
    email varchar(60),
    dtUltimaVisita date,
    constraint unique_cpf unique(cpf),
    constraint unique_email unique(email)
);

ALTER TABLE oficina.cliente auto_increment=1;