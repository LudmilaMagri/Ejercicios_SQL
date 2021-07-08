-- Consulta la tabla film_text de la base de datos sakila.
-- Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT

 select * from sakila.film_text where title in ('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');

-- Consulta la tabla city de la base de datos sakila.
-- Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.

select * from sakila.city where city in ('Chiayi', 'Dongying', 'Fukuyama', 'Kilis');
