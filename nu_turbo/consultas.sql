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


-- Lista todas as operações (tipo, valor e data) de todas as contas.
select nome,tipo_operacao,valor,data_operacao from extrato 
join clientes on  id_cliente = id_extrato;


--Lista todas as operações (tipo, valor e data) de uma conta específica!
select nome,tipo_operacao,valor,data_operacao from extrato 
join clientes on  id_cliente = id_extrato
where id_cliente = 1;


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
join clientes on id_cliente = fk_cliente;

--mostra os clientes que pagam com cartão de crédito
select nome, origem_pagamento from gerenciar_assinaturas
join clientes on id_assinatura = id_cliente
where origem_pagamento ='Crédito';

-- mostra os clientes que pagam no Débito
select nome, origem_pagamento from gerenciar_assinaturas
join clientes on id_assinatura = id_cliente
where origem_pagamento ='Débito';


-- Mostrar limite anterior, novo limite e data da alteração.
select nome,limite_anterior,novo_limite,data_alteracao from log_limite_cartao
join clientes on id_cliente = id_log;

--Mostra os clientes com os maiores saldos, do maior para o menor
select nome,saldo_disponivel from clientes
join contas on id_cliente = id_conta
ORDER BY saldo_disponivel desc;

--Clientes que mais movimentou dinheiro em caixinhas do maior para o menor
select nome,saldo_caixinha from clientes
join caixinha on id_caixinha = id_cliente
ORDER BY saldo_caixinha desc;

-- Cartões com uso acima de 80% do limite
select nome, round((limite_credito / limite_utilizado) * 100,2) as percentual_utilizado from clientes
join cartao on id_cartao = id_cliente;



-- listar os motivos da movimentaçoes,qauntas  transacoes esse motivo tem,e o total movimentado pelo motivo

select  nome, count(tipo_movimento)as quant_trasacoes,tipo_movimento, sum(valor) from movimentacao_caixinha
join clientes on id_cliente = fk_cliente
GROUP BY nome, tipo_movimento

-- Criação da views  



--Calcula quanto ainda resta do limite do cartão do cliente 
create view calculo_do_limite_restante_do_cliente as
select (limite_credito - limite_utilizado) as Limite_Restante,nome from cartao
join contas on id_conta = fk_conta
join clientes on id_cliente = fk_cliente;

 
 --Mostra o nome do serviço, valor recorrente e forma de pagamento.
 create view relatorio_de_assinaturas as
 select nome,nome_servico,valor_recorrente,dia_vencimento from gerenciar_assinaturas
 join clientes on id_cliente = id_assinatura;

