USE BikeStores

SELECT
	P.CategoryID,
	P.BrandID,
	P.ProductID,
	P.Name,
	P.ListPrice,
	COUNT(*) OVER() AS Produtos,
	COUNT(*) OVER(PARTITION BY P.BrandID) AS Produtos_Brand,
	SUM(P.ListPrice) OVER() AS Soma_Pre�os,
	SUM(P.ListPrice) OVER(PARTITION BY P.BrandID) AS Soma_Pre�os_Brand,
	AVG(P.ListPrice) OVER() AS Pre�os_AVG,
	MAX(P.ListPrice) OVER() AS Pre�os_MAX,
	MIN(P.ListPrice) OVER() AS Pre�os_MIN
FROM Production.Product AS P
WHERE P.CategoryID = 1
ORDER BY P.BrandID