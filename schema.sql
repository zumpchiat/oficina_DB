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

-- CREATE TABLE VEICULO
create table oficina.veiculo(
	id_veiculo INT auto_increment primary key,
    placa varchar(10),
    marca varchar(20),
    modelo varchar(20),
    chassi varchar(60),
    tipoCombustivel enum("Gasolina", "Alcool", "Flex", "Eletrico", "Disel"),
    numeroPortas char(2),
    ano varchar(6),
    id_client INT,
    constraint fk_client foreign key(id_client) references oficina.cliente(id_client),
    constraint unique_placa unique(placa),
    constraint unique_chassi unique(chassi)
);

ALTER TABLE oficina.veiculo auto_increment=1;
ALTER TABLE oficina.cliente auto_increment=1;