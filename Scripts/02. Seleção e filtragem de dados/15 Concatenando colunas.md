# Script: Concatenando colunas

**Descrição:** A concatenação de colunas refere-se ao processo de combinar o conteúdo de duas ou mais colunas de uma tabela em uma única string.

**Comando SQL:**
```SQL
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
