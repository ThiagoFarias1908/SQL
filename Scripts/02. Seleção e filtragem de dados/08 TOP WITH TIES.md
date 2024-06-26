# Script: TOP WITH TIES

**Descrição:** É utilizada para retornar não apenas os registros que correspondem ao número especificado no TOP, mas também aqueles que têm o mesmo valor no campo usado para ordenação.

**Comando SQL:**
```SQL
SELECT TOP 100 WITH TIES
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
