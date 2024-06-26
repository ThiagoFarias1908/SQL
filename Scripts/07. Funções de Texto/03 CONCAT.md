# Script: CONCAT

**Descrição:** É usada para concatenar duas ou mais strings em uma única string.

**Comando SQL:**
```SQL
DECLARE @USER VARCHAR(30)
SET @USER = ' Thiago Farias '

DECLARE @USER2 VARCHAR(30)
SET @USER2 = ' Thiago Thiago '

SELECT @USER + @USER2 AS NAMES

SELECT CONCAT('THIAGO ', @USER2, 'FARIAS', @USER)

SELECT CONCAT('THIAGO', ' ', 'FARIAS')
