# Script: ROW_NUMBER

**Descrição:** É utilizada para atribuir um número sequencial para cada linha de um conjunto de resultados de acordo com uma ordem especificada.

**Comando SQL:**
```SQL
SELECT 
	T.TrackId,
	T.Name,
	T.AlbumId,
	T.MediaTypeId,
	T.GenreId,
	T.Composer,
	T.Milliseconds,
	T.Bytes,
	T.UnitPrice,
	ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER'
FROM DBO.Track AS T
