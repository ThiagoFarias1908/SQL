# Script: LAG e LEAD

**Descrição:** LAG: Retorna o valor de uma coluna em uma linha anterior à linha atual em um conjunto de resultados. LEAD: Retorna o valor de uma coluna em uma linha posterior à linha atual em um conjunto de resultados.

**Comando SQL:**
```SQL
WITH TOTAL_VENDAS(ANO, MÊS, VENDAS) AS
(
	SELECT
		DATEPART(YEAR, S.DateKey) AS ANO,
		DATEPART(MONTH, S.DateKey) AS MÊS,
		SUM(S.SalesAmount) AS VENDAS
	FROM FactOnlineSales AS S
	GROUP BY DATEPART(YEAR, S.DateKey), DATEPART(MONTH, S.DateKey)
)
SELECT
	ANO, MÊS, 
	FORMAT(VENDAS, 'C0') AS 'VENDAS',
	FORMAT(LAG(VENDAS, 1, 0) OVER(PARTITION BY ANO ORDER BY ANO, MÊS ASC), 'C0') AS MÊS_ANTERIOR,
	FORMAT(LEAD(VENDAS, 1, 0) OVER(PARTITION BY ANO ORDER BY ANO, MÊS ASC), 'C0') AS MÊS_POSTERIOR
FROM TOTAL_VENDAS
ORDER BY ANO, MÊS

--

USE BikeStores;

SELECT
	C.CustomerID,
	C.LastName,
	C.FirstName,
	O.OrderID,
	LAG(O.OrderID, 1, O.OrderID) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderID ASC) ÚLTIMA_ORDER
FROM Sales.Customer AS C
INNER JOIN Sales.[Order] AS O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerID
