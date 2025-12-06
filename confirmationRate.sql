SELECT sg.user_id,

    ROUND(AVG(CASE WHEN cf.action = 'confirmed' THEN 1 ELSE 0 END),2) as // this is how if else is implemented in sql //
    confirmation_rate
FROM
Signups as sg
LEFT JOIN
Confirmations as cf
ON
sg.user_id = cf.user_id
GROUP BY
sg.user_id
ORDER BY
confirmation_rate