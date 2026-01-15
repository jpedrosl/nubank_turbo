-- consultar todos os clientes
select  nome from clientes c;

-- consultar o nome dos clientes, numero da conta e o saldo disponivel
select nome,numero_conta,saldo_disponivel from clientes c
join contas on fk_cliente = id_cliente;

-- Exibir os cartões mostrando o limite total, o limite utilizado e o limite ainda disponível.
select