USE MusicMansh
GO

UPDATE Customer
SET CustomerId='1001'

OUTPUT	INSERTED.FirstName	AS	'New Name'
,		DELETED.FirstName		AS	'Old Name'
,		INSERTED.LastName	AS	'New Title'
,		DELETED.LastName	AS	'Old Title'
,		INSERTED.city			AS	'New City'
,		DELETED.city			AS	'Old City'


WHERE city='Berlin'
AND CustomerId='1001';
select * from Customer where city = 'berlin'

