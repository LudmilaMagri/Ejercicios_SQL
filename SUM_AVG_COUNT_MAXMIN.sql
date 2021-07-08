-- SUM

select * from sakila.payment;
select sum(amount) from sakila.payment;

select inventory_id + film_id + store_id from sakila.inventory;

-- --------------------------------------------------------------
-- COUNT

select* from sakila.actor;
select count(first_name) from sakila.actor;
-- --------------------------------------------------------------
-- AVG (promedio)

select * from sakila.payment;
select avg(amount) from sakila.payment;
-- --------------------------------------------------------------
-- MAX y MIN

select * from sakila.film;
select max(length) from sakila.film;
select min(replacement_cost) from sakila.film;
-- --------------------------------------------------------------



