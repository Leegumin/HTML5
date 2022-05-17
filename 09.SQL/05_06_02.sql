-- 2022-05-06 SQL 튜닝
-- SQL 튜닝
-- SQL 실행되는 순서
-- 1번) FROM EMPLOYEE
-- 2번) WHERE ENO = 7788 ( 이곳에 조건을 거는게 속도가 빠름 )
-- 3번) GROUP BY DNO
-- 4번) HAVING절 ( 
-- 5번) SELECT DNO
-- 6번) ORDER BY ( 조회 속도 저하 )
SELECT
    *
FROM
    EMPLOYEE
WHERE
    ENO = 7788
GROUP BY
    DNO
ORDER BY
    DNO;
    
-- 의사 컬럼 : ROWNUM
SELECT ROWNUM
FROM EMPLOYEE;