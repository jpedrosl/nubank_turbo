-- indice para buscar de clientes por email
create index idx_clientes_email on clientes(email);

--buscar por numero da conta 
create index idx_contas_numero on contas(numero_conta);

--extratos por conta e data
create index idx_extrato_data on extrato(fk_conta, data_operacao);

--buscar participantes da caixinha 
create index idx_caixinha_participantes on caixinha_participantes(fk_caixinha, fk_cliente);