USE ContosoRetailDW

--Buscando nome completo
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron Painter'

--Cont�m Paul em qualquer parte da string
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%Paul%'

--Termina com Allen
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%Allen'

--Come�a com Michael
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Michael%'

--Come�a com Nur__
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Nur__%'

--Termina com Nev__
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%nev__'

--Cont�m com gon[zs]ale[zs] 's' ou 'z'
SELECT 
	FirstName + ' ' + LastName AS 'FullName'
	,*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%gon[zs]ale[zs]%'