# Script: Subqueries + IN

**Descrição:** Uma subconsulta com IN é uma usada para filtrar dados com base em uma lista de valores retornada por uma subconsulta.

```SQL
SELECT
	*
FROM FactSales AS S
WHERE S.ProductKey IN (
	SELECT
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UnitPrice) FROM DimProduct)
)
ORDER BY UnitPrice DESC
