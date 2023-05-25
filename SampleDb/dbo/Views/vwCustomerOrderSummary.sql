
--create a handy view summarizing customer orders
CREATE VIEW vwCustomerOrderSummary WITH SCHEMABINDING AS
	SELECT
	c.CustomerId
,	c.FirstName
,	c.LastName
--,	c.CustomerRanking
,	ISNULL(SUM(oh.OrderTotal),0) AS OrderTotal

	FROM dbo.Customer AS c
	LEFT OUTER JOIN dbo.OrderHeader AS oh 
	ON c.CustomerId = oh.CustomerId

	GROUP BY 
	c.CustomerId
,	c.FirstName
,	c.LastName
--,	c.CustomerRanking
