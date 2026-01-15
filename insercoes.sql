insert into clientes(id_cliente,nome,email)
values(1,'Alberto Farias','alberto@gmail.com'),
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
values(1,'12472939-9',2000.00,1),
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
values(1,'4561',5000.00,1000.00,1),
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


insert into extrato (id_extrato,tipo_operacao,valor,data_operacao,fk_conta)
values(1,'Crédito','')