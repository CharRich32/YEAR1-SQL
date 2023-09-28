USE MusicMansh;
GO

SELECT 
	CONCAT(FirstName, N' (city: ', city, N')') AS contactwithcity
FROM Customer;

SELECT 
	FirstName + N' (city: ' + city + N')' AS contactwithcity 
FROM Customer;


SELECT 
	CONCAT(FirstName, N' (city: ', city,  N', state: ', state, N')') AS fullcontact
FROM Customer;

SELECT 
	FirstName + N' (city: ' + city + N', state: ' + COALESCE(state, '') + N')' AS fullcontact
FROM Customer;


SELECT FirstName, LastName
FROM Customer
WHERE LastName LIKE N'[A-G]%'
ORDER BY LastName;