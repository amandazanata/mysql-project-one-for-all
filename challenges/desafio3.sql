SELECT
	u.nome_usuario AS pessoa_usuaria,
    COUNT(r.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos)/60,2) AS total_minutos
FROM
	usuario AS u
    INNER JOIN reproducoes AS r ON u.usuario_id = r.usuario_id
    INNER JOIN musicas AS m ON r.cancao_id = m.cancao_id
GROUP BY
	u.nome_usuario
ORDER BY
	u.nome_usuario ASC;