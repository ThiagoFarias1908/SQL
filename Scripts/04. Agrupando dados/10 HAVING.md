# Script: HAVING

**Descrição:** É utilizada para filtrar registros de um grupo resultante com base em uma condição.

**Comando SQL:**
```SQL
SELECT
	S.ProductKey,
	SUM(S.SalesQuantity) AS 'QTD_TOTAL'
FROM FactSales AS S
WHERE S.DateKey >= '2009-01-01'
GROUP BY S.ProductKey
HAVING SUM(S.SalesQuantity) BETWEEN 1500 AND 1600
ORDER BY QTD_TOTAL DESC
