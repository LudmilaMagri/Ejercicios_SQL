select last_name from sakila.actor group by last_name;

select last_name, count(*)from sakila.actor group by last_name;
-- me agrupa los apellido y los cuenta 

-- ------------------------------------------------------------
select c.customer_id, c.first_name, c.last_name, sum(p.amount)
from sakila.payment p inner join sakila.customer c on (c.customer_id = p.customer_id) 
group by 1,2,3;
-- agrupo customer id, first name y last name, hizo la suma de los montos que pago los dif clientes

-- ---------------------------------------------------------------------------------------------------
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un MAX de  la columna rental_date 

select * from sakila.rental;
select customer_id, max(rental_date) from sakila.rental group by customer_id;