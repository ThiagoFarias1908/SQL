# Script: GROUP BY + WHERE

**Descrição:** É fundamental para filtrar dados e realizar operações agregadas.

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
WHERE 
	S.channelKey IN (1, 2) AND
	S.PromotionKey BETWEEN 1 AND 5
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey
