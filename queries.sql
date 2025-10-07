-- Queries do DB 

-- Lista de Cliente e Veículos cadastrados  
select concat(c.nome, " ", c.sobrenome) as Cliente,
		v.placa as Placa,
		v.modelo as Modelo,
        v.marca as Marca,
        v.tipoCombustivel as Combustivel
	from oficina.veiculo v , oficina.cliente c
		where v.id_client = c.id_client;
        
-- Quantidade de veículos agrupado por ano
select count(*) as Numero_Cliente, v.ano		
	from oficina.veiculo v , oficina.cliente c
		where v.id_client = c.id_client
        group by v.ano;

-- Lista as OS com previsão de entrega entre dias 09/10/24 04/10/2024
select id_ordemServico as OS FROM ordemServico where Dt_PrevEntrega between '2024-10-04' and '2024-10-09';


-- Lista as OS e placas dos veiculos com previsão de entrega entre dias 09/10/24 04/10/2024
select id_ordemServico as OS, 
		v.placa as Placa,  
        o.Dt_PrevEntrega as Previsão_Entrega
	FROM ordemServico o
        inner join veiculo v  on o.id_veiculo =  v.id_veiculo
		where o.Dt_PrevEntrega 
			between '2024-10-04' and '2024-10-09';
            
-- Lista as OS, Cliente, Placas e Previsão de entrega dos veiculos com previsão de entrega entre dias 09/10/24 04/10/2024
select id_ordemServico as OS, 
		concat(c.nome, " ", c.sobrenome) as Cliente,
		v.placa as Placa,  
        o.Dt_PrevEntrega as Previsão_Entrega
	FROM ordemServico o
        inner join veiculo v  on o.id_veiculo =  v.id_veiculo
        inner join cliente c  on  c.id_client = v.id_client
		where o.Dt_PrevEntrega 
			between '2024-10-04' and '2024-10-09';