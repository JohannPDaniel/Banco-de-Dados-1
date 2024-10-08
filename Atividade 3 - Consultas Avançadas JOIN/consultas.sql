/* 	
1 - Todos os clientes do estado de MG que 
tenham comprado o produto que contenha
em seu nome “Sapatilha em Couro Vazada”
*/

SELECT
	c.name,
	ca.state,
	i.name
FROM
	customer c
	INNER JOIN customer_address ca ON c.id = ca.customer_id
	INNER JOIN orders o ON c.id = o.customer_id
	INNER JOIN items i ON o.id = i.id
WHERE
	ca.state = 'MG'
	AND i.name LIKE '%Sapatilha em Couro Vazada%';

/*
2 - Todos os nomes e telefones dos clientes do
estado de SP que efetuaram compras cuja
faixa de valor esteja acima de R$8.000
*/

select
	c.name,
	c.phone,
	ca.state,
	o.total
from
	customer c
	inner join customer_address ca on c.id = ca.customer_id
	inner join orders o on o.customer_id = c.id
where
	ca.state = 'SP'
	and o.total > '8000';

/*
3 - O nome do cliente que teve o maior
desconto em sua compra e o valor do
desconto obtido
*/

select
	c.name,
	i.discount as desconto
from
	customer c
	inner join orders o ON o.customer_id = c.id
	inner join items i on i.id = o.id
where
	i.discount is not null
order by
	i.discount desc;