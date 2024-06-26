# Script: REPLACE

**Descrição:** É utilizada para substituir ocorrências de uma substring em uma string por outra substring.
**Comando SQL:**
```SQL
SELECT
	' SQL para analise de dados',
	REPLACE(' SQL para analise de dados', 'analise', 'análise'),
	REPLACE(TRIM(' SQL para analise de dados'), ' de dados', '')
