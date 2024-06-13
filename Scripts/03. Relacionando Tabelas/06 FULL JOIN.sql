USE ContosoRetailDW

SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
FULL
JOIN FactSales AS S ON S.ProductKey = P.ProductKey
ORDER BY 3