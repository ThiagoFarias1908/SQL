DECLARE @USUÁRIO VARCHAR(30)
SET @USUÁRIO = 'THIAGO FARIAS'

SELECT @USUÁRIO AS NAME

-------------------------------------------

USE ContosoRetailDW

DECLARE @PROD INT
SET @PROD = 782

SELECT TOP 1000
	* 
FROM FactOnlineSales
WHERE ProductKey = @PROD