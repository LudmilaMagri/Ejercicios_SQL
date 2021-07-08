-- select * from sakila.customer where first_name in ('mary', 'patricia')

-- select * from sakila.film where special_features in ('trailers', 'deleted scenes') and rating in ('G', 'NC-17');

select * from sakila.category where name not in ('Action', 'Animation')
-- muestra info donde no esta ni action ni animation