/* Write your T-SQL query statement below */
SELECT employee_id, COUNT(team_id) OVER (partition by team_id) AS team_size
FROM Employee