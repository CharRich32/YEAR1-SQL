USE MusicMansh;
GO

SELECT
	customerid, Company, FirstName, address, city, country, phone
FROM Customer
WHERE 
	country = N'Brazil';


SELECT
	customerid, BillingAddress, BillingCity, BillingCountry, BillingState, BillingPostalCode
FROM Invoice
WHERE 
	BillingCountry IN (N'Brazil', N'UK', N'USA');



SELECT
	customerid, BillingAddress, BillingCity, BillingCountry, BillingState, BillingPostalCode
FROM Invoice
WHERE 
	CustomerId LIKE N'A%';


SELECT
	c.customerid, c.FirstName, o.InvoiceId
FROM Customer AS c
LEFT OUTER JOIN Invoice AS o ON c.customerid = o.customerid AND c.city = N'Paris';

SELECT
	c.customerid, c.Company, o.InvoiceId
FROM Customer AS c
LEFT OUTER JOIN Invoice AS o ON c.customerid = o.customerid 
WHERE 
	c.City = N'Paris';


SELECT
	c.customerid, c.company
FROM Customer AS c
LEFT OUTER JOIN Invoice AS o ON c.customerid = o.customerid 
WHERE o.customerid IS NULL;