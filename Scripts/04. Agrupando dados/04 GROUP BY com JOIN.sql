USE ContosoRetailDW

SELECT
	S.ChannelKey,
	C.ChannelName,
	S.PromotionKey,
	P.PromotionName,
	SUM(S.SalesAmount) AS 'SOMA',
	AVG(S.SalesAmount) AS 'M�DIA',
	MIN(S.SalesAmount) AS 'M�NIMO',
	MAX(S.SalesAmount) AS 'M�XIMO',
	COUNT(S.SalesAmount) AS 'CONTAGEM'
FROM FactSales AS S
INNER JOIN DimChannel AS C ON C.ChannelKey = S.ChannelKey
INNER JOIN DimPromotion AS P ON P.PromotionKey = S.PromotionKey
WHERE 
	S.channelKey IN (1, 2) AND
	S.PromotionKey BETWEEN 1 AND 5
GROUP BY S.channelKey, C.ChannelName, S.PromotionKey, P.PromotionName
ORDER BY S.channelKey, C.ChannelName, S.PromotionKey, P.PromotionName