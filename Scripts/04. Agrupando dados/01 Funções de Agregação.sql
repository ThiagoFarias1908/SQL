USE ContosoRetailDW
-- SELECT
SELECT
	SalesAmount
FROM FactSales

--SOMANDO
SELECT
	SUM(SalesAmount) AS SOMA
FROM FactSales

--M�DIA
SELECT
	AVG(SalesAmount) AS M�DIA
FROM FactSales

--CONTAGEM
SELECT
	COUNT(SalesAmount) AS QTD_LINHAS
FROM FactSales

--M�XIMO
SELECT
	MAX(SalesAmount) AS M�XIMO
FROM FactSales

--M�NIMO
SELECT
	MIN(SalesAmount) AS M�NIMO
FROM FactSales

--M�DIA V2
SELECT
	SUM(SalesAmount)/COUNT(SalesAmount) AS M�DIA_V2
FROM FactSales