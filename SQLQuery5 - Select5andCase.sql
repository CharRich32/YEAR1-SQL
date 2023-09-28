USE MusicMansh;
GO

SELECT t.trackid , t.name
FROM Track AS t;

SELECT t.trackid, t.name,
		CASE 
			WHEN t.trackid = 1 THEN 'Winter'
			WHEN t.trackid = 2 THEN 'Summer'
			WHEN t.trackid = 3 THEN 'Jan'
			WHEN t.trackid = 4 THEN 'April'
			WHEN t.trackid = 5 THEN 'May'
			WHEN t.trackid = 6 THEN 'Rio'
			WHEN t.trackid = 7 THEN 'June'
			WHEN t.trackid = 8 THEN 'July'
			ELSE 'Other'
		END AS trackname
FROM Track AS t;

SELECT t.trackid, t.name,
		CASE 
			WHEN t.trackid = 1 THEN 'Winter'
			WHEN t.trackid = 2 THEN 'Summer'
			WHEN t.trackid = 3 THEN 'Jan'
			WHEN t.trackid = 4 THEN 'April'
			WHEN t.trackid = 5 THEN 'May'
			WHEN t.trackid = 6 THEN 'Rio'
			WHEN t.trackid = 7 THEN 'June'
			WHEN t.trackid = 8 THEN 'July'
			ELSE 'Other'
		END AS trackname,
		CASE	
			WHEN t.trackid IN (1,2,3,4,5,6,7,8) THEN 'New Tracks'
			ELSE 'Other Tracks' 
		END AS isnewtrack
FROM Track AS t;