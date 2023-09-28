USE MusicMansh;
GO


SELECT TOP (10)
	InvoiceId, Invoicedate
FROM Invoice
ORDER BY Invoicedate DESC;


SELECT 
	Invoiceid, Invoicedate
FROM Invoice
ORDER BY Invoicedate DESC
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;



SELECT TOP (10) PERCENT
	 Name, unitprice
FROM Track
ORDER BY unitprice DESC;