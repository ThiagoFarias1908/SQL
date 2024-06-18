USE ContosoRetailDW

--FORMAT (express�o, formato)
--SELECT FORMAT (GETDATE(), 'dd/MM/yyyy')

/*
=========================================================
	FORMATO		||	DESCRI��O
=========================================================
	d			||	Dia com 1 ou 2 d�gitos.
	dd			||	Dia com 2 d�gitos.
	ddd			||	Abrevia��o do dia da semana.
	dddd		||	Nome do dia da semana.
	M			||	M�s com 1 ou 2 d�gitos.
	MM			||	M�s com 2 d�gitos.
	MMM			||	Abrevia��o do nome do m�s.
	MMMM		||	Nome do m�s.
	YY			||	Ano com 2 d�gitos.
	YYYY		||	Ano com 4 d�gitos.
	hh			||	Hora de 1 a 12.
	HH			||	Hora de 0 a 23.
	mm			||	Minutos.
	ss			||	Segundos.
	fff			||	mil�simos de segundo.
=========================================================
*/

SELECT 
	GETDATE(),
	FORMAT(GETDATE(), 'yyyy/MM/dd HH:mm'),
	FORMAT(GETDATE(), 'yyyy-MM-dd HH:mm:ss'),
	FORMAT(GETDATE(), 'yyyy-MM')