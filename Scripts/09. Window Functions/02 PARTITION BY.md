# Script: PARTITION BY

**Descrição:** Essa cláusula divide o conjunto de resultados em partições de linhas, às quais as funções analíticas são aplicadas de forma independente.

**Comando SQL:**
```SQL
SELECT 
	T.TrackId,
	T.Name,
	T.Composer,
	T.Milliseconds,
	T.Bytes,
	T.UnitPrice,
	ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER',
	ROW_NUMBER() OVER(PARTITION BY Composer ORDER BY Milliseconds DESC) AS 'ROW_NUMBER_PARTITION_BY'
FROM DBO.Track AS T
WHERE COMPOSER IS NOT NULL
