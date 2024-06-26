# Script: CROSS JOIN

**Descrição:** É um tipo de junção em SQL que produz o produto cartesiano de duas tabelas. Isso significa que ele combina cada linha de uma tabela com cada linha de outra tabela.

**Comando SQL:**
```SQL
SELECT DISTINCT
	P.ProductKey,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
CROSS JOIN FactSales AS S
