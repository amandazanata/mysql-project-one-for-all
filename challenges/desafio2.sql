SELECT
    COUNT(DISTINCT c.cancao_id) AS cancoes,
    COUNT(DISTINCT a.artista_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM
    musicas AS c
    INNER JOIN artista AS a
    INNER JOIN album AS al;