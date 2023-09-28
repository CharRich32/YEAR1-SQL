USE MusicMansh;
GO

SELECT 
	customerid, Invoiceid, Invoicedate
FROM Invoice
ORDER BY Invoicedate, Invoiceid
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;


SELECT 
	customerid, Invoiceid, Invoicedate
FROM Invoice
ORDER BY Invoicedate, Invoiceid
OFFSET 10 ROWS FETCH NEXT 20 ROWS ONLY;

