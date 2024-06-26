# Script: EOMONTH

**Descrição:** É utilizada para retornar a data do último dia do mês especificado a partir de uma data fornecida.

**Comando SQL:**
```SQL
-- END OF MONTH
SELECT EOMONTH(GETDATE())

-- ADICIONANDO 01 MÊS
SELECT
	GETDATE(),
	EOMONTH(GETDATE()), -- END OF MONTH
	EOMONTH(GETDATE(), 1), --ADICIONANDO UM MÊS
	EOMONTH(GETDATE(), -1) --SUBTRAINDO UM MÊS
