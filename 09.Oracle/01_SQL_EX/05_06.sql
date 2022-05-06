-- 2022-05-06
-- 서브쿼리 ****
-- SELECT 안에 또다른 SELECT가 포함된 형태
-- 문법) SELECT 컬럼리스트
--       FROM  테이블명
--       WHERE 컬럼명 = (SELECT 문)
-- 예) SCOTT와 동일한 부서에서 근무하는 사원 출력하기
-- 서브쿼리 : 데이터 1건만 비교해야함
SELECT
    ENAME,
    DNO
FROM
    EMPLOYEE
WHERE
    DNO = (
        SELECT
            DNO
        FROM
            EMPLOYEE
        WHERE
            ENAME = 'SCOTT'
    );
    
-- 문제 1) 최소 급여를 받는 사원의 이름, 담당업무, 급여 출력하기
SELECT
    ENAME,
    JOB,
    SALARY
FROM
    EMPLOYEE
WHERE
    SALARY = (
        SELECT
            MIN(SALARY)
        FROM
            EMPLOYEE
    );