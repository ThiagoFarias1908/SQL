DECLARE @USU�RIO VARCHAR(30)
SET @USU�RIO = 'THIAGO FARIAS'

SELECT @USU�RIO AS NAME

-------------------------------------------

USE ContosoRetailDW

DECLARE @PROD INT
SET @PROD = 782

SELECT TOP 1000
	* 
FROM FactOnlineSales
WHERE ProductKey = @PROD