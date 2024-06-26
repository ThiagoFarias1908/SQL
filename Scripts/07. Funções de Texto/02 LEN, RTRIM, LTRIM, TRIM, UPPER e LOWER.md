# Script: LEN, RTRIM, LTRIM, TRIM, UPPER e LOWER

**Descrição:** LEN: Retorna o comprimento de uma string. RTRIM: Remove espaços em branco à direita de uma string. LTRIM: Remove espaços em branco à esquerda de uma string. TRIM: Remove espaços em branco tanto à direita quanto à esquerda de uma string. UPPER: Converte todos os caracteres de uma string para maiúsculas. LOWER: Converte todos os caracteres de uma string para minúsculas. 

**Comando SQL:**
```SQL
DECLARE @USER VARCHAR(30)
SET @USER = ' Thiago Farias '

SELECT @USER AS NAME

SELECT
	@USER,
	LEN(@USER),
	RTRIM(@USER),
	LTRIM(@USER),
	TRIM(@USER),
	UPPER(TRIM(@USER)),
	LOWER(TRIM(@USER)),
	UPPER(LOWER(TRIM(@USER)))
