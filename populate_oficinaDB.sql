use oficina;

-- POPULATE TABLE CLIENTE DADOS FAKE
insert into oficina.cliente (nome, sobrenome, cpf, endereco, telefone, email, dtUltimaVisita) values 
	("Roni", "Souza", "12121234356", "Rua dos cajueiros, centro niteroi 25410114", "2198786654", "rsouza@bol.com.br", "2025-02-12"),
    ("Alan", "Santos", "189562374145", "Avenida dos Bandeirantes, centro Rio de Janeiro 26523880", "2199784456", "Alan189@globo.com.br", "2024-03-04"),
    ("Roberto", "Malaquias", "98745698751", "Loteamento dos Ribeiros, ostia Sergipe 66523774", "6687874514", "roismal@gmail.com", "2023-03-04");


-- POPULATE TABLE VEICULO DADOS FAKE
insert into oficina.veiculo (placa, marca, modelo, chassi, tipoCombustivel, numeroPortas, ano, id_client) values 
	("kom6788", "FORD", "Fiesta", "4534gdfr345g", "Gasolina", 5, "2010", 1),
	("kom8799", "FIAT", "PALIO", "55634gdfr345g", "Flex", 5, "2016", 1),
	("qng9987", "FIAT", "Siena", "55634gdjkrtty", "Alcool", 5, "2014", 2),
    ("qng5511", "FORD", "OPALA", "qwsdfg98ee", "Gasolina", 5, "2014", 2);

