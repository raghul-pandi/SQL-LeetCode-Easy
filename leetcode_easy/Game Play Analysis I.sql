-- https://leetcode.com/problems/game-play-analysis-i/submissions/

/* Write your T-SQL query statement below */

WITH cte(player_id, first_login, ranking)
AS
    (SELECT player_id, event_date , RANK() OVER (PARTITION BY player_id ORDER BY event_date)
     FROM activity)

SELECT cte.player_id, cte.first_login
FROM cte
WHERE cte.ranking=1;