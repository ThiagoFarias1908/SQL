# Script: Subqueries + NOT IN

**Descrição:** Uma subconsulta com NOT IN é usada para filtrar resultados com base em valores que não estão presentes em outra consulta.

**Comando SQL:**
```SQL
SELECT
	*
FROM FactSales AS S
WHERE S.ProductKey NOT IN (
	SELECT
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UnitPrice) FROM DimProduct)
)
ORDER BY UnitPrice ASC
