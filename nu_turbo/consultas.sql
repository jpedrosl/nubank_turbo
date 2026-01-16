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
where saldo_disponivel > 5000;

--Extrato de uma conta

-- Lista todas as operações (tipo, valor e data) de todas as contas.
select nome,tipo_operacao,valor,data_operacao from extrato 
join clientes on  id_cliente = id_extrato;


--Lista todas as operações (tipo, valor e data) de uma conta específica!
select nome,tipo_operacao,valor,data_operacao from extrato 
join clientes on  id_cliente = id_extrato
where id_cliente = 1;

--Calcular quanto ainda resta do limite
select (limite_credito - limite_utilizado) as Limite_Restante,nome from cartao
join contas on id_conta = fk_conta
join clientes on id_cliente = fk_cliente;

--Mostrar nome do objetivo, saldo atual, meta e status das caixinhas.
select nome_objetivo,saldo_caixinha,meta_valor,status_caixinha 
from caixinha;

-- Mostra o nomme dos clientes, o seu saldo atual e a meta
select nome ,nome_objetivo,saldo_caixinha,meta_valor from caixinha
join clientes on id_cliente = id_caixinha

-- Somar todas as movimentações feitas por cada cliente.
select nome, sum(valor) as Total_movimentado from movimentacao_caixinha
join clientes on id_cliente = movimentacao_caixinha.fk_cliente
GROUP BY nome;


--Mostrar o nome do cliente, o valor e o tipo de investimento que ele fez
select nome, valor,tipo_movimento from movimentacao_caixinha
join clientes on id_cliente = fk_cliente

