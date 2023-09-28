USE MusicMansh;
GO

SELECT
	c.customerid, c.FirstName, o.InvoiceId, o.InvoiceDate
FROM Customer AS c
INNER JOIN Invoice AS o ON c.customerid = o.customerid 
WHERE 
	o.InvoiceId >= ''
ORDER BY
	o.InvoiceId DESC, c.customerid ASC;
