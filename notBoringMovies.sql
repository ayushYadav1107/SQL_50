SELECT *
FROM
Cinema as C
WHERE
C.description != "boring"
AND
C.id % 2 != 0
ORDER BY
rating DESC