insert into clientes(id_cliente,nome,email)
values
(1,'Alberto Farias','alberto@gmail.com'),
(2,'Carlos Castro','carlos@gmial.com'),
(3,'Estevão Silva','estevao@gmail.com'),
(4,'José Cardoso','jose@gmail.com'),
(5,'Maicon Douglas','maicon@gmail.com'),
(6,'Nicolas Silva','nicolas@gmail.com'),
(7,'Rayssa Perry','rayssa@gmail.com'),
(8,'Julio Freitas','julio@gmail.com'),
(9,'Cláudio Ferreira','claudio@gmail.com'),
(10,'Davi Marques','davi@gmail.com'),
(11,'Fernanda Lopes','fernanda@gmail.com'),
(12,'Lucas Almeida','lucas@gmail.com'),
(13,'Patrícia Nogueira','patricia@gmail.com'),
(14,'Renato Pacheco','renato@gmail.com'),
(15,'Camila Rocha','camila@gmail.com');



insert into contas(id_conta,numero_conta,saldo_disponivel,fk_cliente)
values
(1,'12472939-9',2000.00,1),
(2,'5324378-8',500.00,2),
(3,'8539273-1',1000.00,3),
(4,'59287328-0',3400.00,4),
(5,'37304857-5',6000.00,5),
(6,'29482759-2',4500.00,6),
(7,'68392793-3',75000.00,7),
(8,'72946739-4',120000.00,8),
(9,'59381039-5',6800.00,9),
(10,'68293829-7',210000.00,10),
(11,'80435913-9',50000.00,11),
(12,'63492849-3',76000.00,12),
(13,'94738291-6',3200.00,13),
(14,'58392048-2',9800.00,14),
(15,'73928475-0',15000.00,15);


insert into cartao(id_cartao,numero_final,limite_credito,limite_utilizado,fk_conta)
values
(1,'4561',5000.00,1000.00,1),
(2,'3289',1000.00,250.00,2),
(3,'5930',3000.00,2500.00,3),
(4,'6372',10000.00,7000.00,4),
(5,'1921',15000.00,10000.00,5),
(6,'5821',2000.00,1200.00,6),
(7,'7402',8000.00,3000.00,7),
(8,'9156',2500.00,900.00,8),
(9,'3648',6000.00,1500.00,9),
(10,'8275',12000.00,5000.00,10),
(11,'4903',18000.00,12000.00,11),
(12,'6581',3500.00,1800.00,12),
(13,'2719',9000.00,4000.00,13),
(14,'8364',22000.00,15000.00,14),
(15,'5047',4000.00,2000.00,15);


insert into extrato (id_extrato, tipo_operacao, valor, data_operacao, fk_conta)
values
(1,'Crédito',1400.00,'2026-01-13',1),
(2,'Débito',500.00,'2026-01-13',1),
(3,'Crédito',2000.00,'2026-01-14',2),
(4,'Débito',300.00,'2026-01-14',2),
(5,'Crédito',1500.00,'2026-01-15',3),
(6,'Débito',700.00,'2026-01-15',3),
(7,'Crédito',5000.00,'2026-01-16',4),
(8,'Débito',1200.00,'2026-01-16',4),
(9,'Crédito',3000.00,'2026-01-17',5),
(10,'Débito',900.00,'2026-01-17',5),
(11,'Crédito',2500.00,'2026-01-18',6),
(12,'Débito',600.00,'2026-01-18',6),
(13,'Crédito',8000.00,'2026-01-19',7),
(14,'Débito',2000.00,'2026-01-19',7),
(15,'Crédito',10000.00,'2026-01-20',8);


insert into caixinha(id_caixinha, nome_objetivo, saldo_caixinha, meta_valor, status_caixinha)
values
(1,'Casar',2000.00,10000.00,'Em andamento'),
(2,'Comprar uma moto',7000.00,25000.00,'Em andamento'),
(3,'Comprar um apartamento',250000.00,175000.00,'Quase atingindo a meta'),
(4,'Viajar',10000.00,30000.00,'Iniciando'),
(5,'Comprar um carro',70000.00,70000.00,'Concluída'),
(6,'Fazer intercâmbio',15000.00,50000.00,'Em andamento'),
(7,'Abrir um negócio',40000.00,120000.00,'Em andamento'),
(8,'Reforma da casa',25000.00,60000.00,'Em andamento'),
(9,'Reserva de emergência',10000.00,30000.00,'Em andamento'),
(10,'Curso profissionalizante',3500.00,15000.00,'Iniciando'),
(11,'Comprar notebook',4500.00,8000.00,'Em andamento'),
(12,'Viagem internacional',12000.00,40000.00,'Em andamento'),
(13,'Pós-graduação',9000.00,30000.00,'Em andamento'),
(14,'Casamento dos sonhos',30000.00,100000.00,'Em andamento'),
(15,'Aposentadoria',8000000.00,500000.00,'Iniciando');



