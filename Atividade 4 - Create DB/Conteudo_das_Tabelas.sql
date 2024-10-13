insert into
    estados (uf, nome)
values
    ('RS', 'Rio Grande do Sul');

insert into
    estados (uf, nome)
values
    ('SP', 'São Paulo');

insert into
    cidades (estado_id, nome)
values
    (1, 'Campo Bom'),
    (2, 'Itu');

insert into
    clientes (
        nome,
        cpf,
        dt_nascimento,
        logradouro,
        cep,
        cidade_id
    )
values
    (
        'Ana Clara Silva',
        '12345678901',
        '1990-05-12',
        'Rua das Flores, 123',
        '12345678',
        1
    ),
    (
        'Bruno Mendes Souza',
        '23456789012',
        '1985-08-22',
        'Avenida Brasil, 456',
        '87654321',
        1
    ),
    (
        'Carla Lima Andrade',
        '34567890123',
        '1978-12-10',
        'Travessa dos Pássaros, 789',
        '56714909',
        2
    ),
    (
        'Diego Oliveira Santos',
        '45678901234',
        '1995-03-30',
        'Rua dos Girassóis, 101',
        '54321987',
        2
    );

insert into
    veiculos (modelo, ano, placa, cliente_id)
values
    ('Toyota Corolla', '2018-01-01', 'ABC-1234', 1),
    ('Honda Civic', '2020-01-01', 'XYZ-5678', 2),
    ('Ford Focus', '2017-01-01', 'JKL-9101', 3),
    ('Chevrolet Cruze', '2019-01-01', 'MNO-2345', 4);

insert into
    formas_pagamento (nome)
values
    ('CARTÃO'),
    ('BOLETO'),
    ('PIX'),
    ('DINHEIRO');

insert into
    vendas (
        forma_pagamento_id,
        cliente_id,
        data_venda,
        valor_total
    )
values
    (1, 1, '2024-01-15', 500.00),
    (2, 2, '2024-02-20', 1200.50),
    (3, 3, '2024-03-05', 750.75),
    (4, 4, '2024-04-10', 300.00),
    (1, 1, '2024-05-22', 950.00),
    (2, 2, '2024-06-18', 1250.99),
    (3, 3, '2024-07-30', 400.25),
    (4, 4, '2024-08-12', 850.00);

insert into
    acompanhamentos (status, venda_id)
values
    ('1', 1),
    ('2', 2),
    ('1', 3),
    ('2', 4),
    ('1', 5),
    ('2', 6),
    ('1', 7),
    ('2', 8);

insert into
    produtos (nome, valor)
values
    ('Arroz 5kg', 25.90),
    ('Feijão Preto 1kg', 7.50),
    ('Macarrão Espaguete 500g', 4.30),
    ('Azeite de Oliva 500ml', 18.75),
    ('Açúcar Refinado 1kg', 3.20),
    ('Leite Integral 1L', 4.80),
    ('Café Torrado 500g', 12.50),
    ('Farinha de Trigo 1kg', 5.90),
    ('Óleo de Soja 900ml', 6.40),
    ('Sal Refinado 1kg', 2.50);

insert into
    servicos (nome, valor)
values
    ('Entrega de Rancho', 8.00),
    ('Confeitaria', 25.00);

insert into
    itens_vendas (produto_id, serviço_id, venda_id)
values
    (1, 1, 1),
    (2, 1, 1),
    (3, 1, 1),
    (4, 1, 1),
    (1, 1, 2),
    (2, 1, 2),
    (3, 1, 2),
    (4, 1, 2),
    (1, 1, 3),
    (2, 1, 3),
    (3, 1, 3),
    (4, 1, 3),
    (1, 1, 4),
    (2, 1, 4),
    (3, 1, 4),
    (4, 1, 4);

insert into
    itens_vendas (produto_id, serviço_id, venda_id)
values
    (1, 1, 5),
    (2, 2, 5),
    (3, 1, 5),
    (4, 1, 5),
    (1, 2, 6),
    (2, 1, 6),
    (3, 2, 6),
    (4, 1, 6),
    (1, 1, 7),
    (2, 1, 7),
    (3, 2, 7),
    (4, 2, 7),
    (1, 2, 8),
    (2, 2, 8),
    (3, 1, 8),
    (4, 1, 8);

ALTER TABLE acompanhamentos
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE cidades
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE clientes
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE estados
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE formas_pagamento
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE itens_vendas
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE produtos
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE servicos
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE veiculos
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

ALTER TABLE vendas
ADD COLUMN criado_em TIMESTAMP NOT NULL DEFAULT NOW ();

alter table vendas
drop column created_at;