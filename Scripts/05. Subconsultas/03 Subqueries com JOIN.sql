USE ContosoRetailDW	

--TOP 5 PRODUTOS COM MAIOR VENDA
SELECT TOP 5
	ProductKey,
	SUM(S.SalesAmount) AS SALES
FROM FactSales AS S
GROUP BY S.ProductKey
ORDER BY SALES DESC

--TODAS AS VENDAS DOS PRODUTOS COM MAIOR VENDA (TOP 5)
SELECT
	S2.*
FROM FactSales AS S2
INNER JOIN (
	SELECT TOP 5
		ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales AS S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC
) AS TOP5 ON TOP5.ProductKey = S2.ProductKey

--VALIDAÇÃO TOP 5
SELECT DISTINCT
	VAL.ProductKey
FROM (
	SELECT
		S2.*
	FROM FactSales AS S2
	INNER JOIN (
		SELECT TOP 5
			ProductKey,
			SUM(S.SalesAmount) AS SALES
		FROM FactSales AS S
		GROUP BY S.ProductKey
		ORDER BY SALES DESC
	) AS TOP5 ON TOP5.ProductKey = S2.ProductKey
) AS VAL