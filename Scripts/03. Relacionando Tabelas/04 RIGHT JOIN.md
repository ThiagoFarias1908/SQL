# Script: RIGHT JOIN

**Descrição:** É um tipo de junção entre duas tabelas que retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda.

**Comando SQL:**
```SQL
SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
RIGHT JOIN FactSales AS S ON S.ProductKey = P.ProductKey
ORDER BY 3
