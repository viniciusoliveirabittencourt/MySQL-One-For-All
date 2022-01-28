SELECT
  COUNT(sp.id_songs) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.songs_played AS sp
  INNER JOIN SpotifyClone.users AS u ON u.id_user = sp.id_user
WHERE
  u.name = 'Bill';
