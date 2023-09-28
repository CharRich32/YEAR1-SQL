USE MusicMansh;
GO

SELECT DISTINCT
	customerid, Invoicedate
FROM Invoice 
WHERE 
	YEAR(Invoicedate) = 2008 
	AND MONTH(Invoicedate) = 6;


SELECT DISTINCT
	customerid
FROM Invoice 
WHERE 
	Invoicedate >= '20190402'
	AND Invoicedate < '';



SELECT
	CURRENT_TIMESTAMP AS currentdate, 
	DATEADD (day, 1, EOMONTH(CURRENT_TIMESTAMP, -1)) AS firstofmonth,
	EOMONTH(CURRENT_TIMESTAMP) AS endofmonth;

SELECT 
	Invoiceid, customerid, Invoicedate
FROM Invoice
WHERE 
	DATEDIFF(
		day,
		Invoicedate,
		EOMONTH(Invoicedate)  
	) < 5;

