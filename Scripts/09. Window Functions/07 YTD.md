# Script: YTD

**Descrição:** Se refere ao período que vai desde o início do ano até a data atual.

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
	FORMAT(SUM(VENDAS) OVER(PARTITION BY ANO ORDER BY MÊS), 'C0') AS VENDAS_YTD,
	FORMAT(SUM(VENDAS) OVER(PARTITION BY ANO), 'C0') AS VENDAS_TOTAL_ANO
FROM TOTAL_VENDAS
ORDER BY ANO, MÊS
