/* 
1 - Listar todas as cidades do estado de "RS", 
mostrando o estado (uf, estado) e o nome da cidade.
 */
select
	e.uf,
	e.nome as estado,
	c.nome as cidade
from
	estados e
	inner join cidades c on c.estado_id = e.id
where
	e.uf = 'RS';

/* 
2 - Listar todos os clientes, incluindo o nome do cliente 
e o nome da cidade onde ele reside.
 */
select
	c.nome as cliente,
	e.nome as estados,
	c2.nome as cidades
from
	clientes c
	inner join cidades c2 on c2.id = c.cidade_id
	inner join estados e on e.id = c2.estado_id;

/* 
3 - Mostre o nome dos clientes e o valor 
total das vendas realizadas por ele.
 */
select
	c.nome,
	sum(v.valor_total) as total_vendas
from
	clientes c
	inner join vendas v on v.cliente_id = c.id
group by
	c.nome
order by
	total_vendas desc;

/* 
4 - Listar todos os veículos e seus respectivos donos (nome do cliente).
 */
select
	c.nome,
	v.modelo
from
	veiculos v
	inner join clientes c on v.cliente_id = c.id;

/* 
5 - Listar o nome dos produtos vendidos, 
o nome do serviço prestado e o valor total da venda. 
 */
select
	p.nome as produto,
	s.nome as serviço,
	sum(v.valor_total) as total
from
	produtos p
	inner join itens_vendas iv on iv.produto_id = p.id
	inner join servicos s on iv.serviço_id = s.id
	inner join vendas v on v.id = iv.venda_id
group by
	p.nome,
	s.nome;

/* 
6 - Listar o nome do cliente, o modelo do veículo e a cidade onde ele mora.
 */
select
	c.nome,
	v.modelo as modelo,
	c2.nome as cidade
from
	clientes c
	inner join veiculos v on v.cliente_id = c.id
	inner join cidades c2 on v.cliente_id = c2.id;

/*
7 - Liste o nome do cliente, o nome do produto comprado e o valor total da venda, 
considerando apenas as vendas realizadas com o cartão de crédito.
 */
select
	c.nome as nome_cliente,
	p.nome as produto,
	fp.nome as Forma_de_Pagamento,
	sum(v.valor_total) as total
from
	produtos p
	inner join itens_vendas iv on iv.produto_id = p.id
	inner join vendas v on v.id = iv.venda_id
	inner join formas_pagamento fp on fp.id = v.forma_pagamento_id
	inner join clientes c on c.id = v.cliente_id
where
	fp.nome = 'CARTÃO'
group by
	fp.nome,
	c.nome,
	p.nome;

/*
8 - Liste o nome do cliente, o valor total da venda e o 
estado de acompanhamento, considerando apenas os clientes 
que moram em São Paulo.
 */
select
	c.nome as nome_cliente,
	e.nome as estado,
	v.valor_total
from
	vendas v
	inner join clientes c on c.id = v.cliente_id
	inner join cidades c2 on c2.id = c.cidade_id
	inner join estados e on e.id = c2.estado_id
where
	c.nome = 'São Paulo';