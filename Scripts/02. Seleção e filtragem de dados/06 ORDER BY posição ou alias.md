# Script: ORDER BY posição ou alias

**Descrição:** É usada para classificar os resultados de uma consulta de acordo com uma ou mais colunas em uma ordem específica, que pode ser ascendente (padrão) ou descendente. 

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
--ORDER BY Gender DESC, MaritalStatus DESC, TotalChildren DESC
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC
