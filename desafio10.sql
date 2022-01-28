SELECT 
    s.name AS nome, COUNT(sp.id_songs) AS reproducoes
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.songs_played AS sp ON sp.id_songs = s.id_songs
        INNER JOIN
    SpotifyClone.users AS u ON u.id_user = sp.id_user
        INNER JOIN
    SpotifyClone.plans AS p ON p.id_plans = u.id_plans
WHERE
    p.id_plans = 1 OR p.id_plans = 4
GROUP BY nome
ORDER BY nome ASC;
