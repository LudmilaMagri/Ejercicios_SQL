SELECT id as Numero,
	nombre as Categoria
	FROM dbo.Categorias



-- Devolver Apellido, Nombre y Fecha de Nac de todos los clientes del sistema
-- Apellido y Nombre en una unica columna llamada Nombre Completo separado sus valores por una coma
SELECT Apellido + ', ' + Nombre as 'Nombre Completo',
	FechaNacimiento
	FROM dbo.Clientes

-- Devolver Nombre, Costo, Precio,
-- Costo con descuento del 30%,
-- Ganancia si el costo tiene un descuento del 30%,
-- Ganancia con costo regular
-- Ganancia con costo regular y un 10% de descuento

SELECT Nombre
	, Costo
	, Precio
	, (Costo * 0.30) + Costo AS 'Costo con descuento'
	, (Precio - (Costo - (Costo * 30) / 100)) AS 'Ganancia con 30% descontado'
	, (Precio - Costo) AS 'Ganancia Regular'
	, (Precio - (Costo - (Costo * 10) / 100)) AS 'Ganancia con 10% descontado'

	FROM dbo.Productos


--Devolver ClienteId y fecha de todas las Ordenes realizadas hasta Octubre del año 2017

SELECT ClienteId
	,	Fecha
	FROM dbo.Ordenes
	WHERE Fecha <= '20171031'

--Devolver Nombre, Codigo y NombreLocal renombrados como "Pais", "Abreviatura" y "Nomenclatura Local"
-- de todos los paises de la region "Polynesia"


SELECT Nombre AS Pais
	, Codigo AS Abreviatura
	, NombreLocal AS 'Nomenclatura Local'
	FROM dbo.Paises
	WHERE Region = 'Polynesia'


select * from ciudades

-- Devolver en una sola columna Nombre, Apellido y Direccion de todos los clientes de la ciudad Bari 
-- Formato: "Nombre: nombre, Apellido: apellido, Direccion: Direccion

SELECT  'Nombre: ' + Nombre + ', Apellido:' + Apellido + ', Direccion: ' + Direccion as Cliente
	FROM Clientes
	WHERE CiudadId = 1473

-- Devolver todos los productos cuyo precio sea mayor que el costo incrementado en un 40% o la ganancia que sea de al menos 25

SELECT *, Costo * 1.4 as CostoIncrementado
FROM Productos
WHERE Precio > Costo * 1.4
OR (Precio - Costo) > 25


--Devolver todos los clientes cuyo apellido no tenga la letra 'r' en la tercera posicion y su penultima posicion sea la letra 'e'

SELECT * 
FROM Clientes
WHERE Apellido NOT LIKE '___r%'
	AND  Apellido LIKE '%e_'


SELECT * 
FROM Productos p 	
INNER JOIN Categorias c ON p.CategoriaId  = c.Id

--Devolver nombre de Proveedores, Precio y vosto de productos cuya ganancia sea mayor a 20

select * from Proveedores
select * from Productos

SELECT q.Nombre,
	Costo,
	Precio
	FROM Productos p
	INNER JOIN Proveedores q ON  p.Id = q.Id
	WHERE Precio - Costo > 20

--Devolver Fecha, Apellido y Nombre del Cliente y nombre del producto de todos los clientes que hayan comprado productos entre 2016 y 2019 inclusive
-- ordenando primero por mas reciente y segundo por apellido A-Z


select * from Clientes
select * from productos
select * from Ordenes


SELECT Fecha,
		Apellido,
		c.Nombre,
		p.Nombre
	FROM Ordenes  
	INNER JOIN Clientes c ON ClienteId = c.Id
	INNER JOIN Productos p ON ProductoId = p.Id
	WHERE Fecha BETWEEN '20160101' AND '20191231'	
	ORDER BY Fecha DESC, Apellido 


-- Devolver Nombre y Apellido de Clientes que:
--  Hayan realizado alguna orden fuera del año 2018

SELECT Nombre,
		Apellido
FROM Clientes c 
	LEFT JOIN  Ordenes  ON ClienteId = c.Id
	WHERE Fecha NOT BETWEEN '20180101' AND '20181231'