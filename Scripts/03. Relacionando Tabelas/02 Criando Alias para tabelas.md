# Script: AS

**Descrição:** É utilizada para atribuir um alias a uma tabela ou a uma coluna em uma consulta.

**Comando SQL:**
```SQL
SELECT TOP 1000
	S.SalesKey,
	S.DateKey,
	C.ChannelKey,
	S.channelKey,
	C.ChannelName,
	C.*
FROM FactSales AS S 
INNER JOIN DimChannel C ON C.ChannelKey = S.channelKey
