USE Chinook

SELECT 
	T.TrackId,
	T.Name,
	T.AlbumId,
	T.Milliseconds,
	T.GenreId,
	T.UnitPrice,
	ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER',
	RANK() OVER(ORDER BY UnitPrice ASC) AS 'RANK',
	DENSE_RANK() OVER(ORDER BY UnitPrice ASC) AS 'DENSE_RANK',
	NTILE(12) OVER(PARTITION BY GenreId ORDER BY UnitPrice ASC) AS 'NTILE'
FROM DBO.Track AS T