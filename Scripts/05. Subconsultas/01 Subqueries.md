# Script: Subqueries

**Descrição:** É uma consulta aninhada dentro de outra consulta SQL principal. Ela permite que você execute uma consulta dentro do contexto de outra consulta, ajudando a combinar dados de diferentes maneiras ou a aplicar condições mais complexas.

**Comando SQL:**
```SQL
SELECT
	ProductKey,
	UnitPrice
FROM DimProduct
WHERE UnitPrice <= (SELECT AVG(UnitPrice) FROM DimProduct)
ORDER BY UnitPrice DESC
