--saldo atualizada da caixinha apos movimentação
create or replace FUNCTION
fn_atualiza_saldo_caixinha()
returns trigger as $$
begin
     if (new.tipo_movimento = 'deposito') THEN
     update caixinha
     set saldo_caixinha = saldo_caixinha + new.valor
     where id_caixinha = new.fk_caixinha;

        elsif (new.tipo_movimento = 'pagamento' or new.tipo_movimento = 'resgate') THEN
        update caixinha
        set saldo_caixinha = saldo_caixinha - new.valor
        where id_caixinha = new.fk_caixinha;
    end if;
    return new;
end;
$$ language plpgsql;

create trigger
trg_atualiza_saldo_caixinha
after insert on movimentacao_caixinha
for each row
execute function fn_atualiza_saldo_caixinha();


