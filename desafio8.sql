SELECT 
    a.name AS artista, ab.name AS album
FROM
    SpotifyClone.artists AS a
        INNER JOIN
    SpotifyClone.albums AS ab ON ab.id_artists = a.id_artists
WHERE
    a.name = 'Walter Phoenix'
ORDER BY album ASC;
