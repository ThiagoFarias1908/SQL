# Script: NOT

**Descrição:** É usado para negar uma condição.

**Comando SQL:**
```SQL
SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education,
	BirthDate
FROM DimCustomer
WHERE 
	MaritalStatus IS NOT NULL
	AND NOT TotalChildren BETWEEN 2 AND 4
	AND NOT BirthDate BETWEEN '1950-01-01' AND '1960-01-02'
	AND NumberChildrenAtHome NOT IN (0, 1, 5)
ORDER BY NumberChildrenAtHome DESC
