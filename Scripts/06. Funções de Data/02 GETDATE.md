# Script: GETDATE

**Descrição:** É uma função que retorna a data e hora atuais do sistema onde o servidor de banco de dados está em execução.

**Comando SQL:**
```SQL
SELECT GETDATE() AS DATA_ATUAL

SELECT GETDATE()+10 AS DATA_ATUAL

SELECT YEAR(GETDATE()) AS ANO
SELECT MONTH(GETDATE()) AS MÊS
SELECT DAY(GETDATE()) AS DIA

SELECT
	*
FROM FactOnlineSales
WHERE 
	YEAR(DateKey) = 2007 AND
	MONTH(DateKey) = 12 AND
	DAY(DateKey) = 31
