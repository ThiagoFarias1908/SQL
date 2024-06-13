USE ContosoRetailDW

SELECT TOP 100
	S.SalesKey,
	S.SalesAmount,
	ST.StoreKey,
	ST.StoreName,
	G.ContinentName
FROM FactSales S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography AS G ON G.GeographyKey = ST.GeographyKey