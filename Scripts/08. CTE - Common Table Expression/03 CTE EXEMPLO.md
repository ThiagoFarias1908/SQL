# Script: CTE EXEMPLO

**Descrição:** Permite a criação de tabelas temporárias nomeadas que existem somente durante a execução da consulta.

**Comando SQL:**
```SQL
WITH ANÁLISE_PRODUTO(ANO, MÊS, ID_PRODUTO, NOME_PRODUTO, QTDE)
AS
(
	SELECT
		DATEPART(YEAR ,S.DateKey) AS ANO,
		DATEPART(MONTH ,S.DateKey) AS MÊS,
		S.ProductKey AS ID_PRODUTO,
		P.ProductName AS NOME_PRODUTO,
		SUM(S.SalesQuantity) AS QTDE
	FROM FactSales AS S
	INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
	GROUP BY DATEPART(YEAR ,S.DateKey), DATEPART(MONTH ,S.DateKey), S.ProductKey, P.ProductName
)

SELECT TOP 10
	A.*,
	P.*
FROM ANÁLISE_PRODUTO AS A
INNER JOIN DimProduct AS P ON P.ProductKey = A.ID_PRODUTO
ORDER BY QTDE DESC
