USE MusicMansh;
GO


SELECT N'The unit price for the ' + Name + N' is ' + CAST(unitprice AS NVARCHAR(10)) + N' $.' AS productdesc
FROM Track;

SELECT Invoiceid, Invoicedate, COALESCE(BillingCountry, 'No region') AS shipregion
FROM Invoice 
WHERE 
	Invoicedate >= CONVERT(DATETIME, '4/1/2007', 101) 
	AND Invoicedate <= CONVERT(DATETIME, '11/30/2007', 101)

SELECT Invoiceid, Invoicedate, COALESCE(BillingCountry, 'No region') AS shipregion
FROM Invoice 
WHERE 
	Invoicedate >= PARSE('4/1/2017' AS DATETIME USING 'en-US')
	AND Invoicedate <= PARSE('11/30/2019' AS DATETIME USING 'en-US')
