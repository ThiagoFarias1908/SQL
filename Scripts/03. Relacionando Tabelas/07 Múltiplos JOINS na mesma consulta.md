# Script: INNER JOIN

**Descrição:** É usado para combinar registros de duas tabelas com base em uma condição de junção especificada.

**Comando SQL:**
```SQL
SELECT TOP 100
	S.SalesKey,
	S.SalesAmount,
	S.ProductKey,
	P.ProductName,
	P.ProductSubcategoryKey,
	SC.ProductSubcategoryName,
	PC.ProductCategoryName
FROM FactSales S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory AS SC ON SC.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = SC.ProductCategoryKey
