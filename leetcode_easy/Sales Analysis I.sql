-- https://leetcode.com/problems/sales-analysis-i/submissions/

/* Write your T-SQL query statement below */

WITH cte AS(SELECT seller_id, SUM(price) AS total
FROM sales
GROUP BY seller_id)

SELECT cte.seller_id
FROM cte
WHERE cte.total= (SELECT MAX(cte.total) FROM cte)


/* Write your T-SQL query statement below */

WITH cte AS
    (SELECT seller_id, SUM(price) as total, RANK() OVER (ORDER BY SUM(price) DESC) as num
FROM sales
GROUP BY seller_id)

SELECT cte.seller_id
FROM cte
WHERE cte.num=1;


