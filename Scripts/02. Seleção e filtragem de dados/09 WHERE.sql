USE ContosoRetailDW

SELECT TOP 100 WITH TIES
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer
WHERE Education = 'High School'
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
