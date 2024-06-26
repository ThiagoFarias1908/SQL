# Script: Diferença prática Subquery e CTE

**Descrição:** As subqueries são usadas para lógica de consulta simples e localizada, enquanto CTEs são usados para consultas mais complexas que se beneficiam da organização e reutilização da lógica de consulta.

**Comando SQL:**
```SQL
--- SUBQUERY / SUB CONSULTA

SELECT
	AVG(SQ.VENDAS)
FROM(
	SELECT
		DATEPART(YEAR ,S.DateKey) AS ANO,
		DATEPART(MONTH ,S.DateKey) AS MÊS,
		SUM(S.SalesAmount) AS VENDAS
	FROM FactSales AS S
	GROUP BY DATEPART(YEAR ,S.DateKey), DATEPART(MONTH ,S.DateKey)
) AS SQ

--- CTE - COMMON TABLE EXPRESSION

WITH SALES_MONTH_AVG(ANO, MÊS, VENDAS)
AS
(
	SELECT
		DATEPART(YEAR ,S.DateKey) AS ANO,
		DATEPART(MONTH ,S.DateKey) AS MÊS,
		SUM(S.SalesAmount) AS VENDAS
	FROM FactSales AS S
	GROUP BY DATEPART(YEAR ,S.DateKey), DATEPART(MONTH ,S.DateKey)
)
SELECT
	AVG(SALES_MONTH_AVG.VENDAS) MEDIA_MENSAL
FROM SALES_MONTH_AVG
