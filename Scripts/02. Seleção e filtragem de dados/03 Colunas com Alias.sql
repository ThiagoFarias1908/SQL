USE ContosoRetailDW

SELECT
	StoreKey AS 'Código da Loja',
	,toreName AS 'Nome da Loja',
	EmployeeCount AS 'Quantidade de Funcionários'
FROM DimStore
