# Script: INSERT

**Descrição:** É usada para adicionar novas linhas em uma tabela.

**Comando SQL:**
```SQL
INSERT INTO CLIENTES
(
	[ID_CLIENTE],
	[NOME],
	[DATA_CADASTRO],
	[EMAIL]
)
VALUES
(
	1,
	'THIAGO FARIAS',
	GETDATE(),
	'CONTATO@THIAGO.COM.BR'
)
