
SELECT MAX(salary) AS SecondHighestSalary    
FROM employee
WHERE Salary < ( SELECT MAX(Salary)
                 FROM employee);

OR

WITH cte(SecondHighestSalary, ranking) AS
(
    SELECT salary, RANK() OVER (ORDER BY salary DESC)
    FROM employee
)

SELECT ISNULL(SecondHighestSalary, NULL) AS SecondHighestSalary
FROM cte
WHERE ranking=2;
