/* Write your T-SQL query statement below */

SELECT TOP 1 f.customer_number
FROM(
    SELECT customer_number, COUNT(1) AS cnt
    FROM orders
    GROUP BY customer_number) f
ORDER BY cnt DESC;

OR

/* Write your T-SQL query statement below */

WITH cte
AS
(
    SELECT customer_number, COUNT(1) AS total
    FROM Orders
    GROUP BY customer_number
)

SELECT customer_number
FROM cte
WHERE total=(SELECT 
             MAX(total)
             FROM cte);
