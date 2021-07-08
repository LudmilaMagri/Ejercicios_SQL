-- Consulta la tabla payment de la base de datos sakila.
-- Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.

select * from sakila.payment where customer_id = 36 and amount > 0.99 and staff_id = 1;

-- Consulta la tabla rental de la base de datos sakila.
-- Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.

select* from sakila.rental where not staff_id = 1 and customer_id >250 and inventory_id <100; 