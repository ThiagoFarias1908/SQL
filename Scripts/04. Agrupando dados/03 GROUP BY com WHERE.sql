USE ContosoRetailDW

SELECT
	S.ChannelKey,
	S.PromotionKey,
	SUM(S.SalesAmount) AS 'SOMA',
	AVG(S.SalesAmount) AS 'M�DIA',
	MIN(S.SalesAmount) AS 'M�NIMO',
	MAX(S.SalesAmount) AS 'M�XIMO',
	COUNT(S.SalesAmount) AS 'CONTAGEM'
FROM FactSales AS S
WHERE 
	S.channelKey IN (1, 2) AND
	S.PromotionKey BETWEEN 1 AND 5
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey