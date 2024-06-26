# Script: GROUP BY

**Descrição:** É utilizada para agrupar linhas que possuem valores iguais em uma ou mais colunas específicas.

**Comando SQL:**
```SQL
SELECT
	S.ChannelKey,
	S.PromotionKey,
	SUM(S.SalesAmount) AS 'SOMA',
	AVG(S.SalesAmount) AS 'MÉDIA',
	MIN(S.SalesAmount) AS 'MÍNIMO',
	MAX(S.SalesAmount) AS 'MÁXIMO',
	COUNT(S.SalesAmount) AS 'CONTAGEM'
FROM FactSales AS S
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey
