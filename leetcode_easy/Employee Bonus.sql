/* Write your T-SQL query statement below */
SELECT e.name AS name, b.bonus AS bonus
FROM employee e
    LEFT JOIN bonus b
        ON e.empId=b.empId
WHERE b.bonus<1000 or b.bonus IS NULL;