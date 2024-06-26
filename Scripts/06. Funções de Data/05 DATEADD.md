# Script: DATEADD

**Descrição:** É utilizada para adicionar um intervalo de tempo especificado a uma data. 

**Comando SQL:**
```SQL
--DATEADD(parte, número, data)
SELECT 
	GETDATE() AS HOJE,
	DATEADD(DAY, 10, GETDATE()) AS DIA,
	DATEADD(MONTH, 1, GETDATE()) AS UM_MÊS,
	DATEADD(MONTH, -12, GETDATE()) AS MENOS_DOZE_MÊS,
	DATEADD(YEAR, 1, GETDATE()) AS UM_ANO,
	DATEADD(HOUR, 1, GETDATE()) AS UMA_HORA
