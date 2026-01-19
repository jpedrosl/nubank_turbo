create role admin_nubank;
create role analista_suporte;

grant all privileges on all tables in schema public to admin_nubank;

grant all privileges on all sequences in schema  public to admin_nubank;



grant select on clientes, contas, extrato, caixinha, movimentacao_caixinha to analista_suporte;

