-- https://leetcode.com/problems/products-worth-over-invoices/submissions/

/* Write your T-SQL query statement below */
SELECT p.name, f.rest, f.paid, f.canceled, f.refunded
FROM product p
    JOIN (SELECT product_id, SUM(rest) rest, SUM(paid) paid, SUM(canceled) canceled, SUM(refunded) refunded
          FROM invoice
          GROUP BY product_id) f
            ON p.product_id=f.product_id
ORDER BY p.name;
