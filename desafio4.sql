SELECT
	u.name AS usuario,
    IF (YEAR(MAX(sp.date_played)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
	SpotifyClone.users AS u
		INNER JOIN
	SpotifyClone.songs_played AS sp ON u.id_user = sp.id_user
GROUP BY u.name
ORDER BY u.name ASC;
