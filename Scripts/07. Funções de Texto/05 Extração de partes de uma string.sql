SELECT 
	'SQL � mais legal que Power BI',
	SUBSTRING('SQL � mais legal que Power BI', 1, 3) AS SUB1,
	SUBSTRING('SQL � mais legal que Power BI', 22, 9) AS SUB2,
	RIGHT('SQL � mais legal que Power BI', 8) AS 'RIGHT',
	LEFT('SQL � mais legal que Power BI', 3) AS 'LEFT',
	LEFT(RIGHT('SQL � mais legal que Power BI', 8) ,5) AS 'LEFT RIGHT',
	CHARINDEX('mais', 'SQL � mais legal que Power BI') AS 'CHARINDEX',
	LEN('SQL � mais legal que Power BI') AS 'LEN',
	RIGHT('SQL � mais legal que Power BI', LEN('SQL � mais legal que Power BI') - CHARINDEX('mais', 'SQL � mais legal que Power BI')+1)