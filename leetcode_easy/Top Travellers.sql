/* Write your T-SQL query statement below */
SELECT u.name, CASE WHEN f.dist IS NULL THEN 0 ELSE f.dist END AS travelled_distance
FROM users u
    LEFT JOIN(SELECT user_id, SUM(distance) as dist
         FROM rides
         GROUP BY user_id) f
        ON u.id=f.user_id
ORDER BY travelled_distance DESC, u.name;

