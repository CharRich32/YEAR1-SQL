USE MusicMansh;
GO

SELECT Track.TrackId, Track.Name, Album.AlbumId, Album.Title, Artist.Name
FROM Album INNER JOIN
           Artist ON Album.ArtistId = Artist.ArtistId INNER JOIN
		   Track ON Album.AlbumId = Track.AlbumId
