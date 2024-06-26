# Script: INNER JOIN

**Descrição:** É usado para combinar registros de duas tabelas com base em uma condição de junção especificada.

**Comando SQL:**
```SQL
SELECT TOP 1000
	SalesKey,
	DateKey,
	DimChannel.ChannelKey,
	FactSales.channelKey,
	DimChannel.ChannelName,
	DimChannel.*
FROM FactSales
INNER JOIN DimChannel ON DimChannel.ChannelKey = FactSales.channelKey
