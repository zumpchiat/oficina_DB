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
-- CREATE TABLE SERVICO
create table oficina.servico(
	id_servico int auto_increment primary key,
    nome varchar(30),
    valor decimal(6,2),
    descricao varchar(255)    
);

-- CREATE TABLE ORDEM DE SERVIÇO
create table oficina.ordemServico(
	id_ordemServico int auto_increment primary key,
    Dt_Emissao datetime ,
    Dt_PrevEntrega datetime,
    Dt_Conclusao datetime,
    os_status enum("Aberta", "Em_progresso", "Fechada", "Cancelada"),
    valor_total float,
    id_veiculo int not null,
    constraint fk_veiculo foreign key(id_veiculo) references veiculo(id_veiculo)
);

-- CREATE TABLE os_servico
create table oficina.os_servico(
	id_os_servico int auto_increment primary key,
    id_ordemServico int not null,
    id_servico int not null,
    horas_trabalhadas float
);


ALTER TABLE oficina.os_servico auto_increment=1;
ALTER TABLE oficina.servico auto_increment=1;
ALTER TABLE oficina.ordemServico auto_increment=1;
ALTER TABLE oficina.veiculo auto_increment=1;
ALTER TABLE oficina.cliente auto_increment=1;