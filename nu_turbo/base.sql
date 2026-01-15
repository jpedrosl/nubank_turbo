create table clientes (
    id_cliente serial primary key,
    nome varchar(100) not null,
    email varchar(100) unique not null
);

create table contas (
    id_conta serial primary key,
    numero_conta varchar(20) unique not null,
    saldo_disponivel decimal(15,2) not null default 0.00,
    fk_cliente int references clientes(id_cliente)
);

create table cartao (
    id_cartao serial primary key,
    numero_final varchar(4) not null,
    limite_credito decimal(15,2) not null,
    limite_utilizado decimal(15,2) not null default 0.00,
    fk_conta int references contas(id_conta)
);

create table extrato (
    id_extrato serial primary key,
    tipo_operacao varchar(50) not null,
    valor decimal(15,2) not null,
    data_operacao timestamp not null default current_timestamp,
    fk_conta int references contas(id_conta)
)

create table caixinha(
    id_caixinha serial primary key,
    nome_objetivo varchar(100) not null,
    saldo_caixinha decimal(15,2) not null default 0.00,
    meta_valor decimal(15,2) not null,
    status_caixinha varchar(50) not null
)

create table caixinha_participantes(
    id_participante serial primary key,
    fk_caixinha int references caixinha(id_caixinha),
    fk_cliente int references clientes(id_cliente)
)

create table gerenciar_assinaturas(
    id_assinatura serial primary key,
    nome_servico varchar(100) not null,
    valor_recorrente decimal(15,2) not null,
    dia_vencimento  timestamp not null default current_timestamp,
    status_assinatura varchar(50) not null,
    origem_pagamento varchar(100) not null,
    fk_cartao int references cartao(id_cartao),
    fk_caixinha int references caixinha(id_caixinha)
)

create table movimentacao_caixinha(
    id_movimentaçao serial primary key,
    tipo_movimento varchar(50) not null,
    valor decimal(15,2) not null,
    data_movimento timestamp not null default current_timestamp,
    fk_caixinha int references caixinha(id_caixinha),
    fk_cliente int references clientes(id_cliente)
)

create table log_limite_cartao(
    id_log serial primary key,
    fk_cartao int references cartao(id_cartao),
    limite_anterior decimal(15,2) not null,
    novo_limite decimal(15,2) not null,
    data_alteracao timestamp not null default current_timestamp 
);

