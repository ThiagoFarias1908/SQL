# Script: AND e OR

**Descrição:** AND: Ele retorna verdadeiro se todas as condições especificadas forem verdadeiras. OR: Ele retorna verdadeiro se pelo menos uma das condições for verdadeira.

**Comando SQL:**
```SQL
SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer
WHERE 
	Education = 'High School'
	AND NumberChildrenAtHome >= 1
	AND NOT MaritalStatus = 'M'
	AND (TotalChildren = 3 OR TotalChildren = 4)
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
