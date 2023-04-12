SELECT
    COUNT(r.usuario_id) AS musicas_no_historico
FROM
    reproducoes AS r
INNER JOIN
    usuario AS u ON r.usuario_id = u.usuario_id
WHERE
    u.usuario_id = 1;