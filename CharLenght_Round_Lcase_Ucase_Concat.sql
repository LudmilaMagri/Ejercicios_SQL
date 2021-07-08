-- CHAR_LENGTH

-- medir la longitud de una cadena
SELECT * FROM category;
SELECT name, CHAR_LENGTH(name) as LongitudCadena from category;
-- numero de letras que tiene el name

select * from city;
select city, char_length(city) as LongitudCiudad from city;

-- ----------------------------------------------------------------------
-- CONCAT
select* from customer;

-- concatenar nombre y apellido
select * , concat(first_name," " ,last_name) as "Nombre Completo" from sakila.customer;

select * from film;
select concat_ws("-", title, description, release_year) from film;
-- separa lo que quiero concatenar por un guion

-- -----------------------------------------------------------------------
-- ROUND
-- redondeo cantidades
select * from payment;
select *, round(amount, 0) from payment;

-- ------------------------------------------------------------------------
-- LCASE Y UCASE
select * from actor;
select *, lcase(concat(first_name, " ", last_name)) as "Nombre Completo" from actor;
-- pone el nombre completo en minuscula

-- ------------------------------------------------------------------------
-- EJERCICIOS

-- Usa la función CHAR_LENGTH() en la tabla customer y calcula la longitud de la columna email.

select * from customer;
select email, char_length(email) as "Longitud email" from customer;

-- Usa la función CONCAT() en la tabla customer y has un concatenado entre first_name, last_name y email.

select * , concat(first_name," ",last_name, " ", email) as "Nombre completo con email" from sakila.customer;

-- Usa la función CONCAT_WS() en la tabla film y has un concatenado de todas las columnas.
select * from film;

select * , concat_ws(" - ", film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update) from film;

-- Consulta la tabla payment y has un group by por customer_id para el promedio de amount, después usa la función ROUND() para redondear a cero decimales el promedio.
select* from sakila.payment;

select customer_id, round(avg(amount),0) from sakila.payment group by customer_id;






