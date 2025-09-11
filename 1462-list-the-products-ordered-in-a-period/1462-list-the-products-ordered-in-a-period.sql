/* Write your T-SQL query statement below */
SELECT p.product_name AS product_name, SUM(o.unit) AS unit
FROM Products p JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_date LIKE '2020-02%'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100

/*
    product_id로 JOIN
    WHERE절에서 2020년 2월 주문 필터링
    product_name으로 그룹핑
    HAVING절에서 unit의 합이 100개 이상인 것 필터링
*/