insert into caixinha_participantes(id_participante,fk_caixinha,fk_cliente)
values 
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15);


insert into gerenciar_assinaturas
(id_assinatura, nome_servico, valor_recorrente, dia_vencimento, status_assinatura, origem_pagamento, fk_cartao, fk_caixinha)
values
(1,'Netflix',49.90,'2026-01-03','Ativa','Crédito',1,2),
(2,'Spotify',21.90,'2026-01-05','Ativa','Crédito',2,2),
(3,'Amazon Prime',19.90,'2026-01-07','Ativa','Crédito',3,2),
(4,'Disney+',33.90,'2026-01-10','Ativa','Crédito',4,2),
(5,'HBO Max',34.90,'2026-01-12','Ativa','Crédito',5,2),
(6,'YouTube Premium',24.90,'2026-01-15','Ativa','Crédito',6,2),
(7,'Apple Music',21.90,'2026-01-18','Ativa','Crédito',7,2),
(8,'Google Drive',9.90,'2026-01-20','Ativa','Débito',8,3),
(9,'iCloud',4.90,'2026-01-22','Ativa','Débito',9,3),
(10,'Xbox Game Pass',44.99,'2026-01-25','Ativa','Crédito',10,4),
(11,'PlayStation Plus',39.90,'2026-01-26','Ativa','Crédito',11,4),
(12,'Adobe Creative Cloud',104.00,'2026-01-27','Ativa','Crédito',12,5),
(13,'Canva Pro',34.90,'2026-01-28','Ativa','Crédito',13,5),
(14,'Uber One',24.99,'2026-01-29','Ativa','Crédito',14,2),
(15,'LinkedIn Premium',79.90,'2026-01-30','Ativa','Crédito',15,5);


insert into movimentacao_caixinha
(id_movimentaçao, tipo_movimento, valor, data_movimento, fk_caixinha, fk_cliente)
values
(1,'Investimento',2000.00,'2026-01-01',1,1),
(2,'Depósito',500.00,'2026-01-02',2,2),
(3,'Depósito',1500.00,'2026-01-03',3,3),
(4,'Resgate',1000.00,'2026-01-04',4,4),
(5,'Investimento',3000.00,'2026-01-05',5,5),
(6,'Depósito',800.00,'2026-01-06',6,6),
(7,'Depósito',1200.00,'2026-01-07',7,7),
(8,'Resgate',500.00,'2026-01-08',8,8),
(9,'Investimento',2500.00,'2026-01-09',9,9),
(10,'Depósito',1000.00,'2026-01-10',10,10),
(11,'Depósito',2000.00,'2026-01-11',11,11),
(12,'Resgate',1500.00,'2026-01-12',12,12),
(13,'Investimento',4000.00,'2026-01-13',13,13),
(14,'Depósito',1800.00,'2026-01-14',14,14),
(15,'Resgate',2200.00,'2026-01-15',15,15);

insert into log_limite_cartao
(id_log, fk_cartao, limite_anterior, novo_limite, data_alteracao)
values
(1,1,5000.00,7000.00,'2026-01-21'),
(2,2,1000.00,1500.00,'2026-01-21'),
(3,3,3000.00,4500.00,'2026-01-21'),
(4,4,10000.00,12000.00,'2026-01-21'),
(5,5,15000.00,20000.00,'2026-01-21'),
(6,6,2000.00,3000.00,'2026-01-21'),
(7,7,8000.00,12000.00,'2026-01-21'),
(8,8,2500.00,4000.00,'2026-01-21'),
(9,9,6000.00,9000.00,'2026-01-21'),
(10,10,12000.00,18000.00,'2026-01-21'),
(11,11,18000.00,25000.00,'2026-01-21'),
(12,12,3500.00,5000.00,'2026-01-21'),
(13,13,9000.00,13000.00,'2026-01-21'),
(14,14,22000.00,30000.00,'2026-01-21'),
(15,15,4000.00,6500.00,'2026-01-21');
