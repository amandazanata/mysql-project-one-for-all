SELECT
	nome_usuario AS pessoa_usuaria,
    IF(MAX(YEAR(data_reproducao)) > 2020, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
    usuario AS u
INNER JOIN reproducoes AS r ON r.usuario_id = u.usuario_id
GROUP BY
	u.nome_usuario
ORDER BY
	u.nome_usuario;