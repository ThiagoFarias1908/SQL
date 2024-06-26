# Script: DATENAME

**Descrição:** Retorna uma string que representa uma parte específica da data, como o nome do mês, o nome do dia da semana, ou o nome do trimestre.

**Comando SQL:**
```SQL
SELECT TOP 100
	S.DateKey,
	DATENAME(DAY, S.DateKey) AS DIA,
	DATENAME(WEEKDAY, S.DateKey) AS DIA_SEMANA_DATENAME,
	DATEPART(WEEKDAY, S.DateKey) AS DIA_SEMANA_DATEPART,
	DATENAME(MONTH, S.DateKey) AS MÊS,
	DATEPART(MONTH, S.DateKey) AS MÊS
FROM FactOnlineSales AS S
WHERE DATENAME(WEEKDAY, S.DateKey) = 'Sexta-Feira'
ORDER BY S.DateKey DESC
