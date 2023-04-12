SELECT
    ar.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(s.usuario_id) AS pessoas_seguidoras
FROM
    artista AS ar
INNER JOIN seguindo AS s ON s.artista_id = ar.artista_id
INNER JOIN album AS al ON al.artista_id = ar.artista_id
GROUP BY
    album, artista
ORDER BY
	pessoas_seguidoras DESC, artista, album;