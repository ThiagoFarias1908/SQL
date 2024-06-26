# Script: Funções de Agregação Exemplo Prático 2

**Comando SQL:**
```SQL
SELECT
	P.CategoryID,
	P.BrandID,
	P.ProductID,
	P.Name,
	P.ListPrice,
	COUNT(*) OVER() AS Produtos,
	COUNT(*) OVER(PARTITION BY P.BrandID) AS Produtos_Brand,
	SUM(P.ListPrice) OVER() AS Soma_Preços,
	SUM(P.ListPrice) OVER(PARTITION BY P.BrandID) AS Soma_Preços_Brand,
	AVG(P.ListPrice) OVER() AS Preços_AVG,
	MAX(P.ListPrice) OVER() AS Preços_MAX,
	MIN(P.ListPrice) OVER() AS Preços_MIN
FROM Production.Product AS P
WHERE P.CategoryID = 1
ORDER BY P.BrandID
