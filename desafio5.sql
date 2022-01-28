SELECT
  s.name AS cancao,
  COUNT(sp.id_songs) AS reproducoes
FROM
  SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.songs_played AS sp ON s.id_songs = sp.id_songs
GROUP BY
  s.name
ORDER BY
  reproducoes DESC,
  cancao ASC
LIMIT
  2;
