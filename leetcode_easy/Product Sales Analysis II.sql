--https://leetcode.com/problems/product-sales-analysis-ii/

/* Write your T-SQL query statement below */
SELECT product_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_id;