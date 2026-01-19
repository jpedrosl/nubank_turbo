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

create or replace trigger
trg_atualiza_saldo_caixinha
after update on movimentacao_caixinha
for each row
execute function fn_atualiza_saldo_caixinha();


--tabela de log que armazena as movimentações realizadas na caixinha
create or replace function fn_log_limite_cartao()
returns trigger as $$
begin
    -- Verificando se o limite mudou
    if (old.limite_credito <> new.limite_credito) THEN
    insert into log_limite_cartao (fk_cartao, limite_anterior, novo_limite)
    values (new.id_cartao, old.limite_credito, new.limite_credito);
    
    end if;
    return new;
end;
$$ language plpgsql;

create or replace trigger
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



--automaçao de pagamento de assinaturas
create or replace function 
fn_atualiza_saldo_conta()
returns trigger as $$
begin  --depositos somam ao saldo
     if(new.tipo_operacao in ('pix recebido', 'deposito')) THEN
        update contas
        set saldo_disponivel = saldo_disponivel + new.valor
        where id_conta = new.fk_conta;

        --saques e pagamentos subtraem do saldo
        ELSE
        update contas
        set saldo_disponivel = saldo_disponivel - new.valor
        where id_conta = new.fk_conta;
    end if;
    return new;
end;
$$ language plpgsql;

create trigger trg_atualiza_saldo_conta
after insert on extrato
for each row
execute function fn_atualiza_saldo_conta();


SELECT setval('contas_id_conta_seq', (SELECT MAX(id_conta) FROM contas));
SELECT setval('cartao_id_cartao_seq', (SELECT MAX(id_cartao) FROM cartao));
SELECT setval('extrato_id_extrato_seq', (SELECT MAX(id_extrato) FROM extrato));
SELECT setval('caixinha_id_caixinha_seq', (SELECT MAX(id_caixinha) FROM caixinha));
SELECT setval('movimentacao_caixinha_id_movimentacao_seq', (SELECT MAX(id_movimentacao) FROM movimentacao_caixinha));

     