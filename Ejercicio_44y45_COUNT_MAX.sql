-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un COUNT de  la columna rental_id

select * from sakila.rental; 
select count(rental_id) from sakila.rental; 

-- Consulta la tabla payment de la base de datos sakila.
-- Realiza un MAX de  la columna amount

select * from sakila.payment;
select max(amount) from sakila.payment;