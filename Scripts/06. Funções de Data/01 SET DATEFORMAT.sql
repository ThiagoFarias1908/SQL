USE ContosoRetailDW

--01 - SET DATEFORMAT
/*
	MDY Mês, dia e ano. (Formato padrão americano)
	DMY Dia, mês e ano.
	YMD Ano, mês e dia.
	YDM Ano, dia e mês.
	MYD Mês, ano e dia.
	DYM Dia, ano e mês.
*/

SET DATEFORMAT YMD

SELECT DISTINCT
	S.DateKey
FROM FactOnlineSales AS S
WHERE S.DateKey BETWEEN '2007-12-01' AND '2007-12-31'
