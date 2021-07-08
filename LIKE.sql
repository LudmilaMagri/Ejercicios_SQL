select * from sakila.actor where first_name like 'A%' and last_name like 'H%';

select * from sakila.actor where first_name like '%NE%'; 
-- NE en cualquier posicion
select * from sakila.actor where first_name like '%NE%' and last_name like '%RO%';
-- NE y RO en cualquier posicion 

select * from sakila.actor where first_name like 'C%E' and last_name like 'M%';
-- que empiece con C y termine con E 