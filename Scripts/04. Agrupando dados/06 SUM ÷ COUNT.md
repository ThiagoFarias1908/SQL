# Script: SUM ÷ COUNT

**Descrição:** É usada para calcular a média de valores em uma coluna específica de uma tabela.

**Comando SQL:**
```SQL
SELECT
	SUM(SalesAmount)/COUNT(SalesAmount) AS MÉDIA_V2
FROM FactSales
