/* Write your T-SQL query statement below */
SELECT u.name, f.balance
FROM users u
    JOIN (
            SELECT account, SUM(amount) balance
            FROM transactions
            GROUP BY account
            HAVING SUM(amount)>10000) f
                ON u.account=f.account