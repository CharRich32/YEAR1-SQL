USE MusicMansh;
GO

SELECT 
	c.customerid, c.FirstName, c.Phone
FROM Customer AS c
LEFT OUTER JOIN Invoice AS o ON c.customerid = o.customerid;