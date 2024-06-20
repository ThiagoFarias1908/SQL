USE BikeStores

SELECT
	P.CategoryID,
	COUNT(*) AS TotalProdutos
FROM Production.Product AS P
GROUP BY P.CategoryID

SELECT
	P.CategoryID,
	P.BrandID,
	COUNT(*) AS TotalProdutos
FROM Production.Product AS P
GROUP BY P.BrandID, P.CategoryID;

WITH TOTAL_POR_CATEGORIA AS
(
	SELECT
		P.CategoryID,
		COUNT(*) AS TotalProdutos
	FROM Production.Product AS P
	GROUP BY P.CategoryID
)
SELECT
	P.CategoryID,
	P.BrandID,
	COUNT(*) AS TotalProdutos,
	TC.TotalProdutos AS TotalCategoria,
	COUNT(*) * 100.0 / TC.TotalProdutos AS 'Percent'
FROM Production.Product AS P
INNER JOIN TOTAL_POR_CATEGORIA AS TC ON TC.CategoryID = P.CategoryID
GROUP BY  P.CategoryID, P.BrandID, TC.TotalProdutos;

-- USANDO WINDOW FUNCTION PARA AGREGAR

WITH TOTAL_PRODUTOS_CATEGORIA AS
(
	SELECT
		P.CategoryID,
		P.BrandID,
		COUNT(*) AS TotalProdutos
	FROM Production.Product AS P
	GROUP BY P.BrandID, P.CategoryID
)
SELECT 
	*,
	SUM(TotalProdutos) OVER(PARTITION BY CategoryID) AS TotalBikesCategoria,
	TotalProdutos * 100.0 / SUM(TotalProdutos) OVER(PARTITION BY CategoryID) AS 'Percent'
FROM TOTAL_PRODUTOS_CATEGORIA