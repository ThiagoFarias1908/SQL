# Script: DATEDIFF

**Descrição:** É usada em SQL para calcular a diferença entre duas datas.

**Comando SQL:**
```SQL
--DATEDIFF(intervalo, data_inicial, data_final)

SELECT DATEDIFF(DAY, '2023-07-10', GETDATE()) AS DIA
SELECT DATEDIFF(MONTH, '2023-06-10', GETDATE()) AS MÊS
SELECT DATEDIFF(YEAR, '2002-06-10', GETDATE()) AS ANO

SELECT DISTINCT TOP 100
	S.DateKey,
	GETDATE(),
	DATEDIFF(DAY, S.DateKey, GETDATE())
FROM FactOnlineSales AS S
ORDER BY 1 DESC
