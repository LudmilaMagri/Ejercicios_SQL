 select f.title, f.description, f.release_year, l.name from sakila.film f inner join sakila.language l on (f.language_id = l.language_id);


-- que muestre direccion con la ciudad
select* from sakila.address;
select* from sakila.city;

select a.address as Direccion, c.city as Ciudad
from sakila.address a inner join sakila.city c on (a.city_id = c.city_id);

