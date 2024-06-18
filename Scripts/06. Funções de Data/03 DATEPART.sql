USE ContosoRetailDW

--DATEPART (parte, data)
/*
	===================================================================
		Valor			||	Parte Retornada				||	Abreviação
	===================================================================
		year			||	Ano							||	yy, yyyy
		quarter			||	Trimestre (1/4 de ano)		||	qq, q
		month			||	Mês							||	mm, m
		dayofyear		||	Dia do ano					||	dy, y
		day				||	Dia							||	dd, d
		week			||	Semana						||	wk, ww
		weekday			||	Dia da semana				||	dw
		hour			||	Hora						||	hh
		minute			||	Minuto						||	mi, n
		second			||	Segundo						||	ss, s
	===================================================================
*/

SELECT TOP 100
	S.DateKey,
	DATEPART(YEAR, S.DateKey) AS ANO,
	DATEPART(MONTH, S.DateKey) AS MÊS,
	DATEPART(DAY, S.DateKey) AS DIA,
	DATEPART(DAYOFYEAR, S.DateKey) AS DIADOANO,
	DATEPART(WEEKDAY, S.DateKey) AS DIADASEMANA
FROM FactOnlineSales AS S
ORDER BY S.DateKey DESC

SELECT DATEPART(WEEKDAY, GETDATE()+3) AS DIADASEMANA

SELECT TOP 100 
	*
FROM FactOnlineSales
WHERE 
	DATEPART(DAY, DateKey) = 31 AND
	DATEPART(MONTH, DateKey) = 12 AND
	DATEPART(YEAR, DateKey) = 2009