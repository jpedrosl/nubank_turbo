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


--tabela de log que armazena as movimentações realizadas na caixinha
create or replace function fn_log_limite_cartao()
returns trigger as $$
begin
    if (old.limite_credito <> new.limite_credito) THEN
    insert into log_limite_cartao (fk_cartao, limite_antigo, limite_novo)
    values (old.id_cartao, old.limite_credito, new.limite_credito);
    end if;
    return new;
end;
$$ language plpgsql;

create trigger
trg_log_limite
after update on cartao
for each row
execute function fn_log_limite_cartao();


--todo email de cliente e salvo em letras minusculas
create or replace function fn_tratar_email_cliente()
returns trigger as $$
begin
    new.email := lower(new.email);
    return new;
end;
$$ language plpgsql;

create TRIGGER
trg_padroniza_email
before insert or update on clientes
for each row
execute function fn_tratar_email_cliente();