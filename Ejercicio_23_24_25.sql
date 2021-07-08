-- Consulta la tabla payment de la base de datos sakila.
-- Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.

select * from sakila.payment where (amount between 2.99 and 4.99) and staff_id = 2 and customer_id in (1, 2);

-- Consulta la tabla address de la base de datos sakila.
-- Filtra la información donde city_id esté entre 300 y 350,  

select * from sakila.address where city_id between 300 and 350;

-- Consulta la tabla film de la base de datos sakila.
-- Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.

select * from sakila.film where (rental_rate between 0.99 and 2.99) and length<= 50 and replacement_cost <20; 