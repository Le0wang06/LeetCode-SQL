SELECT 
    ROUND(COUNT(DISTINCT A.player_id) / COUNT(DISTINCT B.player_id), 2) AS fraction
FROM 
    (SELECT player_id, MIN(event_date) AS first_day
     FROM Activity
     GROUP BY player_id) AS B
LEFT JOIN Activity AS A 
    ON A.player_id = B.player_id 
    AND A.event_date = DATE_ADD(B.first_day, INTERVAL 1 DAY);
