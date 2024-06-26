# Script: ORDER BY múltiplas colunas

**Descrição:** É usada para classificar os resultados de uma consulta de acordo com uma ou mais colunas em uma ordem específica, que pode ser ascendente (padrão) ou descendente. 

**Comando SQL:**
```SQL
SELECT 
	* 
FROM DimCustomer
ORDER BY Gender DESC, MaritalStatus DESC, TotalChildren DESC
