# Script: LEFT JOIN

**Descrição:** É um tipo de junção entre duas tabelas que retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita.

**Comando SQL:**
```SQL
SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
LEFT JOIN FactSales AS S ON S.ProductKey = P.ProductKey
ORDER BY 3
