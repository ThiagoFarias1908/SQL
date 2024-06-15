USE ContosoRetailDW

SELECT
	S.ProductKey,
	SUM(S.SalesQuantity) AS 'QTD_TOTAL'
FROM FactSales AS S
WHERE S.DateKey >= '2009-01-01'
GROUP BY S.ProductKey
HAVING SUM(S.SalesQuantity) BETWEEN 1500 AND 1600
ORDER BY QTD_TOTAL DESC