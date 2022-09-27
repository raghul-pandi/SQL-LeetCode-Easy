-- https://leetcode.com/problems/patients-with-a-condition/submissions/

/* Write your T-SQL query statement below */
SELECT *
FROM patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%';