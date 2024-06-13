USE ContosoRetailDW

SELECT
	EmailAddress
	,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned AS 'Quantidade Carros'
	,Education
FROM DimCustomer
WHERE 
	Education = 'High School'
	AND NumberChildrenAtHome >= 1
	AND NOT MaritalStatus = 'M'
	AND (TotalChildren = 3 OR TotalChildren = 4)
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC