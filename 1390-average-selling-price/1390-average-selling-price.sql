SELECT p.product_id AS product_id,
ROUND(SUM(p.price * ISNULL(u.units, 0)) * 1.00 / ISNULL(SUM(u.units), 1), 2) AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id

-- * 1.00 을 하는 것은 정수 나눗셈 방지용
-- ISNULL(SUM(u.units), 1) 하는 것은 0으로 나누어지면 안되기 때문에 NULL 일 시 1로 처리