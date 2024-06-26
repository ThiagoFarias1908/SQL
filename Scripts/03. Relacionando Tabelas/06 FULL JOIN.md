# Script: FULL JOIN

**Descrição:** Ele retorna todos os registros quando há uma correspondência na tabela à esquerda, na tabela à direita ou em ambas.

**Comando SQL:**
```SQL
SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
FULL JOIN FactSales AS S ON S.ProductKey = P.ProductKey
ORDER BY 3
