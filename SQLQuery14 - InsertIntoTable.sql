USE MusicMansh;
GO

INSERT INTO Customer
(
CustomerId,
FirstName,
Lastname,
Company,
Address,
city,
country,
phone,
email
)

VALUES
(
'1000',
'Laurence',
'Chance',
'EA',
'12345 Redcar Road',
'London',
'England',
'079124567',
'123456@gmail.com');

Select *
From Customer
where lastname = 'Chance'