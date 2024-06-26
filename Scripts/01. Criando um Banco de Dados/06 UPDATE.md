# Script: UPDATE
**Descrição:** É usado para modificar registros existentes em uma tabela de banco de dados.

**Comando SQL:**
```SQL
UPDATE CLIENTES
SET EMAIL = 'CONTATO@THIAGO.COM.BR'
WHERE ID_CLIENTE = 1

UPDATE CLIENTES
SET 
	NOME = 'THIAGO FARIAS 2',
	EMAIL = 'THIAGOFARIAS2@THIAGO.COM.BR'
WHERE
	ID_CLIENTE = 2
