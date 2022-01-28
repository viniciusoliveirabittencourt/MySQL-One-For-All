SELECT 
    u.name AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM(s.duration_in_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.songs_played AS sp ON u.id_user = sp.id_user
        INNER JOIN
    SpotifyClone.songs AS s ON sp.id_songs = s.id_songs
GROUP BY u.name
ORDER BY u.name ASC;
