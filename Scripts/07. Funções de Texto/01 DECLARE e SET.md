# Script: DECLARE e SET

**Descrição:** DECLARE: É usado para declarar uma variável e especificar seu tipo de dados. SET: É usado para atribuir um valor a uma variável previamente declarada.

**Comando SQL:**
```SQL
DECLARE @USUÁRIO VARCHAR(30)
SET @USUÁRIO = 'THIAGO FARIAS'

SELECT @USUÁRIO AS NAME

-------------------------------------------

DECLARE @PROD INT
SET @PROD = 782

SELECT TOP 1000
	* 
FROM FactOnlineSales
WHERE ProductKey = @PROD
