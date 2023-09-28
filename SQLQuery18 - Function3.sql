USE MusicMansh;
GO

SELECT FirstName, COALESCE(fax, N'No information') AS faxinformation
FROM Customer;

SELECT FirstName, ISNULL(fax, N'No information') AS faxinformation
FROM Customer;


DECLARE @country AS NVARCHAR(30) = NULL; 

SELECT 
	CustomerId, country
FROM Customer
WHERE country = @country OR (country IS NULL AND @country IS NULL);

GO

DECLARE @country AS NVARCHAR(30) = N'WA'; 

SELECT 
	CustomerId, country
FROM Customer
WHERE country = @country OR (country IS NULL AND @country IS NULL);

SELECT CustomerId, FirstName, city, country
FROM Customer 
WHERE 
	country IS NULL 
	OR LEN(country) <> 2;
