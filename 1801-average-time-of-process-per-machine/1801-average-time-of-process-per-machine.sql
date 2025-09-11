/* Write your T-SQL query statement below */
SELECT a1.machine_id, ROUND(AVG(a2.timestamp-a1.timestamp), 3) AS processing_time
FROM Activity a1 JOIN Activity a2 ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id

/*
    SELF JOIN을 통해 machine id로 JOIN
    a1은 start로, a2는 end로 타입을 묶는다.
    a2 테이블에서 a1 테이블의 timestamp의 차를 구한다.
    ROUND 함수를 통해 셋째 자리까지 구함
*/