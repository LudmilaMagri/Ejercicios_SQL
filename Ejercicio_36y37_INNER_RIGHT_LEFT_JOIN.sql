-- Consulta la tabla address de la base de datos sakila.
-- Realiza un INNER JOIN con las tablas city y country
-- Mostrar las columnas address, city, country

select * from sakila.address; 

 select a.address, c.city, co.country
 from sakila.address a inner join sakila.city c on (a.city_id = c.city_id) 
 inner join sakila.country co on (c.country_id = co.country_id);
 
-- -------------------------------------------------------
-- Consulta la tabla customer de la base de datos sakila.
-- Realiza un LEFT JOIN con las tablas store y address
-- Mostrar las columnas first_name, address, store_id

select * from sakila.store;
select c.first_name, a.address, s.store_id
from sakila.customer c left join sakila.store s on (c.store_id = s.store_id) left join sakila.address a on (c.address_id = a.address_id);

-- -------------------------------------------------------
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un INNER JOIN con la tabla staff
-- Mostrar las columnas rental_id, first_name

select * from sakila.rental;
select r.rental_id, s.first_name from sakila.rental r inner join sakila.staff s on (r.staff_id = s.staff_id);





