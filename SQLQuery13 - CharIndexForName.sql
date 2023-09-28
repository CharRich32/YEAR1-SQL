USE MusicMansh;
GO

SELECT
	FirstName,
	SUBSTRING(FirstName, 0, CHARINDEX(N',', FirstName)) AS lastname
FROM Customer;


SELECT
	REPLACE(FirstName, ',', '') AS newcontactname,
	SUBSTRING(FirstName, CHARINDEX(N',', FirstName)+1, LEN(FirstName)-CHARINDEX(N',', FirstName)+1) AS firstname
FROM Customer;

SELECT 
	CustomerId,
	N'C' + RIGHT(REPLICATE('0', 5) + CAST(CustomerId AS VARCHAR(5)), 5) AS custnewid
FROM Customer;

SELECT
	CustomerId,
	FORMAT(CustomerId, N'\C00000') AS custnewid
FROM Customer;

SELECT
	FirstName,
	LEN(FirstName) - LEN(REPLACE(FirstName, 'a', '')) AS numberofa
FROM Customer
ORDER BY numberofa DESC;