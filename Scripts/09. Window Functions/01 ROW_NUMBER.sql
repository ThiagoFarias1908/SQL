USE Chinook

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
