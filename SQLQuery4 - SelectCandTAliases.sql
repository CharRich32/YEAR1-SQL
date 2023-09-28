USE MusicMansh;
GO

SELECT C.FirstName, C.LastName 
FROM Customer AS C;

SELECT C.FirstName AS Name, C.LastName AS Title, C.Company AS [Company Name]
FROM Customer AS C;

SELECT P.Phone AS [Phone Name]
FROM Customer AS P;

SELECT	City, Country
FROM Customer;