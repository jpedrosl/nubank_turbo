--saldo atualizada da caixinha apos movimentação
create or replace FUNCTION
atualiza_saldo_caixinha()
returns trigger as $$
begin
     if (new.tipo_movimento = 'deposito')