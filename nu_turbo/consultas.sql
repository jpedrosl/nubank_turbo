-- consultar todos os clientes
select  nome from clientes c;

-- consultar o nome dos clientes, numero da conta e o saldo disponivel
select nome,numero_conta,saldo_disponivel from clientes c
join contas on fk_cliente = id_cliente;

-- Exibi o nome dos clientes e o limite total, o limite utilizado e o limite ainda disponível.
select nome,limite_credito,limite_utilizado from clientes c 
join cartao on id_cartao = id_cliente;


-- selecionar os clientes com o saldo maior que 5.000
select nome, saldo_disponivel from clientes c
join contas on fk_cliente = id_cliente
where saldo_disponivel > 5000 


