# Script: INNER JOIN

**Descrição:** É usado para combinar registros de duas tabelas com base em uma condição de junção especificada.

**Comando SQL:**
```SQL
SELECT TOP 100
	S.SalesKey,
	S.SalesAmount,
	ST.StoreKey,
	ST.StoreName,
	G.ContinentName
FROM FactSales S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography AS G ON G.GeographyKey = ST.GeographyKey
