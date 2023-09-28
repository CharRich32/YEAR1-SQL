USE MusicMansh;
GO

SELECT
	IIF(country = N'Mexico' AND FirstName = N'Owner', N'Target group', N'Other') AS segmentgroup, CustomerId, FirstName
FROM Customer;


SELECT
	IIF(FirstName = N'Owner' OR country IS NOT NULL, N'Target group', N'Other') AS segmentgroup,  CustomerId,  FirstName
FROM Customer;


SELECT CHOOSE(CustomerId % 4 + 1, N'Group One', N'Group Two', N'Group Three', N'Group Four') AS segmentgroup, CustomerId, FirstName
FROM Customer;