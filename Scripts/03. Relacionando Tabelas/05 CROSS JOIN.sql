USE ContosoRetailDW

SELECT DISTINCT
	P.ProductKey,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
CROSS JOIN FactSales AS S