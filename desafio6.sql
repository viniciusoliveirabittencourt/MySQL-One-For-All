SELECT
  FORMAT (MIN(p.price), 2) AS faturamento_minimo,
  FORMAT (MAX(p.price), 2) AS faturamento_maximo,
  FORMAT (AVG(p.price), 2) AS faturamento_medio,
  FORMAT (SUM(p.price), 2) AS faturamento_total
FROM
  SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plans AS p ON u.id_plans = p.id_plans;
