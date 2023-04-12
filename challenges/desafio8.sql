SELECT
    a.nome_artista AS artista,
    al.nome_album AS album
FROM
    artista AS a
INNER JOIN album AS al ON a.artista_id = al.artista_id
WHERE a.nome_artista = 'Elis Regina'
ORDER BY album;