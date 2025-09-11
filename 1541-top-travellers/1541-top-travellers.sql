/* Write your T-SQL query statement below */
SELECT u.name, SUM(CASE WHEN distance IS NULL THEN 0 ELSE distance END) AS travelled_distance
FROM Users u LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY travelled_distance DESC, u.name ASC