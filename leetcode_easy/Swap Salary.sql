/* Write your T-SQL query statement below */
UPDATE salary
CASE WHEN SEX='m' THEN 'f' ELSE 'm' END AS sex
FROM salary;