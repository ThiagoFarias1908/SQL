# Script: IS NULL

**Descrição:** É utilizada para verificar se um valor em uma coluna é nulo.

**Comando SQL:**
```SQLSELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer
WHERE 
	MaritalStatus IS NULL
