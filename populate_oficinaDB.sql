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


-- POPULATE TABLE ORDEM SERVIÇO DADOS FAKE
 INSERT INTO oficina.ordemServico (Dt_Emissao, Dt_PrevEntrega, Dt_Conclusao, os_status, valor_total, id_veiculo) VALUES
('2024-10-01 09:30:00', '2024-10-03 18:00:00', '2024-10-02 16:45:00', 'Fechada', 850.50, 1 ),
('2024-10-04 09:00:00', '2024-10-06 18:00:00', '2024-10-06 17:30:00', 'Fechada', 675.00, 2 ),
('2024-10-05 10:00:00', '2024-10-08 18:00:00', NULL, 'Em_progresso', 980.25, 3),
('2024-10-06 08:45:00', '2024-10-12 18:00:00', NULL, 'Aberta', 1800.00, 4);

