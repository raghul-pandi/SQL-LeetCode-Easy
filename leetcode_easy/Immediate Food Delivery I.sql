/* Write your T-SQL query statement below */

SELECT 
ROUND(CAST(SUM(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END) AS float)/(SELECT COUNT(1) FROM delivery)*100,2) AS immediate_percentage
FROM delivery
