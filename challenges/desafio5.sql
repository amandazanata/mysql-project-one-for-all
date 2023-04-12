SELECT
    m.nome_cancao AS cancao,
    COUNT(r.usuario_id) AS reproducoes
FROM
    musicas AS m
INNER JOIN
    reproducoes AS r ON r.cancao_id = m.cancao_id
GROUP BY m.nome_cancao
ORDER BY reproducoes DESC, m.nome_cancao
LIMIT 2;