SELECT
  a.name AS artista,
  ab.name AS album,
  COUNT(f.id_artists) AS seguidores
FROM
  SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.albums AS ab ON ab.id_artists = a.id_artists
  INNER JOIN SpotifyClone.following AS f ON f.id_artists = a.id_artists
GROUP BY
  ab.id_albuns
ORDER BY
  seguidores DESC,
  artista ASC,
  album ASC; 
