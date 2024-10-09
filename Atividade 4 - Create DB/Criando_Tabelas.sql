create table if not exists estados (
	id serial primary key,
	uf varchar(2) not null,
	nome varchar(150) not null
);

create table if not exists cidades (
	id serial primary key,
	estado_id int not null references estados(id),
	nome varchar(150)
);

create table if not exists clientes (
	id serial primary key,
	nome varchar(250) not null,
	cpf char(11) not null,
	dt_nascimento date not null,
	logradouro varchar(255) not null,
	cep varchar(20) null,
	cidade_id int not null references cidades(id)
);

create table if not exists veiculos (
	id serial primary key,
	modelo varchar(150) not null,
	ano date not null,
	placa varchar(10) not null,
	cliente_id int not null references clientes(id)
);

create table if not exists formas_pagamento (
	id serial primary key, 
	nome varchar(45) not null
);

create table if not exists vendas (
	id serial primary key,
	forma_pagamento_id int not null references formas_pagamento(id),
	cliente_id int not null references clientes(id),
	data_venda date not null, 
	valor_total decimal(10,2) not null
);

create table if not exists acompanhamentos (
	id serial primary key,
	status char(1) not null,
	venda_id int not null references vendas(id)
);

create table if not exists produtos (
	id serial primary key,
	nome varchar(150) not null,
	valor decimal(10,2) not null
);

create table if not exists serviços (
	id serial primary key,
	nome varchar(50) not null,
	valor decimal(10,2) not null
);

create table if not exists itens_vendas (
	id serial primary key,
	produto_id int not null references produtos(id),
	serviço_id int not null references serviços(id),
	venda_id int not null references vendas(id)
);
