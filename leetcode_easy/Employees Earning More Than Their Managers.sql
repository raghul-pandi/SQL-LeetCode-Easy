/* Write your T-SQL query statement below */

SELECT e1.name AS Employee 
FROM Employee e1
    JOIN Employee e2
        ON e1.ManagerId=e2.Id
WHERE e1.salary>e2.salary;

OR

SELECT e1.name AS Employee 
FROM Employee e1
    ,Employee e2
WHERE e1.ManagerId=e2.Id
    AND e1.salary>e2.salary;
    
OR 

SELECT Name AS Employee 
FROM Employee e1
WHERE Salary > (
                SELECT Salary
                FROM Employee e2
                WHERE e2.Id = e1.ManagerId);

SELECT user_id, UPPER(SUBSTRING(name,1,1))+LOWER(SUBSTRING(name,2,LEN(name))) AS name
FROM users
ORDER BY user_id;
