# Script: RANK e DENSE_RANK

**Descrição:** RANK: Atribui um número de classificação para cada registro em um conjunto de resultados, com lacunas possíveis nos números de classificação quando há empates. DENSE_RANK: Também atribui classificações aos registros, mas não há lacunas nos números de classificação em caso de empates.

**Comando SQL:**
```SQL
SELECT 
	T.TrackId,
	T.Name,
	T.AlbumId,
	T.Milliseconds,
	T.UnitPrice,
	ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER',
	RANK() OVER(ORDER BY UnitPrice ASC) AS 'RANK',
	DENSE_RANK() OVER(ORDER BY UnitPrice ASC) AS 'DENSE_RANK'
FROM DBO.Track AS T
