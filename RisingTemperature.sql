SELECT today.id from Weather as today // nested query 
WHERE EXISTS

    (SELECT 1 from Weather as yesterday
        WHERE yesterday.temperature < today.temperature
        AND
        today.recordDate - yesterday.recordDate = 1) // only counting the adjacent values 