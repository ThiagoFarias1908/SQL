# Script: TOP

**Descrição:** É utilizada para limitar o número de linhas retornadas por uma consulta.

**Comando SQL:**
```SQL
SELECT TOP 100
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
