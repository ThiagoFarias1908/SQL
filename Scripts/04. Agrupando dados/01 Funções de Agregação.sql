USE ContosoRetailDW
-- SELECT
SELECT
	SalesAmount
FROM FactSales

--SOMANDO
SELECT
	SUM(SalesAmount) AS SOMA
FROM FactSales

--MÉDIA
SELECT
	AVG(SalesAmount) AS MÉDIA
FROM FactSales

--CONTAGEM
SELECT
	COUNT(SalesAmount) AS QTD_LINHAS
FROM FactSales

--MÁXIMO
SELECT
	MAX(SalesAmount) AS MÁXIMO
FROM FactSales

--MÍNIMO
SELECT
	MIN(SalesAmount) AS MÍNIMO
FROM FactSales

--MÉDIA V2
SELECT
	SUM(SalesAmount)/COUNT(SalesAmount) AS MÉDIA_V2
FROM FactSales