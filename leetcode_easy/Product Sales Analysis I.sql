-- https://leetcode.com/problems/product-sales-analysis-i/

/* Write your T-SQL query statement below */
SELECT p.product_name, s.year, s.price
FROM sales s
    JOIN product p
        ON s.product_id=p.product_id
