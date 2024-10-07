-- 1 - Todos os clientes do estado de MG

SELECT c.name, c.email ,ca.state
FROM customer c
JOIN customer_address ca ON c.id = ca.customer_id
WHERE ca.state = 'MG';

-- 2 - Todos os clientes do sexo masculino que moram na cidade de São Paulo (capital)

SELECT c.name,ca.state, ca.city , c.gender
FROM customer c
inner join customer_address ca ON c.id = ca.customer_id
WHERE c.gender = 'male' 
	and ca.city = 'São Paulo'
 	AND ca.state = 'SP';

-- 3 - Todas as compras acima de R$3.000,00 em ordem crescente;

SELECT 
	name, price
FROM 
	items
WHERE 
	price > 3000
ORDER BY price ASC;

-- 4 - Todos os produtos que tenham em seu nome “Sapatilha em Couro Vazada”

select 
	name
from 
	items 
where name ilike '%sapatilha em Couro Vazado%';
