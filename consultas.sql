-- consultar todos os clientes
select  nome from clientes c;

-- consultar o nome dos clientes, numero da conta e o saldo disponivel
select nome,numero_conta,saldo_disponivel from clientes c
join contas on fk_cliente = id_cliente;

-- exibir os cart