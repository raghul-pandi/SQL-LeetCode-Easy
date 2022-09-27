/* Write your T-SQL query statement below */

SELECT event_day AS day, emp_id, SUM(out_time-in_time) AS total_time
FROM employees
GROUP BY emp_id, event_day;