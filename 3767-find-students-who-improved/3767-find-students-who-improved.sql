/*
    FIRST_VALUE()를 사용하여 첫 번째 값을 RETURN하는 함수 사용
    PARTITION BY student_id와 subject를 통해 학생 id, 과목명으로 partition 하고 exam_date를 기준으로 정렬 수행하여
    첫 번째 값을 반환 (각각 최초와 제일 나중의 날짜에 해당하는 점수 반환)
*/

WITH CTE_TEMP AS (
    SELECT DISTINCT student_id, subject,
    FIRST_VALUE(score) OVER (PARTITION BY student_id, subject ORDER BY exam_date ASC) AS first_score,
    FIRST_VALUE(score) OVER (PARTITION BY student_id, subject ORDER BY exam_date DESC) AS latest_score
    FROM Scores
)

SELECT student_id, subject, first_score, latest_score
FROM CTE_TEMP
WHERE first_score < latest_score
ORDER BY student_id, subject