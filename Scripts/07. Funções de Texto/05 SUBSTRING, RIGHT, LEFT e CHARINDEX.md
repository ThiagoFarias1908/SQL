# Script: SUBSTRING, RIGHT, LEFT e CHARINDEX

**Descrição:** SUBSTRING: Extrai uma parte de uma string com base em uma posição inicial e um número de caracteres. RIGHT: Retorna um número especificado de caracteres do final de uma string. LEFT: Retorna um número especificado de caracteres do início de uma string. CHARINDEX: Retorna a posição de uma substring dentro de uma string maior.

**Comando SQL:**
```SQL
SELECT 
	'SQL é mais legal que Power BI',
	SUBSTRING('SQL é mais legal que Power BI', 1, 3) AS SUB1,
	SUBSTRING('SQL é mais legal que Power BI', 22, 9) AS SUB2,
	RIGHT('SQL é mais legal que Power BI', 8) AS 'RIGHT',
	LEFT('SQL é mais legal que Power BI', 3) AS 'LEFT',
	LEFT(RIGHT('SQL é mais legal que Power BI', 8) ,5) AS 'LEFT RIGHT',
	CHARINDEX('mais', 'SQL é mais legal que Power BI') AS 'CHARINDEX',
	LEN('SQL é mais legal que Power BI') AS 'LEN',
	RIGHT('SQL é mais legal que Power BI', LEN('SQL é mais legal que Power BI') - CHARINDEX('mais', 'SQL é mais legal que Power BI')+1)
